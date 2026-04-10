import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'l10n/messages_all.dart';

class AppLocalizations {
  static Future<AppLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return AppLocalizations();
    });
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  // --- Branding ---
  String mobileDataWarning(String appName) => Intl.message(
      'Please note that now you\'re using cellular data and participation in '
      '$appName P2P network consume internet traffic. It\'s better to use a '
      'WiFi network if your cellular data plan is costly.',
      name: 'mobileDataWarning',
      args: [appName]);

  String get withdrawCameraAccessTitle =>
      Intl.message('Access Denied', name: 'withdrawCameraAccessTitle');
  String withdrawCameraAccessText(String appName) => Intl.message(
      'You have previously denied $appName access to the camera.'
      '\nPlease manually change camera permission in your phone'
      ' settings to proceed with the QR code scan.',
      name: 'withdrawCameraAccessText',
      args: [appName]);

  String get welcomeTitle => Intl.message('WELCOME', name: 'welcomeTitle');

  String get welcomeWallet => Intl.message('wallet', name: 'welcomeWallet');
  String welcomeInfo(String appName) => Intl.message(
      '$appName mobile is a next generation multi-coin wallet with native third generation DEX functionality and more.',
      name: 'welcomeInfo',
      args: [appName]);
  String get welcomeLetSetUp =>
      Intl.message('LET\'S GET SET UP!', name: 'welcomeLetSetUp');

  // --- Branding - EULA ---

  String eulaTitle1(String appName) =>
      Intl.message('End-User License Agreement (EULA) of $appName mobile',
          name: 'eulaTitle1', args: [appName]);
  String get eulaTitle2 =>
      Intl.message('TERMS and CONDITIONS: (APPLICATION USER AGREEMENT)',
          name: 'eulaTitle2');
  String get eulaTitle3 =>
      Intl.message('TERMS AND CONDITIONS OF USE AND DISCLAIMER\n\n',
          name: 'eulaTitle3');
  String get eulaTitle4 => Intl.message('GENERAL USE\n\n', name: 'eulaTitle4');
  String get eulaTitle5 =>
      Intl.message('MODIFICATIONS\n\n', name: 'eulaTitle5');
  String get eulaTitle6 =>
      Intl.message('LIMITATIONS ON USE\n\n', name: 'eulaTitle6');
  String get eulaTitle7 =>
      Intl.message('ACCOUNTS AND MEMBERSHIP\n\n', name: 'eulaTitle7');
  String get eulaTitle8 => Intl.message('BACKUPS\n\n', name: 'eulaTitle8');
  String get eulaTitle9 =>
      Intl.message('GENERAL WARNING\n\n', name: 'eulaTitle9');
  String get eulaTitle10 =>
      Intl.message('ACCESS AND SECURITY\n\n', name: 'eulaTitle10');
  String get eulaTitle11 =>
      Intl.message('INTELLECTUAL PROPERTY RIGHTS\n\n', name: 'eulaTitle11');
  String get eulaTitle12 => Intl.message('DISCLAIMER\n\n', name: 'eulaTitle12');
  String get eulaTitle13 => Intl.message(
      'REPRESENTATIONS AND WARRANTIES, INDEMNIFICATION, AND LIMITATION OF LIABILITY\n\n',
      name: 'eulaTitle13');
  String get eulaTitle14 =>
      Intl.message('GENERAL RISK FACTORS\n\n', name: 'eulaTitle14');
  String get eulaTitle15 =>
      Intl.message('INDEMNIFICATION\n\n', name: 'eulaTitle15');
  String get eulaTitle16 =>
      Intl.message('RISK DISCLOSURES RELATING TO THE WALLET\n\n',
          name: 'eulaTitle16');
  String get eulaTitle17 =>
      Intl.message('NO INVESTMENT ADVICE OR BROKERAGE\n\n',
          name: 'eulaTitle17');
  String get eulaTitle18 =>
      Intl.message('TERMINATION\n\n', name: 'eulaTitle18');
  String get eulaTitle19 =>
      Intl.message('THIRD PARTY RIGHTS\n\n', name: 'eulaTitle19');
  String get eulaTitle20 =>
      Intl.message('OUR LEGAL OBLIGATIONS\n\n', name: 'eulaTitle20');

  String eulaParagraphe1(String appName, String appCompanyLong) => Intl.message(
      'This End-User License Agreement (\'EULA\') is a legal agreement between you and $appCompanyLong.\n\nThis EULA agreement governs your acquisition and use of our $appName mobile software (\'Software\', \'Mobile Application\', \'Application\' or \'App\') directly from $appCompanyLong or indirectly through a $appCompanyLong authorized entity, reseller or distributor (a \'Distributor\').\nPlease read this EULA agreement carefully before completing the installation process and using the $appName mobile software. It provides a license to use the $appName mobile software and contains warranty information and liability disclaimers.\nIf you register for the beta program of the $appName mobile software, this EULA agreement will also govern that trial. By clicking \'accept\' or installing and/or using the $appName mobile software, you are confirming your acceptance of the Software and agreeing to become bound by the terms of this EULA agreement.\nIf you are entering into this EULA agreement on behalf of a company or other legal entity, you represent that you have the authority to bind such entity and its affiliates to these terms and conditions. If you do not have such authority or if you do not agree with the terms and conditions of this EULA agreement, do not install or use the Software, and you must not accept this EULA agreement.\nThis EULA agreement shall apply only to the Software supplied by $appCompanyLong herewith regardless of whether other software is referred to or described herein. The terms also apply to any $appCompanyLong updates, supplements, Internet-based services, and support services for the Software, unless other terms accompany those items on delivery. If so, those terms apply.\n\nLICENSE GRANT\n\n$appCompanyLong hereby grants you a personal, non-transferable, non-exclusive license to use the $appName mobile software on your devices in accordance with the terms of this EULA agreement.\n\nYou are permitted to load the $appName mobile software (for example a PC, laptop, mobile or tablet) under your control. You are responsible for ensuring your device meets the minimum security and resource requirements of the $appName mobile software.\n\nYou are not permitted to:\n(a) edit, alter, modify, adapt, translate or otherwise change the whole or any part of the Software nor permit the whole or any part of the Software to be combined with or become incorporated in any other software, nor decompile, disassemble or reverse engineer the Software or attempt to do any such things;\n(b) reproduce, copy, distribute, resell or otherwise use the Software for any commercial purpose;\n(c) use the Software in any way which breaches any applicable local, national or international law;\n(d) use the Software for any purpose that $appCompanyLong considers is a breach of this EULA agreement.\n\nINTELLECTUAL PROPERTY AND OWNERSHIP\n\n$appCompanyLong shall at all times retain ownership of the Software as originally downloaded by you and all subsequent downloads of the Software by you. The Software (and the copyright, and other intellectual property rights of whatever nature in the Software, including any modifications made thereto) are and shall remain the property of $appCompanyLong.\n\n$appCompanyLong reserves the right to grant licenses to use the Software to third parties.\n\nTERMINATION\n\nThis EULA agreement is effective from the date you first use the Software and shall continue until terminated. You may terminate it at any time upon written notice to $appCompanyLong.\nIt will also terminate immediately if you fail to comply with any term of this EULA agreement. Upon such termination, the licenses granted by this EULA agreement will immediately terminate and you agree to stop all access and use of the Software. The provisions that by their nature continue and survive will survive any termination of this EULA agreement.\n\nGOVERNING LAW\n\nThis EULA agreement, and any dispute arising out of or in connection with this EULA agreement, shall be governed by and construed in accordance with the laws of Vietnam.\n\nThis document was last updated on January 31st, 2020\n\n',
      name: 'eulaParagraphe1',
      args: [appName, appCompanyLong]);
  String eulaParagraphe2(String appName, String appCompanyLong) => Intl.message(
      'This disclaimer applies to the contents and services of the app $appName and is valid for all users of the “Application” (\'Software\', “Mobile Application”, “Application” or “App”).\n\nThe Application is owned by $appCompanyLong.\n\nWe reserve the right to amend the following Terms and Conditions (governing the use of the application “$appName mobile”) at any time without prior notice and at our sole discretion. It is your responsibility to periodically check this Terms and Conditions for any updates to these Terms, which shall come into force once published.\nYour continued use of the application shall be deemed as acceptance of the following Terms. \nWe are a company incorporated in Vietnam and these Terms and Conditions are governed by and subject to the laws of Vietnam. \nIf You do not agree with these Terms and Conditions, You must not use or access this software.\n\n',
      name: 'eulaParagraphe2',
      args: [appName, appCompanyLong]);
  String get eulaParagraphe3 => Intl.message(
      'By entering into this User (each subject accessing or using the site) Agreement (this writing) You declare that You are an individual over the age of majority (at least 18 or older) and have the capacity to enter into this User Agreement and accept to be legally bound by the terms and conditions of this User Agreement, as incorporated herein and amended from time to time. \n\n',
      name: 'eulaParagraphe3');
  String get eulaParagraphe4 => Intl.message(
      'We may change the terms of this User Agreement at any time. Any such changes will take effect when published in the application, or when You use the Services.\n\nRead the User Agreement carefully every time You use our Services. Your continued use of the Services shall signify your acceptance to be bound by the current User Agreement. Our failure or delay in enforcing or partially enforcing any provision of this User Agreement shall not be construed as a waiver of any.\n\n',
      name: 'eulaParagraphe4');
  String eulaParagraphe5(String appName) => Intl.message(
      'You are not allowed to decompile, decode, disassemble, rent, lease, loan, sell, sublicense, or create derivative works from the $appName mobile application or the user content. Nor are You allowed to use any network monitoring or detection software to determine the software architecture, or extract information about usage or individuals’ or users’ identities. \nYou are not allowed to copy, modify, reproduce, republish, distribute, display, or transmit for commercial, non-profit or public purposes all or any portion of the application or the user content without our prior written authorization.\n\n',
      name: 'eulaParagraphe5',
      args: [appName]);
  String eulaParagraphe6(String appName, String appCompanyLong) => Intl.message(
      'If you create an account in the Mobile Application, you are responsible for maintaining the security of your account and you are fully responsible for all activities that occur under the account and any other actions taken in connection with it. We will not be liable for any acts or omissions by you, including any damages of any kind incurred as a result of such acts or omissions. \n\n$appName mobile is a non-custodial wallet implementation and thus $appCompanyLong can not access nor restore your account in case of (data) loss.\n\n',
      name: 'eulaParagraphe6',
      args: [appName, appCompanyLong]);
  String get eulaParagraphe7 => Intl.message(
      'We are not responsible for seed-phrases residing in the Mobile Application. In no event shall we be held liable for any loss of any kind. It is your sole responsibility to maintain appropriate backups of your accounts and their seedprases.\n\n',
      name: 'eulaParagraphe7');
  String get eulaParagraphe8 => Intl.message(
      'You should not act, or refrain from acting solely on the basis of the content of this application. \nYour access to this application does not itself create an adviser-client relationship between You and us. \nThe content of this application does not constitute a solicitation or inducement to invest in any financial products or services offered by us. \nAny advice included in this application has been prepared without taking into account your objectives, financial situation or needs. You should consider our Risk Disclosure Notice before making any decision on whether to acquire the product described in that document.\n\n',
      name: 'eulaParagraphe8');
  String get eulaParagraphe9 => Intl.message(
      'We do not guarantee your continuous access to the application or that your access or use will be error-free. \nWe will not be liable in the event that the application is unavailable to You for any reason (for example, due to computer downtime ascribable to malfunctions, upgrades, server problems, precautionary or corrective maintenance activities or interruption in telecommunication supplies). \n\n',
      name: 'eulaParagraphe9');
  String eulaParagraphe10(String appCompanyLong) => Intl.message(
      '$appCompanyLong is the owner and/or authorised user of all trademarks, service marks, design marks, patents, copyrights, database rights and all other intellectual property appearing on or contained within the application, unless otherwise indicated. All information, text, material, graphics, software and advertisements on the application interface are copyright of $appCompanyLong, its suppliers and licensors, unless otherwise expressly indicated by $appCompanyLong. \nExcept as provided in the Terms, use of the application does not grant You any right, title, interest or license to any such intellectual property You may have access to on the application. \nWe own the rights, or have permission to use, the trademarks listed in our application. You are not authorised to use any of those trademarks without our written authorization – doing so would constitute a breach of our or another party’s intellectual property rights. \nAlternatively, we might authorise You to use the content in our application if You previously contact us and we agree in writing.\n\n',
      name: 'eulaParagraphe10',
      args: [appCompanyLong]);
  String eulaParagraphe11(String appCompanyShort, String appCompanyLong) =>
      Intl.message(
          '$appCompanyLong cannot guarantee the safety or security of your computer systems. We do not accept liability for any loss or corruption of electronically stored data or any damage to any computer system occurred in connection with the use of the application or of the user content.\n$appCompanyLong makes no representation or warranty of any kind, express or implied, as to the operation of the application or the user content. You expressly agree that your use of the application is entirely at your sole risk.\nYou agree that the content provided in the application and the user content do not constitute financial product, legal or taxation advice, and You agree on not representing the user content or the application as such.\nTo the extent permitted by current legislation, the application is provided on an “as is, as available” basis.\n\n$appCompanyLong expressly disclaims all responsibility for any loss, injury, claim, liability, or damage, or any indirect, incidental, special or consequential damages or loss of profits whatsoever resulting from, arising out of or in any way related to: \n(a) any errors in or omissions of the application and/or the user content, including but not limited to technical inaccuracies and typographical errors; \n(b) any third party website, application or content directly or indirectly accessed through links in the application, including but not limited to any errors or omissions; \n(c) the unavailability of the application or any portion of it; \n(d) your use of the application;\n(e) your use of any equipment or software in connection with the application. \n\nAny Services offered in connection with the Platform are provided on an \'as is\' basis, without any representation or warranty, whether express, implied or statutory. To the maximum extent permitted by applicable law, we specifically disclaim any implied warranties of title, merchantability, suitability for a particular purpose and/or non-infringement. We do not make any representations or warranties that use of the Platform will be continuous, uninterrupted, timely, or error-free.\nWe make no warranty that any Platform will be free from viruses, malware, or other related harmful material and that your ability to access any Platform will be uninterrupted. Any defects or malfunction in the product should be directed to the third party offering the Platform, not to $appCompanyShort. \nWe will not be responsible or liable to You for any loss of any kind, from action taken, or taken in reliance on the material or information contained in or through the Platform.\nThis is experimental and unfinished software. Use at your own risk. No warranty for any kind of damage. By using this application you agree to this terms and conditions.\n\n',
          name: 'eulaParagraphe11',
          args: [appCompanyShort, appCompanyLong]);
  String get eulaParagraphe12 => Intl.message(
      'When accessing or using the Services, You agree that You are solely responsible for your conduct while accessing and using our Services. Without limiting the generality of the foregoing, You agree that You will not:\n(a) use the Services in any manner that could interfere with, disrupt, negatively affect or inhibit other users from fully enjoying the Services, or that could damage, disable, overburden or impair the functioning of our Services in any manner;\n(b) use the Services to pay for, support or otherwise engage in any illegal activities, including, but not limited to illegal gambling, fraud, money laundering, or terrorist activities;\n(c) use any robot, spider, crawler, scraper or other automated means or interface not provided by us to access our Services or to extract data;\n(d) use or attempt to use another user’s Wallet or credentials without authorization;\n(e) attempt to circumvent any content filtering techniques we employ, or attempt to access any service or area of our Services that You are not authorized to access;\n(f) introduce to the Services any virus, Trojan, worms, logic bombs or other harmful material;\n(g) develop any third-party applications that interact with our Services without our prior written consent;\n(h) provide false, inaccurate, or misleading information; \n(i) encourage or induce any other person to engage in any of the activities prohibited under this Section.\n\n',
      name: 'eulaParagraphe12');
  String eulaParagraphe13(String appCompanyLong) => Intl.message(
      'You agree and understand that there are risks associated with utilizing Services involving Virtual Currencies including, but not limited to, the risk of failure of hardware, software and internet connections, the risk of malicious software introduction, and the risk that third parties may obtain unauthorized access to information stored within your Wallet, including but not limited to your public and private keys. You agree and understand that $appCompanyLong will not be responsible for any communication failures, disruptions, errors, distortions or delays You may experience when using the Services, however caused.\nYou accept and acknowledge that there are risks associated with utilizing any virtual currency network, including, but not limited to, the risk of unknown vulnerabilities in or unanticipated changes to the network protocol. You acknowledge and accept that $appCompanyLong has no control over any cryptocurrency network and will not be responsible for any harm occurring as a result of such risks, including, but not limited to, the inability to reverse a transaction, and any losses in connection therewith due to erroneous or fraudulent actions.\nThe risk of loss in using Services involving Virtual Currencies may be substantial and losses may occur over a short period of time. In addition, price and liquidity are subject to significant fluctuations that may be unpredictable.\nVirtual Currencies are not legal tender and are not backed by any sovereign government. In addition, the legislative and regulatory landscape around Virtual Currencies is constantly changing and may affect your ability to use, transfer, or exchange Virtual Currencies.\nCFDs are complex instruments and come with a high risk of losing money rapidly due to leverage. 80.6% of retail investor accounts lose money when trading CFDs with this provider. You should consider whether You understand how CFDs work and whether You can afford to take the high risk of losing your money.\n\n',
      name: 'eulaParagraphe13',
      args: [appCompanyLong]);
  String eulaParagraphe14(String appCompanyLong) => Intl.message(
      'You agree to indemnify, defend and hold harmless $appCompanyLong, its officers, directors, employees, agents, licensors, suppliers and any third party information providers to the application from and against all losses, expenses, damages and costs, including reasonable lawyer fees, resulting from any violation of the Terms by You.\nYou also agree to indemnify $appCompanyLong against any claims that information or material which You have submitted to $appCompanyLong is in violation of any law or in breach of any third party rights (including, but not limited to, claims in respect of defamation, invasion of privacy, breach of confidence, infringement of copyright or infringement of any other intellectual property right).\n\n',
      name: 'eulaParagraphe14',
      args: [appCompanyLong]);
  String eulaParagraphe15(String appCompanyLong) => Intl.message(
      'In order to be completed, any Virtual Currency transaction created with the $appCompanyLong must be confirmed and recorded in the Virtual Currency ledger associated with the relevant Virtual Currency network. Such networks are decentralized, peer-to-peer networks supported by independent third parties, which are not owned, controlled or operated by $appCompanyLong.\n$appCompanyLong has no control over any Virtual Currency network and therefore cannot and does not ensure that any transaction details You submit via our Services will be confirmed on the relevant Virtual Currency network. You agree and understand that the transaction details You submit via our Services may not be completed, or may be substantially delayed, by the Virtual Currency network used to process the transaction. We do not guarantee that the Wallet can transfer title or right in any Virtual Currency or make any warranties whatsoever with regard to title.\nOnce transaction details have been submitted to a Virtual Currency network, we cannot assist You to cancel or otherwise modify your transaction or transaction details. $appCompanyLong has no control over any Virtual Currency network and does not have the ability to facilitate any cancellation or modification requests.\nIn the event of a Fork, $appCompanyLong may not be able to support activity related to your Virtual Currency. You agree and understand that, in the event of a Fork, the transactions may not be completed, completed partially, incorrectly completed, or substantially delayed. $appCompanyLong is not responsible for any loss incurred by You caused in whole or in part, directly or indirectly, by a Fork.\nIn no event shall $appCompanyLong, its affiliates and service providers, or any of their respective officers, directors, agents, employees or representatives, be liable for any lost profits or any special, incidental, indirect, intangible, or consequential damages, whether based on contract, tort, negligence, strict liability, or otherwise, arising out of or in connection with authorized or unauthorized use of the services, or this agreement, even if an authorized representative of $appCompanyLong has been advised of, has known of, or should have known of the possibility of such damages. \nFor example (and without limiting the scope of the preceding sentence), You may not recover for lost profits, lost business opportunities, or other types of special, incidental, indirect, intangible, or consequential damages. Some jurisdictions do not allow the exclusion or limitation of incidental or consequential damages, so the above limitation may not apply to You. \nWe will not be responsible or liable to You for any loss and take no responsibility for damages or claims arising in whole or in part, directly or indirectly from: \n(a) user error such as forgotten passwords, incorrectly constructed transactions, or mistyped Virtual Currency addresses; \n(b) server failure or data loss; \n(c) corrupted or otherwise non-performing Wallets or Wallet files; \n(d) unauthorized access to applications; \n(e) any unauthorized activities, including without limitation the use of hacking, viruses, phishing, brute forcing or other means of attack against the Services.\n\n',
      name: 'eulaParagraphe15',
      args: [appCompanyLong]);
  String eulaParagraphe16(String appCompanyShort, String appCompanyLong) =>
      Intl.message(
          'For the avoidance of doubt, $appCompanyLong does not provide investment, tax or legal advice, nor does $appCompanyLong broker trades on your behalf. All $appCompanyLong trades are executed automatically, based on the parameters of your order instructions and in accordance with posted Trade execution procedures, and You are solely responsible for determining whether any investment, investment strategy or related transaction is appropriate for You based on your personal investment objectives, financial circumstances and risk tolerance. You should consult your legal or tax professional regarding your specific situation. Neither $appCompanyShort nor its owners, members, officers, directors, partners, consultants, nor anyone involved in the publication of this application, is a registered investment adviser or broker-dealer or associated person with a registered investment adviser or broker-dealer and none of the foregoing make any recommendation that the purchase or sale of crypto-assets or securities of any company profiled in the mobile Application is suitable or advisable for any person or that an investment or transaction in such crypto-assets or securities will be profitable. The information contained in the mobile Application is not intended to be, and shall not constitute, an offer to sell or the solicitation of any offer to buy any crypto-asset or security. The information presented in the mobile Application is provided for informational purposes only and is not to be treated as advice or a recommendation to make any specific investment or transaction. Please, consult with a qualified professional before making any decisions. The opinions and analysis included in this applications are based on information from sources deemed to be reliable and are provided “as is” in good faith. $appCompanyShort makes no representation or warranty, expressed, implied, or statutory, as to the accuracy or completeness of such information, which may be subject to change without notice. $appCompanyShort shall not be liable for any errors or any actions taken in relation to the above. Statements of opinion and belief are those of the authors and/or editors who contribute to this application, and are based solely upon the information possessed by such authors and/or editors. No inference should be drawn that $appCompanyShort or such authors or editors have any special or greater knowledge about the crypto-assets or companies profiled or any particular expertise in the industries or markets in which the profiled crypto-assets and companies operate and compete. Information on this application is obtained from sources deemed to be reliable; however, $appCompanyShort takes no responsibility for verifying the accuracy of such information and makes no representation that such information is accurate or complete. Certain statements included in this application may be forward-looking statements based on current expectations. $appCompanyShort makes no representation and provides no assurance or guarantee that such forward-looking statements will prove to be accurate. Persons using the $appCompanyShort application are urged to consult with a qualified professional with respect to an investment or transaction in any crypto-asset or company profiled herein. Additionally, persons using this application expressly represent that the content in this application is not and will not be a consideration in such persons’ investment or transaction decisions. Traders should verify independently information provided in the $appCompanyShort application by completing their own due diligence on any crypto-asset or company in which they are contemplating an investment or transaction of any kind and review a complete information package on that crypto-asset or company, which should include, but not be limited to, related blog updates and press releases. Past performance of profiled crypto-assets and securities is not indicative of future results. Crypto-assets and companies profiled on this site may lack an active trading market and invest in a crypto-asset or security that lacks an active trading market or trade on certain media, platforms and markets are deemed highly speculative and carry a high degree of risk. Anyone holding such crypto-assets and securities should be financially able and prepared to bear the risk of loss and the actual loss of his or her entire trade. The information in this application is not designed to be used as a basis for an investment decision. Persons using the $appCompanyShort application should confirm to their own satisfaction the veracity of any information prior to entering into any investment or making any transaction. The decision to buy or sell any crypto-asset or security that may be featured by $appCompanyShort is done purely and entirely at the reader’s own risk. As a reader and user of this application, You agree that under no circumstances will You seek to hold liable owners, members, officers, directors, partners, consultants or other persons involved in the publication of this application for any losses incurred by the use of information contained in this application $appCompanyShort and its contractors and affiliates may profit in the event the crypto-assets and securities increase or decrease in value. Such crypto-assets and securities may be bought or sold from time to time, even after $appCompanyShort has distributed positive information regarding the crypto-assets and companies. $appCompanyShort has no obligation to inform readers of its trading activities or the trading activities of any of its owners, members, officers, directors, contractors and affiliates and/or any companies affiliated with BC Relations’ owners, members, officers, directors, contractors and affiliates. $appCompanyShort and its affiliates may from time to time enter into agreements to purchase crypto-assets or securities to provide a method to reach their goals.\n\n',
          name: 'eulaParagraphe16',
          args: [appCompanyShort, appCompanyLong]);
  String eulaParagraphe17(String appCompanyLong) => Intl.message(
      'The Terms are effective until terminated by $appCompanyLong. \nIn the event of termination, You are no longer authorized to access the Application, but all restrictions imposed on You and the disclaimers and limitations of liability set out in the Terms will survive termination. \nSuch termination shall not affect any legal right that may have accrued to $appCompanyLong against You up to the date of termination. \n$appCompanyLong may also remove the Application as a whole or any sections or features of the Application at any time. \n\n',
      name: 'eulaParagraphe17',
      args: [appCompanyLong]);
  String eulaParagraphe18(String appCompanyLong) => Intl.message(
      'The provisions of previous paragraphs are for the benefit of $appCompanyLong and its officers, directors, employees, agents, licensors, suppliers, and any third party information providers to the Application. Each of these individuals or entities shall have the right to assert and enforce those provisions directly against You on its own behalf.\n\n',
      name: 'eulaParagraphe18',
      args: [appCompanyLong]);
  String eulaParagraphe19(String appName, String appCompanyLong) => Intl.message(
      '$appName mobile is a non-custodial, decentralized and blockchain based application and as such does $appCompanyLong never store any user-data (accounts and authentication data). \nWe also collect and process non-personal, anonymized data for statistical purposes and analysis and to help us provide a better service.\n\nThis document was last updated on January 31st, 2020\n\n',
      name: 'eulaParagraphe19',
      args: [appName, appCompanyLong]);

  // --- Branding - Updates ---

  String updatesTitle(String appName) =>
      Intl.message('$appName update', name: 'updatesTitle', args: [appName]);
  String updatesCurrentVersion(String version) =>
      Intl.message('You are using version $version',
          args: <Object>[version], name: 'updatesCurrentVersion');
  String get updatesChecking =>
      Intl.message('Checking for updates...', name: 'updatesChecking');
  String get updatesUpToDate =>
      Intl.message('Already up to date', name: 'updatesUpToDate');
  String get updatesAvailable =>
      Intl.message('New version available', name: 'updatesAvailable');
  String get updatesUpdate => Intl.message('Update', name: 'updatesUpdate');
  String get updatesSkip => Intl.message('Skip for now', name: 'updatesSkip');
  String get updatesNotifTitle =>
      Intl.message('Update available', name: 'updatesNotifTitle');
  String get updatesNotifAvailable =>
      Intl.message('New version available. Please update.',
          name: 'updatesNotifAvailable');
  String updatesNotifAvailableVersion(String version) =>
      Intl.message('Version $version available. Please update.',
          args: <Object>[version], name: 'updatesNotifAvailableVersion');

  // --- Branding - Help & FAQ ---

  String get helpLink => Intl.message('Help', name: 'helpLink');
  String get helpTitle => Intl.message('Help and Support', name: 'helpTitle');
  String get faqTitle =>
      Intl.message('Frequently Asked Questions', name: 'faqTitle');
  String get support => Intl.message('Support', name: 'support');
  String supportLinksDesc(String appName) => Intl.message(
      'If you have any questions,'
      ' or think you\'ve found a technical problem with'
      ' the $appName app, you can report it and get support'
      ' from our team.',
      name: 'supportLinksDesc',
      args: [appName]);

  String get question_1 =>
      Intl.message('Do you store my private keys?', name: 'question_1');
  String answer_1(String appName) => Intl.message(
      'No! $appName is non-custodial. We never store any sensitive data,'
      ' including your private keys, seed phrases, or PIN. This data is only'
      ' stored on the user’s device and never leaves it.'
      ' You are in full control of your assets.',
      name: 'answer_1',
      args: [appName]);
  String question_2(String appName) => Intl.message(
      'How is trading on $appName different from trading on other DEXs?',
      name: 'question_2',
      args: [appName]);
  String answer_2(String appName) => Intl.message(
      'Other DEXs generally only allow you to trade assets that are based'
      ' on a single blockchain network, use proxy tokens, and'
      ' only allow placing a single order with the same funds.'
      '\n\n$appName enables you to natively trade across two different'
      ' blockchain networks without proxy tokens. You can also place multiple'
      ' orders with the same funds. For example, you can sell 0.1 BTC for'
      ' KMD, QTUM, or VRSC — the first order that fills automatically'
      ' cancels all other orders.',
      name: 'answer_2',
      args: [appName]);
  String get question_3 =>
      Intl.message('How long does each atomic swap take?', name: 'question_3');
  String answer_3(String appName) => Intl.message(
      'Several factors determine the processing time for each swap.'
      ' The block time of the traded assets depends on each network'
      ' (Bitcoin typically being the slowest) Additionally, the user can'
      ' customize security preferences. For example, you can ask $appName'
      ' to consider a KMD transaction as final after just 3 confirmations'
      ' which makes the swap time shorter compared to waiting'
      ' for a notarization.',
      name: 'answer_3',
      args: [appName]);
  String get question_4 =>
      Intl.message('Do I need to be online for the duration of the swap?',
          name: 'question_4');
  String get answer_4 => Intl.message(
      'Yes. You must remain connected to the internet and have your app'
      ' running to successfully complete each atomic swap (very short breaks'
      ' in connectivity are usually fine). Otherwise, there is risk of trade'
      ' cancellation if you are a maker, and risk of loss of funds if you are'
      ' a taker. The atomic swap protocol requires both participants to stay'
      ' online and monitor the involved blockchains for'
      ' the process to stay atomic.',
      name: 'answer_4');
  String question_5(String appName) =>
      Intl.message('How are the fees on $appName calculated?',
          name: 'question_5', args: [appName]);
  String answer_5(String appName) => Intl.message(
      'There are two fee categories to consider when trading on $appName.\n\n'
      '1. $appName charges approximately 0.13% (1/777 of trading volume but'
      ' not lower than 0.0001) as the trading fee for taker orders, and maker'
      ' orders have zero fees.\n\n2. Both makers and takers will need to pay'
      ' normal network fees to the involved blockchains when making atomic'
      ' swap transactions.\n\nNetwork fees can vary greatly depending on'
      ' your selected trading pair.',
      name: 'answer_5',
      args: [appName]);
  String get question_6 =>
      Intl.message('Do you provide user support?', name: 'question_6');
  String answer_6(
          String name, String link, String appName, String appCompanyShort) =>
      Intl.message(
          'Yes! $appName offers support through the'
          ' <a href="$link">'
          '$appCompanyShort $name'
          '</a>. The team and the community are always happy to help!',
          name: 'answer_6',
          args: <Object>[name, link, appName, appCompanyShort]);
  // TODO: update contents when KYC framework is public
  // String get question_7 =>
  //     Intl.message('Do you have country restrictions?', name: 'question_7');
  // String answer_7(String appName) => Intl.message();
  String question_8(String appName) => Intl.message('Who is behind $appName?',
      name: 'question_8', args: [appName]);
  String answer_8(String appName, String appCompanyShort) => Intl.message(
      '$appName is developed by the $appCompanyShort team. $appCompanyShort is one of'
      ' the most established blockchain projects working on innovative'
      ' solutions like atomic swaps, Delayed Proof of Work, and an'
      ' interoperable multi-chain architecture.',
      name: 'answer_8',
      args: [appName, appCompanyShort]);
  String question_9(String appName) => Intl.message(
      'Is it possible to develop my own white-label'
      ' exchange on $appName?',
      name: 'question_9',
      args: [appName]);
  String answer_9(String appName) => Intl.message(
      'Absolutely! You can read our'
      ' developer documentation for more'
      ' details or contact us with your partnership inquiries. Have a specific'
      ' technical question? The $appName developer community'
      ' is always ready to help!',
      name: 'answer_9',
      args: [appName]);
  String question_10(String appName) =>
      Intl.message('Which devices can I use $appName on?',
          name: 'question_10', args: [appName]);
  String answer_10(String appName) => Intl.message(
      '$appName is available for mobile on both Android and iPhone,'
      ' and for desktop on <a href="https://gleec.com/">'
      'Windows, Mac, and Linux operating systems</a>.',
      name: 'answer_10',
      args: [appName]);

  // --- Branding - Feed section ---

  String get feedTab => Intl.message('Feed', name: 'feedTab');
  String get feedTitle => Intl.message('News Feed', name: 'feedTitle');
  String get feedReadMore => Intl.message('Read more...', name: 'feedReadMore');
  String get feedNotFound => Intl.message('Nothing here', name: 'feedNotFound');
  String get feedUpdated =>
      Intl.message('News feed updated', name: 'feedUpdated');
  String get snackbarDismiss =>
      Intl.message('Dismiss', name: 'snackbarDismiss');
  String get feedNewsTab => Intl.message('News', name: 'feedNewsTab');
  String get duration => Intl.message('Duration', name: 'duration');
  String get feedUnableToUpdate =>
      Intl.message('Unable to get news update', name: 'feedUnableToUpdate');
  String get feedUnableToProceed =>
      Intl.message('Unable to proceed news update',
          name: 'feedUnableToProceed');
  String get feedUpToDate =>
      Intl.message('Already up to date', name: 'feedUpToDate');
  String get date => Intl.message('Date', name: 'date');
  String feedNotifTitle(String appCompanyShort) =>
      Intl.message('$appCompanyShort news',
          name: 'feedNotifTitle', args: [appCompanyShort]);

  // ---

  String get createPin => Intl.message('Create PIN', name: 'createPin');
  String get enterPinCode =>
      Intl.message('Enter your PIN code', name: 'enterPinCode');
  String get login => Intl.message('login', name: 'login');
  String get newAccount => Intl.message('new account', name: 'newAccount');
  String get newAccountUpper =>
      Intl.message('New Account', name: 'newAccountUpper');
  String addingCoinSuccess(String name) => Intl.message(
        'Activated $name successfully !',
        name: 'addingCoinSuccess',
        args: <Object>[name],
      );
  String get connecting => Intl.message('Connecting...', name: 'connecting');
  String get addCoin => Intl.message('Add Coin', name: 'addCoin');
  String numberAssets(String assets) => Intl.message('$assets Assets',
      args: <Object>[assets], name: 'numberAssets');
  String get enterSeedPhrase =>
      Intl.message('Enter Your Seed Phrase', name: 'enterSeedPhrase');
  String get exampleHintSeed =>
      Intl.message('Example: build case level ...', name: 'exampleHintSeed');
  String get confirm => Intl.message('Confirm', name: 'confirm');
  String get buyTestCoinWarning => Intl.message(
      'Warning, you\'re willing to buy test coins WITHOUT real value!',
      name: 'buyTestCoinWarning');
  String batteryCriticalError(String batteryLevelCritical) => Intl.message(
      'Your battery charge is critical ($batteryLevelCritical%) '
      'to perform a swap safely. Please put it on charge and try again.',
      name: 'batteryCriticalError',
      args: [batteryLevelCritical]);
  String batteryLowWarning(String batteryLevelLow) => Intl.message(
      'Your battery charge is lower than $batteryLevelLow%. '
      'Please consider phone charging.',
      name: 'batteryLowWarning',
      args: [batteryLevelLow]);
  String get batterySavingWarning => Intl.message(
      'Your phone is in battery saving mode. Please disable this mode or do '
      'NOT put the application to the background, otherwise, the app might '
      'be killed by OS and swap failed.',
      name: 'batterySavingWarning');
  String get sellTestCoinWarning => Intl.message(
        'Warning, you\'re willing to sell test coins WITHOUT real value!',
        name: 'sellTestCoinWarning',
      );
  String get buy => Intl.message('Buy', name: 'buy');
  String get sell => Intl.message('Sell', name: 'sell');
  String shareAddress(String coinName, String address) =>
      Intl.message('My $coinName address: \n$address',
          args: <Object>[coinName, address], name: 'shareAddress');
  String get withdraw => Intl.message('Withdraw', name: 'withdraw');
  String get errorValueEmpty =>
      Intl.message('Value is too high or low', name: 'errorValueEmpty');
  String get amount => Intl.message('Amount', name: 'amount');
  String get addressSend =>
      Intl.message('Recipients address', name: 'addressSend');
  String withdrawValue(String amount, String coinName) =>
      Intl.message('WITHDRAW $amount $coinName',
          args: <Object>[amount, coinName], name: 'withdrawValue');
  String get withdrawConfirm =>
      Intl.message('Confirm Withdrawal', name: 'withdrawConfirm');
  String get withdrawConfirmError =>
      Intl.message('Something went wrong. Try again later.',
          name: 'withdrawConfirmError');
  String get close => Intl.message('Close', name: 'close');
  String get confirmSeed =>
      Intl.message('Confirm Seed Phrase', name: 'confirmSeed');
  String get seedPhraseTitle =>
      Intl.message('Your new Seed Phrase', name: 'seedPhraseTitle');
  String get getBackupPhrase =>
      Intl.message('Important: Back up your seed phrase before proceeding!',
          name: 'getBackupPhrase');
  String get recommendSeedMessage =>
      Intl.message('We recommend storing it offline.',
          name: 'recommendSeedMessage');
  String get next => Intl.message('next', name: 'next');
  String get confirmPin => Intl.message('Confirm PIN code', name: 'confirmPin');
  String get camouflageSetup =>
      Intl.message('Camouflage PIN Setup', name: 'camouflageSetup');
  String get confirmCamouflageSetup =>
      Intl.message('Confirm Camouflage PIN', name: 'confirmCamouflageSetup');
  String get errorTryAgain =>
      Intl.message('Error, please try again', name: 'errorTryAgain');
  String get settings => Intl.message('Settings', name: 'settings');
  String get security => Intl.message('Security', name: 'security');
  String get activateAccessPin =>
      Intl.message('Activate PIN protection', name: 'activateAccessPin');
  String get disableScreenshots =>
      Intl.message('Disable Screenshots/Preview', name: 'disableScreenshots');
  String get lockScreen => Intl.message('Screen is locked', name: 'lockScreen');
  String get changePin => Intl.message('Change PIN code', name: 'changePin');
  String get logout => Intl.message('Log Out', name: 'logout');
  String get max => Intl.message('MAX', name: 'max');
  String get min => Intl.message('MIN', name: 'min');
  String get totalFees => Intl.message('Total Fees:', name: 'totalFees');
  String get paidFromBalance =>
      Intl.message('Paid from balance:', name: 'paidFromBalance');
  String get tradingMode => Intl.message('Trading Mode:', name: 'tradingMode');
  String get skip => Intl.message('Skip', name: 'skip');
  String get merge => Intl.message('Merge', name: 'merge');
  String get overwrite => Intl.message('Overwrite', name: 'overwrite');
  String get currentValue =>
      Intl.message('Current value:', name: 'currentValue');
  String get newValue => Intl.message('New value:', name: 'newValue');
  String get mergedValue => Intl.message('Merged value:', name: 'mergedValue');
  String get saveMerged => Intl.message('Save merged', name: 'saveMerged');

  String get alreadyExists =>
      Intl.message('Already exists', name: 'alreadyExists');
  String get simple => Intl.message('Simple', name: 'simple');
  String get advanced => Intl.message('Advanced', name: 'advanced');
  String get paidFromVolume =>
      Intl.message('Paid from received volume:', name: 'paidFromVolume');
  String get amountToSell =>
      Intl.message('Amount To Sell', name: 'amountToSell');
  String get youWillReceived =>
      Intl.message('You will receive: ', name: 'youWillReceived');
  String get selectCoinToSell =>
      Intl.message('Select the coin you want to SELL',
          name: 'selectCoinToSell');
  String get selectCoinToBuy =>
      Intl.message('Select the coin you want to BUY', name: 'selectCoinToBuy');
  String get swap => Intl.message('swap', name: 'swap');
  String get buySuccessWaiting => Intl.message(
        'Swap issued, please wait!',
        name: 'buySuccessWaiting',
      );
  String buySuccessWaitingError(String seconde) => Intl.message(
        'Ordermatch ongoing, please wait $seconde seconds!',
        name: 'buySuccessWaitingError',
        args: <Object>[seconde],
      );
  String get networkFee => Intl.message('Network fee', name: 'networkFee');
  String get commissionFee =>
      Intl.message('commission fee', name: 'commissionFee');
  String get portfolio => Intl.message('Portfolio', name: 'portfolio');
  String get checkOut => Intl.message('Check Out', name: 'checkOut');
  String get estimateValue =>
      Intl.message('Estimated Total Value', name: 'estimateValue');
  String get selectPaymentMethod =>
      Intl.message('Select Your Payment Method', name: 'selectPaymentMethod');
  String get volumes => Intl.message('Volumes', name: 'volumes');
  String get placeOrder => Intl.message('Place your order', name: 'placeOrder');
  String get comingSoon => Intl.message('Coming soon...', name: 'comingSoon');
  String get marketplace => Intl.message('Marketplace', name: 'marketplace');
  String get youAreSending =>
      Intl.message('You are sending:', name: 'youAreSending');
  String get code => Intl.message('Code: ', name: 'code');
  String get value => Intl.message('Value: ', name: 'value');
  String get paidWith => Intl.message('Paid with ', name: 'paidWith');
  String get errorValueNotEmpty =>
      Intl.message('Please input data', name: 'errorValueNotEmpty');
  String get errorAmountBalance =>
      Intl.message('Not enough balance', name: 'errorAmountBalance');
  String gweiError(int value) => Intl.message(
        'Gwei must be up to $value',
        name: 'gweiError',
        args: <Object>[value],
      );
  String feesError(double value) => Intl.message(
        'Fees must be up to $value',
        name: 'feesError',
        args: <Object>[value],
      );
  String limitError(int value) => Intl.message(
        'Limit must be up to $value',
        name: 'limitError',
        args: <Object>[value],
      );
  String get errorNotAValidAddress =>
      Intl.message('Not a valid address', name: 'errorNotAValidAddress');
  String get errorNotAValidAddressSegWit =>
      Intl.message('Segwit addresses are not supported (yet)',
          name: 'errorNotAValidAddressSegWit');
  String get toAddress => Intl.message('To address:', name: 'toAddress');
  String get receive => Intl.message('RECEIVE', name: 'receive');
  String get send => Intl.message('SEND', name: 'send');
  String get pubkey => Intl.message('Pubkey', name: 'pubkey');
  String get back => Intl.message('back', name: 'back');
  String get cancel => Intl.message('Cancel', name: 'cancel');
  String get details => Intl.message('details', name: 'details');
  String get yes => Intl.message('Yes', name: 'yes');
  String get no => Intl.message('No', name: 'no');
  String get noteOnOrder =>
      Intl.message('Note: Matched order cannot be cancelled again',
          name: 'noteOnOrder');
  String get dontAskAgain =>
      Intl.message('Don’t ask again', name: 'dontAskAgain');
  String get cancelOrder => Intl.message('Cancel Order', name: 'cancelOrder');
  String get confirmCancel =>
      Intl.message('Are you sure you want to cancel the order',
          name: 'confirmCancel');
  String get unspendable => Intl.message('unspendable', name: 'unspendable');
  String get commingsoon =>
      Intl.message('TX details coming soon!', name: 'commingsoon');
  String get history => Intl.message('history', name: 'history');
  String get create => Intl.message('trade', name: 'create');
  String get commingsoonGeneral =>
      Intl.message('Details coming soon!', name: 'commingsoonGeneral');
  String get orderMatching =>
      Intl.message('Order matching', name: 'orderMatching');
  String get orderMatched =>
      Intl.message('Order matched', name: 'orderMatched');
  String get swapOngoing => Intl.message('Swap ongoing', name: 'swapOngoing');
  String get swapSucceful =>
      Intl.message('Swap successful', name: 'swapSucceful');
  String get timeOut => Intl.message('Timeout', name: 'timeOut');
  String get convert => Intl.message('Convert', name: 'convert');
  String get swapFailed => Intl.message('Swap failed', name: 'swapFailed');
  String get errorTryLater =>
      Intl.message('Error, please try later', name: 'errorTryLater');
  String get latestTxs =>
      Intl.message('Latest Transactions', name: 'latestTxs');
  String get gettingTxWait =>
      Intl.message('Getting transaction, please wait', name: 'gettingTxWait');
  String get finishingUp =>
      Intl.message('Finishing up, please wait', name: 'finishingUp');
  String get feedback => Intl.message('Share Log File', name: 'feedback');
  String get loadingOrderbook =>
      Intl.message('Loading orderbook...', name: 'loadingOrderbook');
  String get claim => Intl.message('claim', name: 'claim');
  String get claimTitle =>
      Intl.message('Claim your KMD reward?', name: 'claimTitle');
  String get success => Intl.message('Success!', name: 'success');
  String get noRewardYet =>
      Intl.message('No reward claimable - please try again in 1h.',
          name: 'noRewardYet');
  String get loading => Intl.message('Loading...', name: 'loading');
  String txleft(String left) => Intl.message(
        'Transactions Left: $left',
        name: 'txleft',
        args: [left],
      );
  String insufficientBalanceToPay(String abbr) => Intl.message(
        '$abbr balance not sufficient to pay trading fee',
        name: 'insufficientBalanceToPay',
        args: [abbr],
      );
  String get dex => Intl.message('DEX', name: 'dex');
  String get media => Intl.message('News', name: 'media');
  String get newsFeed => Intl.message('News feed', name: 'newsFeed');

  String get clipboard =>
      Intl.message('Copied to the clipboard', name: 'clipboard');
  String get from => Intl.message('From', name: 'from');
  String get to => Intl.message('To', name: 'to');
  String get txConfirmed => Intl.message('CONFIRMED', name: 'txConfirmed');
  String get txNotConfirmed =>
      Intl.message('UNCONFIRMED', name: 'txNotConfirmed');
  String get txBlock => Intl.message('Block', name: 'txBlock');
  String get txConfirmations =>
      Intl.message('Confirmations', name: 'txConfirmations');
  String get txFee => Intl.message('Fee', name: 'txFee');
  String get txHash => Intl.message('Transaction ID', name: 'txHash');
  String get memo => Intl.message('Memo', name: 'memo');
  String get noSwaps => Intl.message('No history.', name: 'noSwaps');
  String get trade => Intl.message('TRADE', name: 'trade');
  String get reset => Intl.message('CLEAR', name: 'reset');
  String get resetTitle => Intl.message('Reset form', name: 'resetTitle');
  String get tradeCompleted =>
      Intl.message('SWAP COMPLETED!', name: 'tradeCompleted');
  String get step => Intl.message('Step', name: 'step');
  String get tradeDetail => Intl.message('TRADE DETAILS', name: 'tradeDetail');
  String get requestedTrade =>
      Intl.message('Requested Trade', name: 'requestedTrade');
  String get swapUUID => Intl.message('Swap UUID', name: 'swapUUID');
  String get mediaBrowse => Intl.message('BROWSE', name: 'mediaBrowse');
  String get mediaSaved => Intl.message('SAVED', name: 'mediaSaved');
  String enable(int selected, int remains) => Intl.message(
        'You can still enable $remains, Selected: $selected',
        name: 'enable',
        args: [selected, remains],
      );
  String get mediaNotSavedDescription =>
      Intl.message('YOU HAVE NO SAVED ARTICLES',
          name: 'mediaNotSavedDescription');
  String get mediaBrowseFeed =>
      Intl.message('BROWSE FEED', name: 'mediaBrowseFeed');
  String get mediaBy => Intl.message('By', name: 'mediaBy');
  String get lockScreenAuth =>
      Intl.message('Please authenticate!', name: 'lockScreenAuth');
  String get noTxs => Intl.message('No Transactions', name: 'noTxs');
  String get done => Intl.message('Done', name: 'done');
  String get selectCoinTitle =>
      Intl.message('Activate coins:', name: 'selectCoinTitle');
  String get selectCoinInfo =>
      Intl.message('Select the coins you want to add to your portfolio.',
          name: 'selectCoinInfo');
  String get noArticles =>
      Intl.message('No news - please check back later!', name: 'noArticles');
  String get infoTrade1 =>
      Intl.message('The swap request can not be undone and is a final event!',
          name: 'infoTrade1');
  String get infoTrade2 => Intl.message(
      'The swap can take up to 60 minutes. DONT close this application!',
      name: 'infoTrade2');
  String get swapDetailTitle =>
      Intl.message('CONFIRM EXCHANGE DETAILS', name: 'swapDetailTitle');
  String get minVolumeTitle =>
      Intl.message('Min volume required', name: 'minVolumeTitle');
  String get minVolumeToggle =>
      Intl.message('Use custom min volume', name: 'minVolumeToggle');
  String get nonNumericInput =>
      Intl.message('The value must be numeric', name: 'nonNumericInput');
  String get minVolumeIsTDH =>
      Intl.message('Must be lower than sell amount', name: 'minVolumeIsTDH');
  String minVolumeInput(double minValue, String coin) =>
      Intl.message('Must be greater than $minValue $coin',
          name: 'minVolumeInput', args: <Object>[minValue, coin]);
  String get checkSeedPhrase =>
      Intl.message('Check seed phrase', name: 'checkSeedPhrase');
  String get checkSeedPhraseTitle =>
      Intl.message('LET\'S DOUBLE CHECK YOUR SEED PHRASE',
          name: 'checkSeedPhraseTitle');
  String get checkSeedPhraseInfo => Intl.message(
      'Your seed phrase is important - that\'s why we like to make sure it\'s correct. We\'ll ask you three different questions about your seed phrase to make sure you\'ll be able to easily restore your wallet whenever you want.',
      name: 'checkSeedPhraseInfo');
  String checkSeedPhraseSubtile(String index) => Intl.message(
        'What is the $index word in your seed phrase?',
        name: 'checkSeedPhraseSubtile',
        args: <Object>[index],
      );
  String checkSeedPhraseHint(String index) => Intl.message(
        'Enter the $index word',
        name: 'checkSeedPhraseHint',
        args: <Object>[index],
      );
  String get checkSeedPhraseButton1 =>
      Intl.message('CONTINUE', name: 'checkSeedPhraseButton1');
  String get checkSeedPhraseButton2 =>
      Intl.message('GO BACK AND CHECK AGAIN', name: 'checkSeedPhraseButton2');
  String get viewInExplorerButton =>
      Intl.message('Explorer', name: 'viewInExplorerButton');
  String get activateAccessBiometric => Intl.message(
        'Activate Biometric protection',
        name: 'activateAccessBiometric',
      );
  String get allowCustomSeed =>
      Intl.message('Allow custom seed', name: 'allowCustomSeed');
  String get warning => Intl.message('Warning!', name: 'warning');
  String get iUnderstand => Intl.message('I understand', name: 'iUnderstand');
  String customSeedWarning(String iUnderstand) => Intl.message(
      'Custom seed phrases might be'
      ' less secure and easier to crack than a generated BIP39 compliant seed'
      ' phrase or private key (WIF). To confirm you understand the risk and know'
      ' what you are doing, type'
      ' "$iUnderstand" in the box below.',
      name: 'customSeedWarning',
      args: [iUnderstand]);
  String get hintEnterPassword =>
      Intl.message('Enter your password', name: 'hintEnterPassword');
  String get yourWallet => Intl.message('your wallet', name: 'yourWallet');
  String get signInWithSeedPhrase =>
      Intl.message('Forgot the password? Restore wallet from seed',
          name: 'signInWithSeedPhrase');
  String get signInWithPassword =>
      Intl.message('Sign in with password', name: 'signInWithPassword');
  String get hintEnterSeedPhrase =>
      Intl.message('Enter your seed phrase', name: 'hintEnterSeedPhrase');
  String get wrongPassword =>
      Intl.message('The passwords do not match. Please try again.',
          name: 'wrongPassword');
  String get hintNameYourWallet =>
      Intl.message('Name your wallet', name: 'hintNameYourWallet');
  String get infoWalletPassword => Intl.message(
      'You have to provide a password for the wallet encryption due to security reasons.',
      name: 'infoWalletPassword');
  String get confirmPassword =>
      Intl.message('Confirm password', name: 'confirmPassword');
  String get dontWantPassword =>
      Intl.message('I don\'t want a password', name: 'dontWantPassword');
  String get areYouSure => Intl.message('ARE YOU SURE?', name: 'areYouSure');
  String get infoPasswordDialog => Intl.message(
      'Use a secure password and do not store it on the same device',
      name: 'infoPasswordDialog');
  String get setUpPassword =>
      Intl.message('SET UP A PASSWORD', name: 'setUpPassword');
  String get createAWallet =>
      Intl.message('CREATE A WALLET', name: 'createAWallet');
  String get restoreWallet => Intl.message('RESTORE', name: 'restoreWallet');
  String get hintPassword => Intl.message('Password', name: 'hintPassword');
  String get passwordRequirement => Intl.message(
      'Password must contain at least 12 characters, with one lower-case, one upper-case and one special symbol.',
      name: 'passwordRequirement');
  String get hintCreatePassword =>
      Intl.message('Create Password', name: 'hintCreatePassword');
  String get hintConfirmPassword =>
      Intl.message('Confirm Password', name: 'hintConfirmPassword');
  String get hintCurrentPassword =>
      Intl.message('Current password', name: 'hintCurrentPassword');
  String get logoutsettings =>
      Intl.message('Log Out Settings', name: 'logoutsettings');
  String get logoutOnExit =>
      Intl.message('Log Out on Exit', name: 'logoutOnExit');
  String get deleteWallet =>
      Intl.message('Delete Wallet', name: 'deleteWallet');
  String get delete => Intl.message('Delete', name: 'delete');
  String get settingDialogSpan1 =>
      Intl.message('Are you sure you want to delete ',
          name: 'settingDialogSpan1');
  String get settingDialogSpan2 =>
      Intl.message(' wallet?', name: 'settingDialogSpan2');
  String get settingDialogSpan3 =>
      Intl.message('If so, make sure you ', name: 'settingDialogSpan3');
  String get settingDialogSpan4 =>
      Intl.message(' record your seed phrase.', name: 'settingDialogSpan4');
  String get settingDialogSpan5 =>
      Intl.message(' In order to restore your wallet in the future.',
          name: 'settingDialogSpan5');
  String get backupTitle => Intl.message('Backup', name: 'backupTitle');
  String get version => Intl.message('version', name: 'version');
  String get viewSeedAndKeys =>
      Intl.message('Seed & Private Keys', name: 'viewSeedAndKeys');
  String get seedPhrase => Intl.message('Seed Phrase', name: 'seedPhrase');
  String get privateKeys => Intl.message('Private Keys', name: 'privateKeys');
  String get privateKey => Intl.message('Private Key', name: 'privateKey');
  String get enterpassword =>
      Intl.message('Please enter your password to continue.',
          name: 'enterpassword');
  String get clipboardCopy =>
      Intl.message('Copy to clipboard', name: 'clipboardCopy');

  String get unlock => Intl.message('unlock', name: 'unlock');
  String unlockSuccess(String amnt, String hash) => Intl.message(
        'Successfully unlocked $amnt funds - TX: $hash',
        name: 'unlockSuccess',
        args: [amnt, hash],
      );
  String get unlockFunds => Intl.message('Unlock Funds', name: 'unlockFunds');
  String get noOrders =>
      Intl.message('No orders, please go to trade.', name: 'noOrders');

  String noOrder(String coinName) => Intl.message(
        'Please enter the $coinName amount.',
        name: 'noOrder',
        args: <Object>[coinName],
      );
  String get bestAvailableRate =>
      Intl.message('Exchange rate', name: 'bestAvailableRate');
  String get receiveLower => Intl.message('Receive', name: 'receiveLower');
  String get makeAorder => Intl.message('make an order', name: 'makeAorder');
  String get exchangeTitle => Intl.message('EXCHANGE', name: 'exchangeTitle');
  String get orders => Intl.message('orders', name: 'orders');
  String get selectCoin => Intl.message('Select coin', name: 'selectCoin');
  String lessThanCaution(String coinName) => Intl.message(
        '❗Caution! Market for $coinName has less than \$10k 24h trading-volume!',
        name: 'lessThanCaution',
        args: <Object>[coinName],
      );
  String get selectLanguage =>
      Intl.message('Select Language', name: 'selectLanguage');
  String get noFunds => Intl.message('No funds', name: 'noFunds');
  String get noFundsDetected =>
      Intl.message('No funds available - please deposit.',
          name: 'noFundsDetected');
  String get goToPorfolio =>
      Intl.message('Go to portfolio', name: 'goToPorfolio');
  String get noOrderAvailable =>
      Intl.message('Click to create an order', name: 'noOrderAvailable');
  String get insufficientTitle =>
      Intl.message('Insufficient volume', name: 'insufficientTitle');
  String get insufficientText =>
      Intl.message('Minumum volume required by this order is',
          name: 'insufficientText');
  String get orderCreated =>
      Intl.message('Order created', name: 'orderCreated');
  String get orderCreatedInfo =>
      Intl.message('Order successfully created', name: 'orderCreatedInfo');
  String get showMyOrders =>
      Intl.message('Show My Orders', name: 'showMyOrders');
  String minValue(String coinName, String number) => Intl.message(
        'The minimum amount to sell is $number $coinName',
        name: 'minValue',
        args: <Object>[coinName, number],
      );
  String get titleCreatePassword =>
      Intl.message('CREATE A PASSWORD', name: 'titleCreatePassword');
  String minValueBuy(String coinName, String number) => Intl.message(
        'The minimum amount to buy is $number $coinName',
        name: 'minValueBuy',
        args: <Object>[coinName, number],
      );
  String minValueSell(String coinName, String number) => Intl.message(
        'The minimum amount to sell is $number $coinName',
        name: 'minValueSell',
        args: <Object>[coinName, number],
      );
  String minValueOrder(
    String buyCoin,
    String buyAmount,
    String sellCoin,
    String sellAmount,
  ) =>
      Intl.message(
        'Order minimum amount is $buyAmount $buyCoin'
        '\n($sellAmount $sellCoin)',
        name: 'minValueOrder',
        args: <Object>[buyCoin, buyAmount, sellCoin, sellAmount],
      );
  String get enterSellAmount =>
      Intl.message('You must enter Sell Amount first', name: 'enterSellAmount');
  String get encryptingWallet =>
      Intl.message('Encrypting wallet', name: 'encryptingWallet');
  String get decryptingWallet =>
      Intl.message('Decrypting wallet', name: 'decryptingWallet');
  String get notEnoughtBalanceForFee =>
      Intl.message('Not enough balance for fees - trade a smaller amount',
          name: 'notEnoughtBalanceForFee');
  String get noInternet =>
      Intl.message('No Internet Connection', name: 'noInternet');
  String get builtKomodo => Intl.message('Built on Gleec', name: 'builtKomodo');
  String get pleaseAddCoin =>
      Intl.message('Please Add A Coin', name: 'pleaseAddCoin');
  String get internetRestored =>
      Intl.message('Internet Connection Restored', name: 'internetRestored');
  String get internetRefreshButton =>
      Intl.message('Refresh', name: 'internetRefreshButton');
  String get legalTitle => Intl.message('Legal', name: 'legalTitle');
  String get disclaimerAndTos =>
      Intl.message('Disclaimer & ToS', name: 'disclaimerAndTos');
  String get accepteula => Intl.message('Accept EULA', name: 'accepteula');
  String get accepttac =>
      Intl.message('Accept TERMS and CONDITIONS', name: 'accepttac');
  String get confirmeula => Intl.message(
      'By clicking the button below, you confirm to have read and accept the \'EULA\' and \'Terms and Conditions\'.',
      name: 'confirmeula');
  String gasFee(String coin) =>
      Intl.message('$coin fee', name: 'gasFee', args: <Object>[coin]);
  String notEnoughGas(String coin) =>
      Intl.message('Not enough $coin for transaction!',
          name: 'notEnoughGas', args: <Object>[coin]);
  String gasNotActive(String coin) => Intl.message('Please activate $coin.',
      name: 'gasNotActive', args: <Object>[coin]);
  String youWillReceiveClaim(String amount, String coin) => Intl.message(
        'You will receive $amount $coin',
        name: 'youWillReceiveClaim',
        args: <Object>[amount, coin],
      );
  String seeOrders(String amount) => Intl.message(
        'Click to see $amount orders',
        name: 'seeOrders',
        args: <Object>[amount],
      );
  String get clickToSee => Intl.message('Click to see ', name: 'clickToSee');
  String get price => Intl.message('price', name: 'price');
  String get availableVolume =>
      Intl.message('max vol', name: 'availableVolume');
  String get configureWallet =>
      Intl.message('Configuring your wallet, please wait...',
          name: 'configureWallet');
  String get titleCurrentAsk =>
      Intl.message('Order selected', name: 'titleCurrentAsk');
  String get txFeeTitle => Intl.message('transaction fee:', name: 'txFeeTitle');
  String get tradingFee => Intl.message('trading fee:', name: 'tradingFee');
  String swapGasAmount(String coin) => Intl.message(
        '$coin balance not sufficient to pay transaction fees.',
        name: 'swapGasAmount',
        args: <Object>[coin],
      );
  String swapGasAmountRequired(String coin, String amount) => Intl.message(
        '$coin balance not sufficient to pay transaction fees. $coin $amount required.',
        name: 'swapGasAmountRequired',
        args: <Object>[coin, amount],
      );
  String get invalidSwap =>
      Intl.message('Unable to proceed swap', name: 'invalidSwap');
  String get showDetails => Intl.message('Show Details', name: 'showDetails');
  String get exchangeRate =>
      Intl.message('Exchange rate:', name: 'exchangeRate');
  String get selectedOrder =>
      Intl.message('Selected order:', name: 'selectedOrder');
  String get minOrder => Intl.message('Min order volume:', name: 'minOrder');
  String get maxOrder => Intl.message('Max order volume:', name: 'maxOrder');

  String get invalidSwapDetailsLink =>
      Intl.message('Details', name: 'invalidSwapDetailsLink');

  String swapGasActivate(String coin) => Intl.message(
        'Please activate $coin and top-up balance first',
        name: 'swapGasActivate',
        args: <Object>[coin],
      );
  String get tradePreimageError =>
      Intl.message('Failed to calculate trade fees',
          name: 'tradePreimageError');
  String get remove => Intl.message('Disable', name: 'remove');
  String get walletOnly => Intl.message('Wallet only', name: 'walletOnly');
  String get emptyWallet =>
      Intl.message('Wallet name must not be empty', name: 'emptyWallet');
  String get walletMaxChar =>
      Intl.message('Wallet name must have a max of 40 characters',
          name: 'walletMaxChar');
  String get walletInUse =>
      Intl.message('Wallet name is already in use', name: 'walletInUse');
  String get dexIsNotAvailable =>
      Intl.message('DEX is not available for this coin',
          name: 'dexIsNotAvailable');
  String get searchFilterCoin =>
      Intl.message('Search a coin', name: 'searchFilterCoin');
  String get searchFilterSubtitleSmartChain =>
      Intl.message('Select all SmartChains',
          name: 'searchFilterSubtitleSmartChain');
  String get searchFilterSubtitleTestCoins =>
      Intl.message('Select all Test Assets',
          name: 'searchFilterSubtitleTestCoins');
  String get searchFilterSubtitleERC =>
      Intl.message('Select all ERC tokens', name: 'searchFilterSubtitleERC');
  String get searchFilterSubtitleSLP =>
      Intl.message('Select all SLP tokens', name: 'searchFilterSubtitleSLP');
  String get searchFilterSubtitleCosmos =>
      Intl.message('Select all Cosmos Network',
          name: 'searchFilterSubtitleCosmos');
  String get searchFilterSubtitleIris =>
      Intl.message('Select all Iris Network', name: 'searchFilterSubtitleIris');
  String get searchFilterSubtitleKRC =>
      Intl.message('Select all Kucoin tokens', name: 'searchFilterSubtitleKRC');
  String get searchFilterSubtitleHRC =>
      Intl.message('Select all Harmony tokens',
          name: 'searchFilterSubtitleHRC');
  String get searchFilterSubtitleETC =>
      Intl.message('Select all ETC tokens', name: 'searchFilterSubtitleETC');
  String get searchFilterSubtitleSBCH =>
      Intl.message('Select all SmartBCH tokens',
          name: 'searchFilterSubtitleSBCH');
  String get searchFilterSubtitleAVX =>
      Intl.message('Select all Avax tokens', name: 'searchFilterSubtitleAVX');
  String get searchFilterSubtitleUBQ =>
      Intl.message('Select all Ubiq coins', name: 'searchFilterSubtitleUBQ');
  String get searchFilterSubtitleBEP =>
      Intl.message('Select all BEP tokens', name: 'searchFilterSubtitleBEP');
  String get searchFilterSubtitlePLG =>
      Intl.message('Select all Polygon tokens',
          name: 'searchFilterSubtitlePLG');
  String get searchFilterSubtitleQRC =>
      Intl.message('Select all QRC tokens', name: 'searchFilterSubtitleQRC');
  String get searchFilterSubtitleHCO =>
      Intl.message('Select all HecoChain tokens',
          name: 'searchFilterSubtitleHCO');
  String get searchFilterSubtitleZHTLC =>
      Intl.message('Select all ZHTLC coins', name: 'searchFilterSubtitleZHTLC');
  String get searchFilterSubtitleFTM =>
      Intl.message('Select all Fantom tokens', name: 'searchFilterSubtitleFTM');
  String get searchFilterSubtitleMVR =>
      Intl.message('Select all Moonriver tokens',
          name: 'searchFilterSubtitleMVR');
  String get customFee => Intl.message('Custom fee', name: 'customFee');
  String get gasLimit => Intl.message('Gas limit', name: 'gasLimit');
  String get gasPrice => Intl.message('Gas price', name: 'gasPrice');
  String get customFeeWarning =>
      Intl.message('Only use custom fees if you know what you are doing!',
          name: 'customFeeWarning');
  String get searchFilterSubtitleutxo =>
      Intl.message('Select all UTXO coins', name: 'searchFilterSubtitleutxo');
  String get tagHRC20 => Intl.message('HRC20', name: 'tagHRC20');
  String get tagMVR20 => Intl.message('MVR20', name: 'tagMVR20');
  String get tagHCO20 => Intl.message('HCO20', name: 'tagHCO20');
  String get tagKRC20 => Intl.message('KRC20', name: 'tagKRC20');
  String get tagERC20 => Intl.message('ERC20', name: 'tagERC20');
  String get tagAVX20 => Intl.message('AVX20', name: 'tagAVX20');
  String get tagBEP20 => Intl.message('BEP20', name: 'tagBEP20');
  String get tagQRC20 => Intl.message('QRC20', name: 'tagQRC20');
  String get tagPLG20 => Intl.message('PLG20', name: 'tagPLG20');
  String get tagFTM20 => Intl.message('FTM20', name: 'tagFTM20');
  String get tagZHTLC => Intl.message('ZHTLC', name: 'tagZHTLC');
  String get tagKMD => Intl.message('KMD', name: 'tagKMD');
  String get tagETC => Intl.message('ETC', name: 'tagETC');
  String get tagSBCH => Intl.message('SBCH', name: 'tagSBCH');
  String get tagUBQ => Intl.message('UBQ', name: 'tagUBQ');
  String get builtOnKmd => Intl.message('Built on Gleec', name: 'builtOnKmd');
  String get poweredOnKmd =>
      Intl.message('Powered by Gleec', name: 'poweredOnKmd');

  String errorNotEnoughGas(String gas) =>
      Intl.message('Not enough gas - use at least $gas Gwei',
          name: 'errorNotEnoughGas', args: <Object>[gas]);
  String orderCancel(String coin) =>
      Intl.message('All $coin orders will be canceled.',
          name: 'orderCancel', args: <Object>[coin]);
  String get deleteConfirm =>
      Intl.message('Confirm deactivation', name: 'deleteConfirm');
  String get deleteSpan1 =>
      Intl.message('Do you want to remove ', name: 'deleteSpan1');
  String get deleteSpan2 => Intl.message(
      ' from your portfolio? All unmatched orders will be canceled. ',
      name: 'deleteSpan2');
  String get deleteSpan3 =>
      Intl.message(' will also be deactivated', name: 'deleteSpan3');
  String get cantDeleteDefaultCoinTitle =>
      Intl.message("Can't disable ", name: 'cantDeleteDefaultCoinTitle');
  String get cantDeleteDefaultCoinSpan =>
      Intl.message(" is a default coin. Default coins can't be disabled.",
          name: 'cantDeleteDefaultCoinSpan');
  String get cantDeleteDefaultCoinOk =>
      Intl.message('Ok', name: 'cantDeleteDefaultCoinOk');
  String get share => Intl.message('Share', name: 'share');
  String get warningShareLogs => Intl.message(
      'Warning - in special cases this log data contains sensitive information that can be used to spend coins from failed swaps!',
      name: 'warningShareLogs');
  String get enterOldPinCode =>
      Intl.message('Enter your old PIN', name: 'enterOldPinCode');
  String get enterNewPinCode =>
      Intl.message('Enter your new PIN', name: 'enterNewPinCode');
  String get authenticate => Intl.message('authenticate', name: 'authenticate');
  String get settingLanguageTitle =>
      Intl.message('Languages', name: 'settingLanguageTitle');
  String get englishLanguage =>
      Intl.message('English', name: 'englishLanguage');
  String get frenchLanguage => Intl.message('French', name: 'frenchLanguage');
  String get deutscheLanguage =>
      Intl.message('Deutsch', name: 'deutscheLanguage');
  String get chineseLanguage =>
      Intl.message('Chinese', name: 'chineseLanguage');
  String get russianLanguage =>
      Intl.message('Russian', name: 'russianLanguage');
  String get japaneseLanguage =>
      Intl.message('Japanese', name: 'japaneseLanguage');
  String get turkishLanguage =>
      Intl.message('Turkish', name: 'turkishLanguage');
  String get hungarianLanguage =>
      Intl.message('Hungarian', name: 'hungarianLanguage');
  String get spanishLanguage =>
      Intl.message('Spanish', name: 'spanishLanguage');
  String get koreanLanguage => Intl.message('Korean', name: 'koreanLanguage');
  String get ukrainianLanguage =>
      Intl.message('Ukrainian', name: 'ukrainianLanguage');
  String get faucetName => Intl.message('FAUCET', name: 'faucetName');
  String get faucetSuccess => Intl.message('Success', name: 'faucetSuccess');
  String get faucetError => Intl.message('Error', name: 'faucetError');
  String get faucetTimedOut =>
      Intl.message('Request timed out', name: 'faucetTimedOut');
  String faucetInProgress(String coin) =>
      Intl.message('Sending request to $coin faucet...',
          args: <Object>[coin], name: 'faucetInProgress');

  // --- sound configuration ---

  String get optional => Intl.message('Optional');
  String get soundTitle => Intl.message('Sound');
  String get soundOption => Intl.message('Play at full volume');
  String get soundTaker => Intl.message('Taker');
  String get soundTakerDesc => Intl.message(
      'you have a fresh order that is trying to match with an existing order');
  String get soundMaker => Intl.message('Maker');
  String get soundMakerDesc =>
      Intl.message('you have an order that new orders can match with');
  String get soundActive => Intl.message('Active');
  String get soundActiveDesc =>
      Intl.message('you have an active swap in progress');
  String get soundFailed => Intl.message('Failed');
  String get soundFailedDesc => Intl.message('a swap fails');
  String get soundApplause => Intl.message('Applause');
  String get soundApplauseDesc => Intl.message('a swap runs to completion');
  String get soundCantPlayThat => Intl.message("Can't play that");
  String soundCantPlayThatMsg(String description) => Intl.message(
      "Pick an mp3 or wav file please. We'll play it when $description.",
      name: 'soundCantPlayThatMsg',
      args: [description],
      examples: const {'description': 'a swap runs to completion'});
  String soundPlayedWhen(String description) =>
      Intl.message('Played when $description',
          name: 'soundPlayedWhen',
          args: [description],
          examples: const {'description': 'a swap runs to completion'});
  String get soundsDialogTitle =>
      Intl.message('Sounds', name: 'soundsDialogTitle');
  String get soundsExplanation => Intl.message(
      'You\'ll hear sound notifications during the swap process and when you have'
      ' an active maker order placed.'
      '\nAtomic swaps protocol requires participants'
      ' to be online for a successful trade, and sound notifications help to'
      ' achieve that.',
      name: 'soundsExplanation');
  String get soundsNote => Intl.message(
      'Note that you can set your custom sounds in application settings.',
      name: 'soundsNote');
  String get soundsDoNotShowAgain =>
      Intl.message('Understood, don\'t show it anymore',
          name: 'soundsDoNotShowAgain');
  String get soundSettingsTitle =>
      Intl.message('Sound settings', name: 'soundSettingsTitle');
  String get soundSettingsLink =>
      Intl.message('Sound', name: 'soundSettingsLink');

  // --- Markets section ---

  String get marketsTab => Intl.message('Markets', name: 'marketsTab');
  String get marketsTitle => Intl.message('MARKETS', name: 'marketsTitle');
  String get marketsPrice => Intl.message('PRICE', name: 'marketsPrice');
  String get marketsOrderbook =>
      Intl.message('ORDER BOOK', name: 'marketsOrderbook');
  String get marketsChart => Intl.message('Chart', name: 'marketsChart');
  String get marketsDepth => Intl.message('Depth', name: 'marketsDepth');
  String get orderDetailsPrice =>
      Intl.message('Price', name: 'orderDetailsPrice');
  String get orderDetailsSells =>
      Intl.message('Sells', name: 'orderDetailsSells');
  String get orderDetailsFor => Intl.message('for', name: 'orderDetailsFor');
  String get orderDetailsMin => Intl.message('min.', name: 'orderDetailsMin');
  String get orderDetailsAddress =>
      Intl.message('Address', name: 'orderDetailsAddress');
  String orderDetailsExpedient(String delta) =>
      Intl.message('Expedient: CEX +$delta%',
          args: <Object>[delta], name: 'orderDetailsExpedient');
  String orderDetailsExpensive(String delta) =>
      Intl.message('Expensive: CEX $delta%',
          args: <Object>[delta], name: 'orderDetailsExpensive');
  String get orderDetailsIdentical =>
      Intl.message('Identical to CEX', name: 'orderDetailsIdentical');
  String get orderDetailsReceive =>
      Intl.message('Receive', name: 'orderDetailsReceive');
  String get orderDetailsSpend =>
      Intl.message('Spend', name: 'orderDetailsSpend');
  String get ownOrder =>
      Intl.message(' This is your own order!', name: 'ownOrder');
  String get marketsSelectCoins =>
      Intl.message('Please select coins', name: 'marketsSelectCoins');
  String get coinSelectTitle =>
      Intl.message('Select Coin', name: 'coinSelectTitle');
  String get coinSelectNotFound =>
      Intl.message('No active coins', name: 'coinSelectNotFound');
  String get coinSelectClear => Intl.message('Clear', name: 'coinSelectClear');
  String ordersTablePrice(String coin) => Intl.message('Price ($coin)',
      args: <Object>[coin], name: 'ordersTablePrice');
  String ordersTableAmount(String coin) => Intl.message('Amt. ($coin)',
      args: <Object>[coin], name: 'ordersTableAmount');
  String ordersTableTotal(String coin) => Intl.message('Total ($coin)',
      args: <Object>[coin], name: 'ordersTableTotal');
  String get marketsNoBids =>
      Intl.message('No bids found', name: 'marketsNoBids');
  String get marketsNoAsks =>
      Intl.message('No asks found', name: 'marketsNoAsks');
  String get marketsOrderDetails =>
      Intl.message('Order Details', name: 'marketsOrderDetails');
  String get candleChartError =>
      Intl.message('Something went wrong. Try again later.',
          name: 'candleChartError');

  // --- Rewards ---

  String get rewardsTitle =>
      Intl.message('Rewards information', name: 'rewardsTitle');
  String get rewardsReadMore =>
      Intl.message('Read more about KMD active user rewards',
          name: 'rewardsReadMore');
  String get rewardsCancel => Intl.message('Cancel', name: 'rewardsCancel');
  String get rewardsReceive => Intl.message('Receive', name: 'rewardsReceive');
  String get noRewards =>
      Intl.message('No claimable rewards', name: 'noRewards');
  String get rewardsTableTitle =>
      Intl.message('Rewards information:', name: 'rewardsTableTitle');
  String get rewardsTableUXTO =>
      Intl.message('UTXO amt,\nKMD', name: 'rewardsTableUXTO');
  String get rewardsTableRewards =>
      Intl.message('Rewards,\nKMD', name: 'rewardsTableRewards');
  String get rewardsTableFiat => Intl.message('Fiat', name: 'rewardsTableFiat');
  String get rewardsTableTime =>
      Intl.message('Time left', name: 'rewardsTableTime');
  String get rewardsTableStatus =>
      Intl.message('Status', name: 'rewardsTableStatus');
  String get rewardsPopupTitle =>
      Intl.message('Rewards status:', name: 'rewardsPopupTitle');
  String get rewardsPopupOk => Intl.message('Ok', name: 'rewardsPopupOk');
  String rewardsTimeDays(int dd) =>
      Intl.message('$dd day(s)', args: <Object>[dd], name: 'rewardsTimeDays');
  String rewardsTimeHours(int hh, String minutes) =>
      Intl.message('${hh}h ${minutes}m',
          args: <Object>[hh, minutes], name: 'rewardsTimeHours');
  String rewardsTimeMin(int mm) =>
      Intl.message('${mm}min', args: <Object>[mm], name: 'rewardsTimeMin');
  String rewardsSuccess(String amount) =>
      Intl.message('Success! $amount KMD received.',
          args: <Object>[amount], name: 'rewardsSuccess');
  String get rewardsError =>
      Intl.message('Something went wrong. Please try again later.',
          name: 'rewardsError');
  String get rewardsLowAmountShort =>
      Intl.message('<10 KMD', name: 'rewardsLowAmountShort');
  String get rewardsLowAmountLong =>
      Intl.message('UTXO amount less than 10 KMD',
          name: 'rewardsLowAmountLong');
  String get rewardsInProgressShort =>
      Intl.message('processing', name: 'rewardsInProgressShort');
  String get rewardsInProgressLong =>
      Intl.message('Transaction is in progress', name: 'rewardsInProgressLong');
  String get rewardsOneHourShort =>
      Intl.message('<1 hour', name: 'rewardsOneHourShort');
  String get rewardsOneHourLong =>
      Intl.message('One hour not passed yet', name: 'rewardsOneHourLong');
  String get rewardsButton =>
      Intl.message('Claim your rewards', name: 'rewardsButton');
  String get seeTxHistory =>
      Intl.message('View Transaction History', name: 'seeTxHistory');
  String get retryActivating =>
      Intl.message('Retrying activating all coins...', name: 'retryActivating');
  String get willBeRedirected =>
      Intl.message('You will be redirected to portfolio page on completion.',
          name: 'willBeRedirected');

  String get tryRestarting => Intl.message(
      'If even then some coins are still not activated, try restarting the app.',
      name: 'tryRestarting');

  String weFailedTo(String coinAbbr) => Intl.message(
        'We failed to activate $coinAbbr',
        name: 'weFailedTo',
        args: [coinAbbr],
      );

  String get pleaseRestart => Intl.message(
      'Please restart the app to try again, or press the button below.',
      name: 'pleaseRestart');
  String get retryAll => Intl.message('Retry activating all', name: 'retryAll');
  String get automaticRedirected => Intl.message(
      'You will be automatically redirected to portfolio page when the retry activation process completes.',
      name: 'automaticRedirected');

  String weFailedToActivate(String coinAbbr) => Intl.message(
        'We failed to activate $coinAbbr.\n'
        'Please restart the app to try again.',
        name: 'weFailedToActivate',
        args: [coinAbbr],
      );

  String failedToCancelActivation(String coinAbbr) => Intl.message(
        'Failed to cancel activation of $coinAbbr',
        name: 'failedToCancelActivation',
        args: [coinAbbr],
      );

  String isUnavailable(String coinAbbr) => Intl.message(
        '$coinAbbr is unavailable :(',
        name: 'isUnavailable',
        args: [coinAbbr],
      );

  // --- Multi Order---

  String get multiTab => Intl.message('Multi', name: 'multiTab');
  String get multiFixErrors =>
      Intl.message('Please fix all errors before continuing',
          name: 'multiFixErrors');
  String get multiCreate => Intl.message('Create', name: 'multiCreate');
  String get multiCreateOrder =>
      Intl.message('Order', name: 'multiCreateOrder');
  String get multiCreateOrders =>
      Intl.message('Orders', name: 'multiCreateOrders');
  String get multiBasePlaceholder =>
      Intl.message('Coin', name: 'multiBasePlaceholder');
  String get multiSellTitle => Intl.message('Sell:', name: 'multiSellTitle');
  String get multiBaseSelectTitle =>
      Intl.message('Sell', name: 'multiBaseSelectTitle');
  String get multiBaseAmtPlaceholder =>
      Intl.message('Amount', name: 'multiBaseAmtPlaceholder');
  String get multiReceiveTitle =>
      Intl.message('Receive:', name: 'multiReceiveTitle');
  String get multiTablePrice =>
      Intl.message('Price/CEX', name: 'multiTablePrice');
  String get multiTableAmt =>
      Intl.message('Receive Amt.', name: 'multiTableAmt');
  String get multiFiatDesc =>
      Intl.message('Please enter fiat amount to receive:',
          name: 'multiFiatDesc');
  String get multiFiatCancel => Intl.message('Cancel', name: 'multiFiatCancel');
  String get multiFiatFill => Intl.message('Autofill', name: 'multiFiatFill');
  String get multiEthFee => Intl.message('fee', name: 'multiEthFee');
  String multiLowerThanFee(String coin, String fee) =>
      Intl.message('Not enough $coin to pay fees. MIN balance is $fee $coin',
          args: <Object>[coin, fee], name: 'multiLowerThanFee');
  String multiConfirmTitle(int number) =>
      Intl.message('Create $number Order(s):',
          args: <Object>[number], name: 'multiConfirmTitle');
  String get multiConfirmCancel =>
      Intl.message('Cancel', name: 'multiConfirmCancel');
  String get multiConfirmConfirm =>
      Intl.message('Confirm', name: 'multiConfirmConfirm');
  String get multiInvalidSellAmt =>
      Intl.message('Invalid sell amount', name: 'multiInvalidSellAmt');
  String get multiMaxSellAmt =>
      Intl.message('Max sell amount is', name: 'multiMaxSellAmt');
  String get multiMinSellAmt =>
      Intl.message('Min sell amount is', name: 'multiMinSellAmt');
  String get multiInvalidAmt =>
      Intl.message('Invalid amount', name: 'multiInvalidAmt');
  String invalidCoinAddress(String coin) => Intl.message(
        'Invalid $coin address',
        args: [coin],
        name: 'invalidCoinAddress',
      );
  String multiActivateGas(String coin) =>
      Intl.message('Activate $coin and top-up balance first',
          name: 'multiActivateGas', args: <Object>[coin]);
  String multiLowGas(String coin) => Intl.message('$coin balance is too low',
      name: 'multiLowGas', args: <Object>[coin]);
  String get multiMinReceiveAmt =>
      Intl.message('Min receive amount is', name: 'multiMinReceiveAmt');

  // --- Address book ---

  String get addressBook => Intl.message('Address book', name: 'addressBook');
  String get addressBookTitle =>
      Intl.message('Address Book', name: 'addressBookTitle');
  String get contactTitle =>
      Intl.message('Contact details', name: 'contactTitle');
  String get addressBookEmpty =>
      Intl.message('Address book is empty', name: 'addressBookEmpty');
  String addressBookFilter(String title) =>
      Intl.message('Only showing contacts with $title addresses',
          args: <Object>[title], name: 'addressBookFilter');
  String get createContact =>
      Intl.message('Create Contact', name: 'createContact');
  String get contactTitleName => Intl.message('Name', name: 'contactTitleName');
  String get editContact => Intl.message('Edit Contact', name: 'editContact');
  String get contactCancel => Intl.message('Cancel', name: 'contactCancel');
  String get contactSave => Intl.message('Save', name: 'contactSave');
  String get contactDiscardBtn =>
      Intl.message('Discard', name: 'contactDiscardBtn');
  String get contactExit => Intl.message('Exit', name: 'contactExit');
  String get contactExitWarning =>
      Intl.message('Discard your changes?', name: 'contactExitWarning');
  String get addressAdd => Intl.message('Add Address', name: 'addressAdd');
  String get addressSelectCoin =>
      Intl.message('Select Coin', name: 'addressSelectCoin');
  String get searchForTicker =>
      Intl.message('Search for Ticker', name: 'searchForTicker');
  String get contactDelete =>
      Intl.message('Delete Contact', name: 'contactDelete');
  String contactDeleteWarning(String name) =>
      Intl.message('Are you sure you want to delete contact $name?',
          args: <Object>[name], name: 'contactDeleteWarning');
  String get contactDeleteBtn =>
      Intl.message('Delete', name: 'contactDeleteBtn');
  String get contactNotFound =>
      Intl.message('No contacts found', name: 'contactNotFound');
  String get contactEdit => Intl.message('Edit', name: 'contactEdit');
  String get addressNotFound =>
      Intl.message('Nothing found', name: 'addressNotFound');
  String get noSuchCoin => Intl.message('No such coin', name: 'noSuchCoin');
  String addressCoinInactive(String abbr) => Intl.message(
      'You can not send funds to $abbr address, '
      'because $abbr is not activated. Please go to portfolio.',
      args: <Object>[abbr],
      name: 'addressCoinInactive');
  String get warningOkBtn => Intl.message('Ok', name: 'warningOkBtn');
  String get emptyName =>
      Intl.message('Contact name cannot be empty', name: 'emptyName');
  String emptyCoin(String abbr) => Intl.message('Input $abbr address',
      name: 'emptyCoin', args: <Object>[abbr]);
  // --- Camouflage Pin ---

  String get camoPinTitle =>
      Intl.message('Camouflage PIN', name: 'camoPinTitle');
  String get camoPinLink => Intl.message('Camouflage PIN', name: 'camoPinLink');
  String get camoPinOn => Intl.message('On', name: 'camoPinOn');
  String get camoPinOff => Intl.message('Off', name: 'camoPinOff');
  String get matchingCamoTitle =>
      Intl.message('Invalid PIN', name: 'matchingCamoTitle');
  String get matchingCamoChange =>
      Intl.message('Change', name: 'matchingCamoChange');
  String get camoPinDesc => Intl.message(
      'If You\'ll unlock the app with the Camouflage PIN, a fake'
      ' LOW balance will be shown'
      ' and the Camouflage PIN config option will'
      ' NOT be visible in the settings',
      name: 'camoPinDesc');
  String get matchingCamoPinError => Intl.message(
      'Your general PIN and Camouflage PIN are the same.\n'
      'Camouflage mode will not be available.\n'
      'Please change Camouflage PIN.',
      name: 'matchingCamoPinError');
  String get camoPinBioProtectionConflict => Intl.message(
      "Camouflage PIN and Bio protection can't be enabled at the same time.",
      name: 'camoPinBioProtectionConflict');
  String get camoPinBioProtectionConflictTitle =>
      Intl.message('Camo PIN and Bio protection conflict.',
          name: 'camoPinBioProtectionConflictTitle');
  String get generalPinNotActive => Intl.message(
      'General PIN protection is not active.\n'
      'Camouflage mode will not be available.'
      '\nPlease activate PIN protection.',
      name: 'generalPinNotActive');
  String get fakeBalanceAmt =>
      Intl.message('Fake balance amount:', name: 'fakeBalanceAmt');
  String get camoPinNotFound =>
      Intl.message('Camouflage PIN not found', name: 'camoPinNotFound');
  String get camoPinCreate =>
      Intl.message('Create Camouflage PIN', name: 'camoPinCreate');
  String get camoPinSaved =>
      Intl.message('Camouflage PIN saved', name: 'camoPinSaved');
  String get camoPinInvalid =>
      Intl.message('Invalid Camouflage PIN', name: 'camoPinInvalid');
  String get camoPinChange =>
      Intl.message('Change Camouflage PIN', name: 'camoPinChange');
  String get camoSetupTitle =>
      Intl.message('Camouflage PIN Setup', name: 'camoSetupTitle');
  String get camoSetupSubtitle =>
      Intl.message('Enter new Camouflage PIN', name: 'camoSetupSubtitle');

  // --- DEX ---

  String get protectionCtrlOn => Intl.message('ON', name: 'protectionCtrlOn');
  String get protectionCtrlOff =>
      Intl.message('OFF', name: 'protectionCtrlOff');
  String get protectionCtrlConfirmations =>
      Intl.message('Confirmations', name: 'protectionCtrlConfirmations');
  String get dPow => Intl.message('Gleec dPoW security', name: 'dPow');
  String get protectionCtrlCustom =>
      Intl.message('Use custom protection settings',
          name: 'protectionCtrlCustom');
  String get protectionCtrlWarning => Intl.message(
      'Warning, this atomic swap is not '
      'dPoW protected. ',
      name: 'protectionCtrlWarning');
  String get buyOrderType =>
      Intl.message('Convert to Maker if not matched', name: 'buyOrderType');

  String get cexChangeRate =>
      Intl.message('CEXchange rate', name: 'cexChangeRate');
  String get exchangeExpedient =>
      Intl.message('Expedient', name: 'exchangeExpedient');
  String get exchangeExpensive =>
      Intl.message('Expensive', name: 'exchangeExpensive');
  String get exchangeIdentical =>
      Intl.message('Identical to CEX', name: 'exchangeIdentical');
  String get comparedToCex =>
      Intl.message('compared to CEX', name: 'comparedToCex');
  String get comparedTo24hrCex =>
      Intl.message('compared to avg. 24h CEX price', name: 'comparedTo24hrCex');

  String get ordersActive => Intl.message('Active', name: 'ordersActive');
  String get ordersHistory => Intl.message('History', name: 'ordersHistory');
  String get orderDetailsTitle =>
      Intl.message('Details', name: 'orderDetailsTitle');
  String get orderDetailsSettings => Intl.message(
      'Open Details on single tap'
      ' and select Order by long tap',
      name: 'orderDetailsSettings');
  String get orderDetailsCancel =>
      Intl.message('Cancel', name: 'orderDetailsCancel');
  String get orderDetailsSelect =>
      Intl.message('Select', name: 'orderDetailsSelect');
  String get noMatchingOrders =>
      Intl.message('No matching orders found', name: 'noMatchingOrders');

  String get makerOrder => Intl.message('Maker Order', name: 'makerOrder');
  String get takerOrder => Intl.message('Taker Order', name: 'takerOrder');

  // --- Swaps ---

  String get swapCurrent => Intl.message('Current', name: 'swapCurrent');
  String get swapEstimated => Intl.message('Estimate', name: 'swapEstimated');
  String get swapStarted => Intl.message('Started', name: 'swapStarted');
  String get swapTotal => Intl.message('Total', name: 'swapTotal');
  String get swapProgress =>
      Intl.message('Progress details', name: 'swapProgress');
  String get closeMessage =>
      Intl.message('Close Error Message', name: 'closeMessage');
  String get openMessage =>
      Intl.message('Open Error Message', name: 'openMessage');

  // -- Notifications --

  String get notifTxTitle =>
      Intl.message('Incoming transaction', name: 'notifTxTitle');
  String notifTxText(String coin) =>
      Intl.message('You have received $coin transaction!',
          args: <Object>[coin], name: 'notifTxText');
  String get notifSwapCompletedTitle =>
      Intl.message('Swap completed', name: 'notifSwapCompletedTitle');
  String notifSwapCompletedText(String sell, String buy) =>
      Intl.message('$sell/$buy swap was completed successfully',
          args: <Object>[sell, buy], name: 'notifSwapCompletedText');
  String get notifSwapFailedTitle =>
      Intl.message('Swap failed', name: 'notifSwapFailedTitle');
  String notifSwapFailedText(String sell, String buy) =>
      Intl.message('$sell/$buy swap failed',
          args: <Object>[sell, buy], name: 'notifSwapFailedText');
  String get notifSwapTimeoutTitle =>
      Intl.message('Swap timed out', name: 'notifSwapTimeoutTitle');
  String notifSwapTimeoutText(String sell, String buy) =>
      Intl.message('$sell/$buy swap was timed out',
          args: <Object>[sell, buy], name: 'notifSwapTimeoutText');
  String get notifSwapStatusTitle =>
      Intl.message('Swap status changed', name: 'notifSwapStatusTitle');
  String get notifSwapStartedTitle =>
      Intl.message('New swap started', name: 'notifSwapStartedTitle');
  String notifSwapStartedText(String sell, String buy) =>
      Intl.message('$sell/$buy swap started',
          args: <Object>[sell, buy], name: 'notifSwapStartedText');

  // --- Drawer ---

  String get language => Intl.message('Language', name: 'language');
  String get currency => Intl.message('Currency', name: 'currency');
  String get hideBalance => Intl.message('Hide balances', name: 'hideBalance');
  String get switchTheme => Intl.message('Switch Theme', name: 'switchTheme');

  // --- CEX Marker ---

  String get cex => Intl.message('CEX', name: 'cex');
  String get cexData => Intl.message('CEX data', name: 'cexData');
  String get cexDataDesc => Intl.message(
      'Markets data (prices, charts, etc.) marked with this'
      ' icon originates from third party sources ('
      '<a href="https://www.coingecko.com/">coingecko.com</a>, '
      '<a href="https://openrates.io/">openrates.io</a>'
      ').',
      name: 'cexDataDesc');

  // --- Miscellaneous ---

  String get checkForUpdates =>
      Intl.message('Check for updates', name: 'checkForUpdates');
  String get logoutWarning =>
      Intl.message('Are you sure you want to logout now?',
          name: 'logoutWarning');
  String get currencyDialogTitle =>
      Intl.message('Currency', name: 'currencyDialogTitle');
  String get txLimitExceeded => Intl.message(
      'Too many requests.\n'
      'Transactions history requests limit exceeded.\n'
      'Please try again later.',
      name: 'txLimitExceeded');
  String get milliseconds => Intl.message('ms', name: 'milliseconds');
  String get seconds => Intl.message('s', name: 'seconds');
  String get minutes => Intl.message('m', name: 'minutes');
  String get longMinutes => Intl.message('minutes', name: 'longMinutes');
  String get hours => Intl.message('h', name: 'hours');
  String get moreTab => Intl.message('More', name: 'moreTab');
  String get less => Intl.message('Less', name: 'less');
  String get oldLogsTitle => Intl.message('Old logs', name: 'oldLogsTitle');
  String get oldLogsDelete => Intl.message('Delete', name: 'oldLogsDelete');
  String get deletingWallet =>
      Intl.message('Deleting wallet...', name: 'deletingWallet');

  String get oldLogsUsed => Intl.message('Space used', name: 'oldLogsUsed');
  String get okButton => Intl.message('Ok', name: 'okButton');
  String get closePreview =>
      Intl.message('Close preview', name: 'closePreview');
  String get cancelButton => Intl.message('Cancel', name: 'cancelButton');

  String get scrollToContinue =>
      Intl.message('Scroll to the bottom to continue...',
          name: 'scrollToContinue');

  String get developerTitle =>
      Intl.message('Developer', name: 'developerTitle');
  String get enableTestCoins =>
      Intl.message('Enable Test Coins', name: 'enableTestCoins');

  // --- Maker order details ---

  String get makerDetailsTitle =>
      Intl.message('Maker Order details', name: 'makerDetailsTitle');
  String get makerDetailsSell => Intl.message('Sell', name: 'makerDetailsSell');
  String get makerDetailsFor =>
      Intl.message('Receive', name: 'makerDetailsFor');
  String get makerDetailsPrice =>
      Intl.message('Price', name: 'makerDetailsPrice');
  String get makerDetailsCancel =>
      Intl.message('Cancel order', name: 'makerDetailsCancel');
  String get makerDetailsId => Intl.message('Order ID', name: 'makerDetailsId');
  String get makerDetailsCreated =>
      Intl.message('Created at', name: 'makerDetailsCreated');
  String get makerDetailsNoSwaps =>
      Intl.message('No swaps were started by this order',
          name: 'makerDetailsNoSwaps');
  String get makerDetailsSwaps =>
      Intl.message('Swaps started by this order', name: 'makerDetailsSwaps');
  String orderFilled(String fill) =>
      Intl.message('$fill% filled', args: <Object>[fill], name: 'orderFilled');

  // --- Notes ---

  String get noteTitle => Intl.message('Note', name: 'noteTitle');
  String get notePlaceholder =>
      Intl.message('Add a Note', name: 'notePlaceholder');

  // --- Import/Export
  String get importLink => Intl.message('Import', name: 'importLink');
  String get importSingleSwapLink =>
      Intl.message('Import Single Swap', name: 'importSingleSwapLink');
  String get exportLink => Intl.message('Export', name: 'exportLink');
  String get importTitle => Intl.message('Import', name: 'importTitle');
  String get importSingleSwapTitle =>
      Intl.message('Import Swap', name: 'importSingleSwapTitle');
  String get exportTitle => Intl.message('Export', name: 'exportTitle');
  String get exportDesc =>
      Intl.message('Please select items to export into encrypted file.',
          name: 'exportDesc');
  String get importLoadDesc =>
      Intl.message('Please select encrypted file to import.',
          name: 'importLoadDesc');
  String get importLoadSwapDesc =>
      Intl.message('Please select plain text swap file to import.',
          name: 'importLoadSwapDesc');
  String get importLoading => Intl.message('Opening...', name: 'importLoading');
  String get importDesc =>
      Intl.message('Items to be imported:', name: 'importDesc');
  String get exportNotesTitle =>
      Intl.message('Notes', name: 'exportNotesTitle');
  String get exportContactsTitle =>
      Intl.message('Contacts', name: 'exportContactsTitle');
  String get exportSwapsTitle =>
      Intl.message('Swaps', name: 'exportSwapsTitle');
  String get nothingFound =>
      Intl.message('Nothing found', name: 'nothingFound');
  String get exportButton => Intl.message('Export', name: 'exportButton');
  String get importButton => Intl.message('Import', name: 'importButton');
  String get emptyExportPass =>
      Intl.message('Encryption password can\'t be empty',
          name: 'emptyExportPass');
  String get emptyImportPass =>
      Intl.message('Password can\'t be empty', name: 'emptyImportPass');
  String get matchExportPass =>
      Intl.message('Passwords must match', name: 'matchExportPass');
  String get noItemsToExport =>
      Intl.message('No items selected', name: 'noItemsToExport');
  String get noItemsToImport =>
      Intl.message('No items selected', name: 'noItemsToImport');
  String get selectFileImport =>
      Intl.message('Select file', name: 'selectFileImport');
  String get importFileNotFound =>
      Intl.message('File not found', name: 'importFileNotFound');
  String get fingerprint => Intl.message('Fingerprint', name: 'fingerprint');
  String get importPassword => Intl.message('Password', name: 'importPassword');
  String get importPassCancel =>
      Intl.message('Cancel', name: 'importPassCancel');
  String get importPassOk => Intl.message('Ok', name: 'importPassOk');
  String get exportSuccessTitle =>
      Intl.message('Items have been successfully exported:',
          name: 'exportSuccessTitle');
  String get importSuccessTitle =>
      Intl.message('Items have been successfully imported:',
          name: 'importSuccessTitle');
  String get importDecryptError =>
      Intl.message('Invalid password or corrupted data',
          name: 'importDecryptError');

  String get importSwapJsonDecodingError =>
      Intl.message('Error decoding json file',
          name: 'importSwapJsonDecodingError');
  String get orderTypePartial =>
      Intl.message(' Order', name: 'orderTypePartial');
  String get orderTypeUnknown =>
      Intl.message('Unknown Type Order', name: 'orderTypeUnknown');
  String get couldntImportError =>
      Intl.message("Couldn't import: ", name: 'couldntImportError');
  String get importSomeItemsSkippedWarning =>
      Intl.message('Some items have been skipped',
          name: 'importSomeItemsSkippedWarning');
  String get importSwapFailed =>
      Intl.message('Failed to import swap', name: 'importSwapFailed');
  String get importInvalidSwapData => Intl.message(
      'Invalid swap data. Please provide a valid swap status JSON file.',
      name: 'importInvalidSwapData');

  String activating(String coinName) => Intl.message('Activating $coinName',
      name: 'activating', args: [coinName]);
  String get doNotCloseTheAppTapForMoreInfo =>
      Intl.message('Do not close the app. Tap for more info...',
          name: 'doNotCloseTheAppTapForMoreInfo');
  String activation(String coinName) => Intl.message('$coinName Activation',
      name: 'activation', args: [coinName]);
  String coinsAreActivated(String protocolName) =>
      Intl.message('$protocolName coins are activated',
          name: 'coinsAreActivated', args: [protocolName]);
  String coinsAreNotActivated(String protocolName) =>
      Intl.message('$protocolName coins are not activated',
          name: 'coinsAreNotActivated', args: [protocolName]);
  String coinsAreActivatedSuccessfully(String protocolName) =>
      Intl.message('$protocolName coins activated successfully',
          name: 'coinsAreActivatedSuccessfully', args: [protocolName]);
  String activationInProgress(String protocolName) =>
      Intl.message('$protocolName Activation in Progress',
          name: 'activationInProgress', args: [protocolName]);
  String activateCoins(String protocolName) =>
      Intl.message('Activate $protocolName coins?',
          name: 'activateCoins', args: [protocolName]);
  String get moreInfo => Intl.message('More Info', name: 'moreInfo');

  String get showAddress => Intl.message('Show Address', name: 'showAddress');
  String get transactionHiddenPhishing => Intl.message(
      'This transaction was hidden due to a possible phishing attempt.',
      name: 'transactionHiddenPhishing');
  String get transactionAddress =>
      Intl.message('Transaction Address', name: 'transactionAddress');
  String get transactionHidden =>
      Intl.message('Transaction Hidden', name: 'transactionHidden');
  String get couldNotLaunchUrl =>
      Intl.message('Could not launch URL', name: 'couldNotLaunchUrl');

  String get willTakeTime => Intl.message(
      'This will take a while and the app must be kept in the foreground.\nTerminating the app while activation is in progress could lead to issues.',
      name: 'willTakeTime');
  String get minimizingWillTerminate => Intl.message(
      'Warning: Minimizing the app on iOS will terminate the activation process.',
      name: 'minimizingWillTerminate');
  String get enableNotificationsForActivationProgress => Intl.message(
      'Please enable notifications to get updates on the activation progress.',
      name: 'enableNotificationsForActivationProgress');

  String get qrCodeScanner =>
      Intl.message('QR Code Scanner', name: 'qrCodeScanner');
  String get foundQrCode => Intl.message('Found QR Code', name: 'foundQrCode');
  String get contract => Intl.message('Contract', name: 'contract');
  String get startSwap => Intl.message('Start Swap', name: 'startSwap');
  String get none => Intl.message('None', name: 'none');
  String get cexRate => Intl.message('CEX Rate', name: 'cexRate');
  String incomingTransactionsProtectionSettings(String coinName) =>
      Intl.message('Incoming  $coinName txs protection settings',
          name: 'incomingTransactionsProtectionSettings', args: [coinName]);
  String showingOrders(int count, int maxCount) =>
      Intl.message('Showing $count of $maxCount orders. ',
          name: 'showingOrders', args: [count, maxCount]);
  String get orderBookLess => Intl.message('Less', name: 'orderBookLess');
  String get orderBookMore => Intl.message('More', name: 'orderBookMore');

  String basedOnCoinRatio(String coinName1, String coinName2) =>
      Intl.message('based on $coinName1/$coinName2',
          name: 'basedOnCoinRatio', args: [coinName1, coinName2]);

  String get detailedFeesSendTradingFeeTransactionFee =>
      Intl.message('send trading fee transaction fee',
          name: 'detailedFeesSendTradingFeeTransactionFee');
  String get detailedFeesTradingFee =>
      Intl.message('trading fee', name: 'detailedFeesTradingFee');
  String detailedFeesSendCoinTransactionFee(String coinName) =>
      Intl.message('send $coinName transaction fee',
          name: 'detailedFeesSendCoinTransactionFee', args: [coinName]);
  String detailedFeesReceiveCoinTransactionFee(String coinName) =>
      Intl.message('receive $coinName transaction fee',
          name: 'detailedFeesReceiveCoinTransactionFee', args: [coinName]);

  // --- Filters
  String get filtersButton => Intl.message('Filter', name: 'filtersButton');
  String get filtersStatus => Intl.message('Status', name: 'filtersStatus');
  String get filtersAll => Intl.message('All', name: 'filtersAll');
  String get filtersSuccessful =>
      Intl.message('Successful', name: 'filtersSuccessful');
  String get filtersFailed => Intl.message('Failed', name: 'filtersFailed');
  String get filtersFrom => Intl.message('From date', name: 'filtersFrom');
  String get filtersTo => Intl.message('To date', name: 'filtersTo');
  String get filtersType => Intl.message('Taker/Maker', name: 'filtersType');
  String get filtersMaker => Intl.message('Maker', name: 'filtersMaker');
  String get all => Intl.message('All', name: 'all');
  String get filtersTaker => Intl.message('Taker', name: 'filtersTaker');
  String get filtersSell => Intl.message('Sell coin', name: 'filtersSell');
  String get filtersReceive =>
      Intl.message('Receive coin', name: 'filtersReceive');
  String get filtersClearAll =>
      Intl.message('Clear all filters', name: 'filtersClearAll');

  String get uriInsufficientBalanceTitle =>
      Intl.message('Insufficient balance', name: 'uriInsufficientBalanceTitle');
  String get uriInsufficientBalanceSpan1 =>
      Intl.message('Not enough balance for scanned ',
          name: 'uriInsufficientBalanceSpan1');
  String get uriInsufficientBalanceSpan2 =>
      Intl.message(' payment request.', name: 'uriInsufficientBalanceSpan2');
  String get enablingTooManyAssetsTitle =>
      Intl.message('Trying to enable too many assets',
          name: 'enablingTooManyAssetsTitle');
  String get enablingTooManyAssetsSpan1 =>
      Intl.message('You have ', name: 'enablingTooManyAssetsSpan1');
  String get enablingTooManyAssetsSpan2 =>
      Intl.message(' assets enabled and trying to enable ',
          name: 'enablingTooManyAssetsSpan2');
  String get enablingTooManyAssetsSpan3 =>
      Intl.message(' more. Enabled assets max limit is ',
          name: 'enablingTooManyAssetsSpan3');
  String get enablingTooManyAssetsSpan4 =>
      Intl.message('. Please disable some assets before adding more.',
          name: 'enablingTooManyAssetsSpan4');
  String get coinsActivatedLimitReached =>
      Intl.message('You have selected the max number of assets',
          name: 'coinsActivatedLimitReached');

  String get tooManyAssetsEnabledTitle =>
      Intl.message('Too many assets enabled',
          name: 'tooManyAssetsEnabledTitle');
  String get tooManyAssetsEnabledSpan1 =>
      Intl.message('You have ', name: 'tooManyAssetsEnabledSpan1');
  String get tooManyAssetsEnabledSpan2 =>
      Intl.message(' assets enabled. Enabled assets max limit is ',
          name: 'tooManyAssetsEnabledSpan2');
  String get tooManyAssetsEnabledSpan3 =>
      Intl.message('. Please disable some assets before adding more.',
          name: 'tooManyAssetsEnabledSpan3');

  String get paymentUriDetailsTitle =>
      Intl.message('Payment Requested', name: 'paymentUriDetailsTitle');
  String get paymentUriDetailsCoinSpan =>
      Intl.message('Coin: ', name: 'paymentUriDetailsCoinSpan');
  String get paymentUriDetailsAddressSpan =>
      Intl.message('To Address ', name: 'paymentUriDetailsAddressSpan');
  String get paymentUriDetailsAmountSpan =>
      Intl.message('Amount: ', name: 'paymentUriDetailsAmountSpan');
  String get paymentUriDetailsAcceptQuestion =>
      Intl.message('Do you accept this transaction?',
          name: 'paymentUriDetailsAcceptQuestion');
  String get paymentUriDetailsAccept =>
      Intl.message('Pay', name: 'paymentUriDetailsAccept');
  String get paymentUriDetailsDeny =>
      Intl.message('Cancel', name: 'paymentUriDetailsDeny');
  String paymentUriInactiveCoin(String abbr) =>
      Intl.message('$abbr is not active. Please activate and try again.',
          name: 'paymentUriInactiveCoin', args: <Object>[abbr]);

  String get wrongCoinTitle =>
      Intl.message('Wrong coin', name: 'wrongCoinTitle');
  String get wrongCoinSpan1 =>
      Intl.message('You are trying to scan a payment QR code for ',
          name: 'wrongCoinSpan1');
  String get wrongCoinSpan2 =>
      Intl.message(' but you are on the ', name: 'wrongCoinSpan2');
  String get wrongCoinSpan3 =>
      Intl.message(' withdraw screen', name: 'wrongCoinSpan3');

  // --- Simple trading view
  String get simpleTradeSellTitle =>
      Intl.message('Sell', name: 'simpleTradeSellTitle');
  String get simpleTradeBuyTitle =>
      Intl.message('Buy', name: 'simpleTradeBuyTitle');
  String get simpleTradeRecieve =>
      Intl.message('Receive', name: 'simpleTradeRecieve');
  String get simpleTradeSend => Intl.message('Send', name: 'simpleTradeSend');
  String get simpleTradeClose =>
      Intl.message('Close', name: 'simpleTradeClose');
  String get simpleTradeActivate =>
      Intl.message('Activate', name: 'simpleTradeActivate');
  String simpleTradeMaxActiveCoins(int maxCoins) => Intl.message(
      'Max active coins number is $maxCoins. Please deactivate some.',
      name: 'simpleTradeMaxActiveCoins',
      args: <Object>[maxCoins]);
  String simpleTradeUnableActivate(String coin) =>
      Intl.message('Unable to activate $coin',
          name: 'simpleTradeUnableActivate', args: <Object>[coin]);
  String simpleTradeNotActive(String coin) =>
      Intl.message('$coin is not active!',
          name: 'simpleTradeNotActive', args: <Object>[coin]);
  String simpleTradeBuyHint(String coin) =>
      Intl.message('Please enter $coin amount to buy',
          name: 'simpleTradeBuyHint', args: <Object>[coin]);
  String simpleTradeSellHint(String coin) =>
      Intl.message('Please enter $coin amount to sell',
          name: 'simpleTradeSellHint', args: <Object>[coin]);
  String get simpleTradeShowLess =>
      Intl.message('Show less', name: 'simpleTradeShowLess');
  String get simpleTradeShowMore =>
      Intl.message('Show more', name: 'simpleTradeShowMore');

  String get noCoinFound => Intl.message('No coin found', name: 'noCoinFound');

  // Rebranding
  String get rebrandingAnnouncement => Intl.message(
      "It's a new era! We have officially rebranded from 'AtomicDEX' to 'Gleec Wallet'",
      name: 'rebrandingAnnouncement');

  String get officialPressRelease =>
      Intl.message('Official press release', name: 'officialPressRelease');

