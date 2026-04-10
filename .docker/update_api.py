#!/usr/bin/env python3
import os
import sys
import json
import shutil
import zipfile
import requests
import argparse
from pathlib import Path
from datetime import datetime

class UpdateAPI:
    '''Updates the API module version for all or a specified platform.'''
    def __init__(self, tag=None, platform=None, force=False):
        self.tag = tag
        self.platform = platform
        self.force = force

        # Get the absolute path of the project root directory
        self.project_root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
        self.config_file = os.path.join(self.project_root, ".docker/build_config.json")

        # Load the build_config.json
        with open(self.config_file, "r") as f:
            self.config = json.load(f)
        
        # Use tag from build_config.json if tag is not specified
        if not self.tag:
            self.tag = self.config["api"]["release_tag"]

        # Get the platforms config
        self.platforms_config = self.config["api"]["platforms"]

        # Get the GitHub repository URL
        self.github_repo = self.config["api"]["github_repository"].replace("https://github.com/", "https://api.github.com/repos/")

        # Check if should use the latest release
        self.use_latest_release = self.config["api"].get("use_latest_release", False)

    def get_platform_destination_folder(self, platform):
        '''Returns the destination folder for the specified platform.'''
        if platform in self.platforms_config:
            return os.path.join(self.project_root, self.platforms_config[platform]["path"])
        else:
            raise ValueError(f"Invalid platform: {platform}. Please select a valid platform from the following list: {', '.join(self.platforms_config.keys())}")

    def get_release_assets(self):
        '''Fetches the assets of the specified or latest release from the GitHub repository.'''
        if self.use_latest_release:
            api_url = f"{self.github_repo}/releases/latest"
        else:
            api_url = f"{self.github_repo}/releases/tags/{self.tag}"
        
        response = requests.get(api_url)
        response.raise_for_status()
        release = response.json()

        return release["assets"]

    def get_zip_file_url(self, platform):
        '''Returns the URL of the zip file for the requested version / platform.'''
        assets = self.get_release_assets()
        search_parameters = self.platforms_config[platform]
        keywords = search_parameters["keywords"]
        for asset in assets:
            file_name = asset["name"]
            if all(keyword in file_name for keyword in keywords):
                return asset["browser_download_url"]
        raise ValueError(f"Could not find release zip file for tag '{self.tag}' on '{platform}' platform!")

    def download_api_file(self, platform):
        '''Downloads the API version zip file for a specific platform.'''
        # Get the URL of the zip file
        zip_file_url = self.get_zip_file_url(platform)

        # Download the zip file
        print(f"Downloading '{self.tag}' API module for [{platform}]...")
        response = requests.get(zip_file_url, stream=True)
        response.raise_for_status()

        destination_folder = self.get_platform_destination_folder(platform)
        zip_file_name = os.path.basename(zip_file_url)
        destination_path = os.path.join(destination_folder, zip_file_name)

        # Ensure the destination directory exists
        os.makedirs(destination_folder, exist_ok=True)

        # Save the zip file to the specified folder
        with open(destination_path, "wb") as file:
            response.raw.decode_content = True
            shutil.copyfileobj(response.raw, file)

        print(f"Saved to '{destination_path}'")
        return destination_path

    def update_api(self):
        '''Updates the API module.'''
        tag = self.config["api"]["release_tag"]
        platforms = self.config["api"]["platforms"]

        # If a platform is specified, only update that platform
        if self.platform:   
            platforms = {self.platform: platforms[self.platform]}

        for platform in platforms:
            # Set the api module destination folder
            destination_folder = self.get_platform_destination_folder(platform)

            # Check if .api_last_updated file exists
            last_api_update_file = os.path.join(destination_folder, ".api_last_updated")

            is_outdated = True

            if not self.force and os.path.exists(last_api_update_file):
                with open(last_api_update_file, "r") as f:
                    last_api_update = json.load(f)
                    if last_api_update.get("tag") == tag:
                        print(f"{platform} API module is up to date ({tag}).")
                        is_outdated = False

            if is_outdated:
                # Download the API file for the platform
                zip_file_path = self.download_api_file(platform)

                # Unzip the downloaded file
                print(f"Extracting...")
                with zipfile.ZipFile(zip_file_path, 'r') as zip_ref:
                    zip_ref.extractall(destination_folder)

                # Make mm2 file executable for Linux
                if platform == 'linux':
                    print("Make mm2 file executable for Linux")
                    os.chmod(os.path.join(destination_folder, "mm2"), 0o755)

                # Delete the zip file after extraction
                os.remove(zip_file_path)

                # Update .api_last_updated file
                with open(last_api_update_file, "w") as f:
                    current_timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
                    json.dump({"tag": tag, "timestamp": current_timestamp}, f)
    
    def update_build_config_tag(self):
        '''Updates the API tag in build_config.json.'''
        self.config["api"]["release_tag"] = self.tag

        with open(self.config_file, "w") as f:
            json.dump(self.config, f, indent=4)

        print(f"Tag in build_config.json updated to {self.tag}.")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Download API module file for specified tag and platform.")
    # Optional arguments
    parser.add_argument("-a", "--api", help="tag of the API module to download.", default=None)
    parser.add_argument("-p", "--platform", help="platform for which the API module should be downloaded.", default=None)
    parser.add_argument("--force", action="store_true", help="force update, ignoring .api_last_updated.", default=False)
    args = parser.parse_args()

    try:
        updateAPI = UpdateAPI(args.api, args.platform, args.force)
        # Update the API tag in build_config.json if the API tag is specified
        if args.api:
            updateAPI.update_build_config_tag()
        updateAPI.update_api()

    except Exception as e:
        print(f"Error: {e}")