// --- Asyncronous coin activations (requires syncing)
  String shouldScanPastTransaction(String coin) => Intl.message(
        'Scan for past $coin transactions?',
        name: 'shouldScanPastTransaction',
        args: [coin],
      );

  String get activationCancelled =>
      Intl.message('Coin activation cancelled', name: 'activationCancelled');

  String coinActivationSuccessfull(String coin) => Intl.message(
        'Successfully activated $coin',
        name: 'coinActivationSuccessfull',
        args: [coin],
      );

  String coinActivationCancelled(String coin) => Intl.message(
        '$coin activation cancelled',
        name: 'coinActivationCancelled',
        args: [coin],
      );

  String get pleaseAcceptAllCoinActivationRequests => Intl.message(
        'Please accept all special coin activation requests or deselect the coins.',
        name: 'pleaseAcceptAllCoinActivationRequests',
      );

  String get cancelActivation =>
      Intl.message('Cancel Activation', name: 'cancelActivation');

  String get cancelActivationQuestion => Intl.message(
        'Are you sure you want to cancel activation?',
        name: 'cancelActivationQuestion',
      );

  String syncTransactionsQuestion(String name) => Intl.message(
        'Which $name transactions would you like to sync?',
        name: 'syncTransactionsQuestion',
        args: [name],
      );
  String get syncNewTransactions =>
      Intl.message('Sync new transactions', name: 'syncNewTransactions');
  String get syncFromDate =>
      Intl.message('Sync from specified date', name: 'syncFromDate');
  String get syncFromSaplingActivation => Intl.message(
        'Sync from sapling activation',
        name: 'syncFromSaplingActivation',
      );
  String get selectDate => Intl.message('Select a Date', name: 'selectDate');
  String get startDate => Intl.message('Start Date', name: 'startDate');
  String get futureTransactions => Intl.message(
        'We will sync future transactions made after activation associated with your public key. This is the quickest option and takes up the least amount of storage.',
        name: 'futureTransactions',
      );
  String get allPastTransactions => Intl.message(
        'Your wallet will show any past transactions. This will take significant storage and time as all blocks will be downloaded and scanned.',
        name: 'allPastTransactions',
      );
  String get pastTransactionsFromDate => Intl.message(
        'Your wallet will show your past transactions made after the specified date.',
        name: 'pastTransactionsFromDate',
      );
  // ---
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return <String>[
      'en',
      'fr',
      'de',
      'zh',
      'ru',
      'ja',
      'tr',
      'hu',
      'es',
      'ko',
      'uk'
    ].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return AppLocalizations.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}
