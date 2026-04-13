// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, always_declare_return_types

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<Object> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static m0(protocolName) => "Activate ${protocolName} coins?";

  static m1(coinName) => "Activating ${coinName}";

  static m2(coinName) => "${coinName} Activation";

  static m3(protocolName) => "${protocolName} Activation in Progress";

  static m4(name) => "Activated ${name} successfully !";

  static m5(title) => "Only showing contacts with ${title} addresses";

  static m6(abbr) =>
      "You can not send funds to ${abbr} address, because ${abbr} is not activated. Please go to portfolio.";

  static m7(appName) =>
      "No! ${appName} is non-custodial. We never store any sensitive data, including your private keys, seed phrases, or PIN. This data is only stored on the user’s device and never leaves it. You are in full control of your assets.";

  static m8(appName) =>
      "${appName} is available for mobile on both Android and iPhone, and for desktop on <a href=\"https://gleec.com/\">Windows, Mac, and Linux operating systems</a>.";

  static m9(appName) =>
      "Other DEXs generally only allow you to trade assets that are based on a single blockchain network, use proxy tokens, and only allow placing a single order with the same funds.\n\n${appName} enables you to natively trade across two different blockchain networks without proxy tokens. You can also place multiple orders with the same funds. For example, you can sell 0.1 BTC for KMD, QTUM, or VRSC — the first order that fills automatically cancels all other orders.";

  static m10(appName) =>
      "Several factors determine the processing time for each swap. The block time of the traded assets depends on each network (Bitcoin typically being the slowest) Additionally, the user can customize security preferences. For example, you can ask ${appName} to consider a KMD transaction as final after just 3 confirmations which makes the swap time shorter compared to waiting for a <a href=\"https://gleec.com/\">notarization</a>.";

  static m11(appName) =>
      "There are two fee categories to consider when trading on ${appName}.\n\n1. ${appName} charges approximately 0.13% (1/777 of trading volume but not lower than 0.0001) as the trading fee for taker orders, and maker orders have zero fees.\n\n2. Both makers and takers will need to pay normal network fees to the involved blockchains when making atomic swap transactions.\n\nNetwork fees can vary greatly depending on your selected trading pair.";

  static m12(name, link, appName, appCompanyShort) =>
      "Yes! ${appName} offers support through the <a href=\"${link}\">${appCompanyShort} ${name}</a>. The team and the community are always happy to help!";

  static m13(appName) =>
      "No! ${appName} is fully decentralized. It is not possible to limit user access by any third party.";

  static m14(appName, appCompanyShort) =>
      "${appName} is developed by the ${appCompanyShort} team. ${appCompanyShort} is one of the most established blockchain projects working on innovative solutions like atomic swaps, Delayed Proof of Work, and an interoperable multi-chain architecture.";

  static m15(appName) =>
      "Absolutely! You can read our <a href=\"https://gleec.com/\">developer documentation</a> for more details or contact us with your partnership inquiries. Have a specific technical question? The ${appName} developer community is always ready to help!";

  static m16(coinName1, coinName2) => "based on ${coinName1}/${coinName2}";

  static m17(batteryLevelCritical) =>
      "Your battery charge is critical (${batteryLevelCritical}%) to perform a swap safely. Please put it on charge and try again.";

  static m18(batteryLevelLow) =>
      "Your battery charge is lower than ${batteryLevelLow}%. Please consider phone charging.";

  static m19(seconde) => "Ordermatch ongoing, please wait ${seconde} seconds!";

  static m20(index) => "Enter the ${index} word";

  static m21(index) => "What is the ${index} word in your seed phrase?";

  static m22(coin) => "${coin} activation cancelled";

  static m23(coin) => "Successfully activated ${coin}";

  static m24(protocolName) => "${protocolName} coins are activated";

  static m25(protocolName) => "${protocolName} coins activated successfully";

  static m26(protocolName) => "${protocolName} coins are not activated";

  static m27(name) => "Are you sure you want to delete contact ${name}?";

  static m28(iUnderstand) =>
      "Custom seed phrases might be less secure and easier to crack than a generated BIP39 compliant seed phrase or private key (WIF). To confirm you understand the risk and know what you are doing, type \"${iUnderstand}\" in the box below.";

  static m29(coinName) => "receive ${coinName} transaction fee";

  static m30(coinName) => "send ${coinName} transaction fee";

  static m31(abbr) => "Input ${abbr} address";

  static m32(selected, remains) =>
      "You can still enable ${remains}, Selected: ${selected}";

  static m33(gas) => "Not enough gas - use at least ${gas} Gwei";

  static m34(appName, appCompanyLong) =>
      "This End-User License Agreement (\'EULA\') is a legal agreement between you and ${appCompanyLong}.\n\nThis EULA agreement governs your acquisition and use of our ${appName} mobile software (\'Software\', \'Mobile Application\', \'Application\' or \'App\') directly from ${appCompanyLong} or indirectly through a ${appCompanyLong} authorized entity, reseller or distributor (a \'Distributor\').\nPlease read this EULA agreement carefully before completing the installation process and using the ${appName} mobile software. It provides a license to use the ${appName} mobile software and contains warranty information and liability disclaimers.\nIf you register for the beta program of the ${appName} mobile software, this EULA agreement will also govern that trial. By clicking \'accept\' or installing and/or using the ${appName} mobile software, you are confirming your acceptance of the Software and agreeing to become bound by the terms of this EULA agreement.\nIf you are entering into this EULA agreement on behalf of a company or other legal entity, you represent that you have the authority to bind such entity and its affiliates to these terms and conditions. If you do not have such authority or if you do not agree with the terms and conditions of this EULA agreement, do not install or use the Software, and you must not accept this EULA agreement.\nThis EULA agreement shall apply only to the Software supplied by ${appCompanyLong} herewith regardless of whether other software is referred to or described herein. The terms also apply to any ${appCompanyLong} updates, supplements, Internet-based services, and support services for the Software, unless other terms accompany those items on delivery. If so, those terms apply.\n\nLICENSE GRANT\n\n${appCompanyLong} hereby grants you a personal, non-transferable, non-exclusive license to use the ${appName} mobile software on your devices in accordance with the terms of this EULA agreement.\n\nYou are permitted to load the ${appName} mobile software (for example a PC, laptop, mobile or tablet) under your control. You are responsible for ensuring your device meets the minimum security and resource requirements of the ${appName} mobile software.\n\nYou are not permitted to:\n(a) edit, alter, modify, adapt, translate or otherwise change the whole or any part of the Software nor permit the whole or any part of the Software to be combined with or become incorporated in any other software, nor decompile, disassemble or reverse engineer the Software or attempt to do any such things;\n(b) reproduce, copy, distribute, resell or otherwise use the Software for any commercial purpose;\n(c) use the Software in any way which breaches any applicable local, national or international law;\n(d) use the Software for any purpose that ${appCompanyLong} considers is a breach of this EULA agreement.\n\nINTELLECTUAL PROPERTY AND OWNERSHIP\n\n${appCompanyLong} shall at all times retain ownership of the Software as originally downloaded by you and all subsequent downloads of the Software by you. The Software (and the copyright, and other intellectual property rights of whatever nature in the Software, including any modifications made thereto) are and shall remain the property of ${appCompanyLong}.\n\n${appCompanyLong} reserves the right to grant licenses to use the Software to third parties.\n\nTERMINATION\n\nThis EULA agreement is effective from the date you first use the Software and shall continue until terminated. You may terminate it at any time upon written notice to ${appCompanyLong}.\nIt will also terminate immediately if you fail to comply with any term of this EULA agreement. Upon such termination, the licenses granted by this EULA agreement will immediately terminate and you agree to stop all access and use of the Software. The provisions that by their nature continue and survive will survive any termination of this EULA agreement.\n\nGOVERNING LAW\n\nThis EULA agreement, and any dispute arising out of or in connection with this EULA agreement, shall be governed by and construed in accordance with the laws of Vietnam.\n\nThis document was last updated on January 31st, 2020\n\n";

  static m35(appCompanyLong) =>
      "${appCompanyLong} is the owner and/or authorised user of all trademarks, service marks, design marks, patents, copyrights, database rights and all other intellectual property appearing on or contained within the application, unless otherwise indicated. All information, text, material, graphics, software and advertisements on the application interface are copyright of ${appCompanyLong}, its suppliers and licensors, unless otherwise expressly indicated by ${appCompanyLong}. \nExcept as provided in the Terms, use of the application does not grant You any right, title, interest or license to any such intellectual property You may have access to on the application. \nWe own the rights, or have permission to use, the trademarks listed in our application. You are not authorised to use any of those trademarks without our written authorization – doing so would constitute a breach of our or another party’s intellectual property rights. \nAlternatively, we might authorise You to use the content in our application if You previously contact us and we agree in writing.\n\n";

  static m36(appCompanyShort, appCompanyLong) =>
      "${appCompanyLong} cannot guarantee the safety or security of your computer systems. We do not accept liability for any loss or corruption of electronically stored data or any damage to any computer system occurred in connection with the use of the application or of the user content.\n${appCompanyLong} makes no representation or warranty of any kind, express or implied, as to the operation of the application or the user content. You expressly agree that your use of the application is entirely at your sole risk.\nYou agree that the content provided in the application and the user content do not constitute financial product, legal or taxation advice, and You agree on not representing the user content or the application as such.\nTo the extent permitted by current legislation, the application is provided on an “as is, as available” basis.\n\n${appCompanyLong} expressly disclaims all responsibility for any loss, injury, claim, liability, or damage, or any indirect, incidental, special or consequential damages or loss of profits whatsoever resulting from, arising out of or in any way related to: \n(a) any errors in or omissions of the application and/or the user content, including but not limited to technical inaccuracies and typographical errors; \n(b) any third party website, application or content directly or indirectly accessed through links in the application, including but not limited to any errors or omissions; \n(c) the unavailability of the application or any portion of it; \n(d) your use of the application;\n(e) your use of any equipment or software in connection with the application. \n\nAny Services offered in connection with the Platform are provided on an \'as is\' basis, without any representation or warranty, whether express, implied or statutory. To the maximum extent permitted by applicable law, we specifically disclaim any implied warranties of title, merchantability, suitability for a particular purpose and/or non-infringement. We do not make any representations or warranties that use of the Platform will be continuous, uninterrupted, timely, or error-free.\nWe make no warranty that any Platform will be free from viruses, malware, or other related harmful material and that your ability to access any Platform will be uninterrupted. Any defects or malfunction in the product should be directed to the third party offering the Platform, not to ${appCompanyShort}. \nWe will not be responsible or liable to You for any loss of any kind, from action taken, or taken in reliance on the material or information contained in or through the Platform.\nThis is experimental and unfinished software. Use at your own risk. No warranty for any kind of damage. By using this application you agree to this terms and conditions.\n\n";

  static m37(appCompanyLong) =>
      "You agree and understand that there are risks associated with utilizing Services involving Virtual Currencies including, but not limited to, the risk of failure of hardware, software and internet connections, the risk of malicious software introduction, and the risk that third parties may obtain unauthorized access to information stored within your Wallet, including but not limited to your public and private keys. You agree and understand that ${appCompanyLong} will not be responsible for any communication failures, disruptions, errors, distortions or delays You may experience when using the Services, however caused.\nYou accept and acknowledge that there are risks associated with utilizing any virtual currency network, including, but not limited to, the risk of unknown vulnerabilities in or unanticipated changes to the network protocol. You acknowledge and accept that ${appCompanyLong} has no control over any cryptocurrency network and will not be responsible for any harm occurring as a result of such risks, including, but not limited to, the inability to reverse a transaction, and any losses in connection therewith due to erroneous or fraudulent actions.\nThe risk of loss in using Services involving Virtual Currencies may be substantial and losses may occur over a short period of time. In addition, price and liquidity are subject to significant fluctuations that may be unpredictable.\nVirtual Currencies are not legal tender and are not backed by any sovereign government. In addition, the legislative and regulatory landscape around Virtual Currencies is constantly changing and may affect your ability to use, transfer, or exchange Virtual Currencies.\nCFDs are complex instruments and come with a high risk of losing money rapidly due to leverage. 80.6% of retail investor accounts lose money when trading CFDs with this provider. You should consider whether You understand how CFDs work and whether You can afford to take the high risk of losing your money.\n\n";

  static m38(appCompanyLong) =>
      "You agree to indemnify, defend and hold harmless ${appCompanyLong}, its officers, directors, employees, agents, licensors, suppliers and any third party information providers to the application from and against all losses, expenses, damages and costs, including reasonable lawyer fees, resulting from any violation of the Terms by You.\nYou also agree to indemnify ${appCompanyLong} against any claims that information or material which You have submitted to ${appCompanyLong} is in violation of any law or in breach of any third party rights (including, but not limited to, claims in respect of defamation, invasion of privacy, breach of confidence, infringement of copyright or infringement of any other intellectual property right).\n\n";

  static m39(appCompanyLong) =>
      "In order to be completed, any Virtual Currency transaction created with the ${appCompanyLong} must be confirmed and recorded in the Virtual Currency ledger associated with the relevant Virtual Currency network. Such networks are decentralized, peer-to-peer networks supported by independent third parties, which are not owned, controlled or operated by ${appCompanyLong}.\n${appCompanyLong} has no control over any Virtual Currency network and therefore cannot and does not ensure that any transaction details You submit via our Services will be confirmed on the relevant Virtual Currency network. You agree and understand that the transaction details You submit via our Services may not be completed, or may be substantially delayed, by the Virtual Currency network used to process the transaction. We do not guarantee that the Wallet can transfer title or right in any Virtual Currency or make any warranties whatsoever with regard to title.\nOnce transaction details have been submitted to a Virtual Currency network, we cannot assist You to cancel or otherwise modify your transaction or transaction details. ${appCompanyLong} has no control over any Virtual Currency network and does not have the ability to facilitate any cancellation or modification requests.\nIn the event of a Fork, ${appCompanyLong} may not be able to support activity related to your Virtual Currency. You agree and understand that, in the event of a Fork, the transactions may not be completed, completed partially, incorrectly completed, or substantially delayed. ${appCompanyLong} is not responsible for any loss incurred by You caused in whole or in part, directly or indirectly, by a Fork.\nIn no event shall ${appCompanyLong}, its affiliates and service providers, or any of their respective officers, directors, agents, employees or representatives, be liable for any lost profits or any special, incidental, indirect, intangible, or consequential damages, whether based on contract, tort, negligence, strict liability, or otherwise, arising out of or in connection with authorized or unauthorized use of the services, or this agreement, even if an authorized representative of ${appCompanyLong} has been advised of, has known of, or should have known of the possibility of such damages. \nFor example (and without limiting the scope of the preceding sentence), You may not recover for lost profits, lost business opportunities, or other types of special, incidental, indirect, intangible, or consequential damages. Some jurisdictions do not allow the exclusion or limitation of incidental or consequential damages, so the above limitation may not apply to You. \nWe will not be responsible or liable to You for any loss and take no responsibility for damages or claims arising in whole or in part, directly or indirectly from: \n(a) user error such as forgotten passwords, incorrectly constructed transactions, or mistyped Virtual Currency addresses; \n(b) server failure or data loss; \n(c) corrupted or otherwise non-performing Wallets or Wallet files; \n(d) unauthorized access to applications; \n(e) any unauthorized activities, including without limitation the use of hacking, viruses, phishing, brute forcing or other means of attack against the Services.\n\n";

  static m40(appCompanyShort, appCompanyLong) =>
      "For the avoidance of doubt, ${appCompanyLong} does not provide investment, tax or legal advice, nor does ${appCompanyLong} broker trades on your behalf. All ${appCompanyLong} trades are executed automatically, based on the parameters of your order instructions and in accordance with posted Trade execution procedures, and You are solely responsible for determining whether any investment, investment strategy or related transaction is appropriate for You based on your personal investment objectives, financial circumstances and risk tolerance. You should consult your legal or tax professional regarding your specific situation. Neither ${appCompanyShort} nor its owners, members, officers, directors, partners, consultants, nor anyone involved in the publication of this application, is a registered investment adviser or broker-dealer or associated person with a registered investment adviser or broker-dealer and none of the foregoing make any recommendation that the purchase or sale of crypto-assets or securities of any company profiled in the mobile Application is suitable or advisable for any person or that an investment or transaction in such crypto-assets or securities will be profitable. The information contained in the mobile Application is not intended to be, and shall not constitute, an offer to sell or the solicitation of any offer to buy any crypto-asset or security. The information presented in the mobile Application is provided for informational purposes only and is not to be treated as advice or a recommendation to make any specific investment or transaction. Please, consult with a qualified professional before making any decisions. The opinions and analysis included in this applications are based on information from sources deemed to be reliable and are provided “as is” in good faith. ${appCompanyShort} makes no representation or warranty, expressed, implied, or statutory, as to the accuracy or completeness of such information, which may be subject to change without notice. ${appCompanyShort} shall not be liable for any errors or any actions taken in relation to the above. Statements of opinion and belief are those of the authors and/or editors who contribute to this application, and are based solely upon the information possessed by such authors and/or editors. No inference should be drawn that ${appCompanyShort} or such authors or editors have any special or greater knowledge about the crypto-assets or companies profiled or any particular expertise in the industries or markets in which the profiled crypto-assets and companies operate and compete. Information on this application is obtained from sources deemed to be reliable; however, ${appCompanyShort} takes no responsibility for verifying the accuracy of such information and makes no representation that such information is accurate or complete. Certain statements included in this application may be forward-looking statements based on current expectations. ${appCompanyShort} makes no representation and provides no assurance or guarantee that such forward-looking statements will prove to be accurate. Persons using the ${appCompanyShort} application are urged to consult with a qualified professional with respect to an investment or transaction in any crypto-asset or company profiled herein. Additionally, persons using this application expressly represent that the content in this application is not and will not be a consideration in such persons’ investment or transaction decisions. Traders should verify independently information provided in the ${appCompanyShort} application by completing their own due diligence on any crypto-asset or company in which they are contemplating an investment or transaction of any kind and review a complete information package on that crypto-asset or company, which should include, but not be limited to, related blog updates and press releases. Past performance of profiled crypto-assets and securities is not indicative of future results. Crypto-assets and companies profiled on this site may lack an active trading market and invest in a crypto-asset or security that lacks an active trading market or trade on certain media, platforms and markets are deemed highly speculative and carry a high degree of risk. Anyone holding such crypto-assets and securities should be financially able and prepared to bear the risk of loss and the actual loss of his or her entire trade. The information in this application is not designed to be used as a basis for an investment decision. Persons using the ${appCompanyShort} application should confirm to their own satisfaction the veracity of any information prior to entering into any investment or making any transaction. The decision to buy or sell any crypto-asset or security that may be featured by ${appCompanyShort} is done purely and entirely at the reader’s own risk. As a reader and user of this application, You agree that under no circumstances will You seek to hold liable owners, members, officers, directors, partners, consultants or other persons involved in the publication of this application for any losses incurred by the use of information contained in this application ${appCompanyShort} and its contractors and affiliates may profit in the event the crypto-assets and securities increase or decrease in value. Such crypto-assets and securities may be bought or sold from time to time, even after ${appCompanyShort} has distributed positive information regarding the crypto-assets and companies. ${appCompanyShort} has no obligation to inform readers of its trading activities or the trading activities of any of its owners, members, officers, directors, contractors and affiliates and/or any companies affiliated with BC Relations’ owners, members, officers, directors, contractors and affiliates. ${appCompanyShort} and its affiliates may from time to time enter into agreements to purchase crypto-assets or securities to provide a method to reach their goals.\n\n";

  static m41(appCompanyLong) =>
      "The Terms are effective until terminated by ${appCompanyLong}. \nIn the event of termination, You are no longer authorized to access the Application, but all restrictions imposed on You and the disclaimers and limitations of liability set out in the Terms will survive termination. \nSuch termination shall not affect any legal right that may have accrued to ${appCompanyLong} against You up to the date of termination. \n${appCompanyLong} may also remove the Application as a whole or any sections or features of the Application at any time. \n\n";

  static m42(appCompanyLong) =>
      "The provisions of previous paragraphs are for the benefit of ${appCompanyLong} and its officers, directors, employees, agents, licensors, suppliers, and any third party information providers to the Application. Each of these individuals or entities shall have the right to assert and enforce those provisions directly against You on its own behalf.\n\n";

  static m43(appName, appCompanyLong) =>
      "${appName} mobile is a non-custodial, decentralized and blockchain based application and as such does ${appCompanyLong} never store any user-data (accounts and authentication data). \nWe also collect and process non-personal, anonymized data for statistical purposes and analysis and to help us provide a better service.\n\nThis document was last updated on January 31st, 2020\n\n";

  static m44(appName, appCompanyLong) =>
      "This disclaimer applies to the contents and services of the app ${appName} and is valid for all users of the “Application” (\'Software\', “Mobile Application”, “Application” or “App”).\n\nThe Application is owned by ${appCompanyLong}.\n\nWe reserve the right to amend the following Terms and Conditions (governing the use of the application “${appName} mobile”) at any time without prior notice and at our sole discretion. It is your responsibility to periodically check this Terms and Conditions for any updates to these Terms, which shall come into force once published.\nYour continued use of the application shall be deemed as acceptance of the following Terms. \nWe are a company incorporated in Vietnam and these Terms and Conditions are governed by and subject to the laws of Vietnam. \nIf You do not agree with these Terms and Conditions, You must not use or access this software.\n\n";

  static m45(appName) =>
      "You are not allowed to decompile, decode, disassemble, rent, lease, loan, sell, sublicense, or create derivative works from the ${appName} mobile application or the user content. Nor are You allowed to use any network monitoring or detection software to determine the software architecture, or extract information about usage or individuals’ or users’ identities. \nYou are not allowed to copy, modify, reproduce, republish, distribute, display, or transmit for commercial, non-profit or public purposes all or any portion of the application or the user content without our prior written authorization.\n\n";

  static m46(appName, appCompanyLong) =>
      "If you create an account in the Mobile Application, you are responsible for maintaining the security of your account and you are fully responsible for all activities that occur under the account and any other actions taken in connection with it. We will not be liable for any acts or omissions by you, including any damages of any kind incurred as a result of such acts or omissions. \n\n${appName} mobile is a non-custodial wallet implementation and thus ${appCompanyLong} can not access nor restore your account in case of (data) loss.\n\n";

  static m47(appName) =>
      "End-User License Agreement (EULA) of ${appName} mobile";

  static m48(coinAbbr) => "Failed to cancel activation of ${coinAbbr}";

  static m49(coin) => "Sending request to ${coin} faucet...";

  static m50(appCompanyShort) => "${appCompanyShort} news";

  static m51(value) => "Fees must be up to ${value}";

  static m52(coin) => "${coin} fee";

  static m53(coin) => "Please activate ${coin}.";

  static m54(value) => "Gwei must be up to ${value}";

  static m55(coinName) => "Incoming  ${coinName} txs protection settings";

  static m56(abbr) => "${abbr} balance not sufficient to pay trading fee";

  static m57(coin) => "Invalid ${coin} address";

  static m58(coinAbbr) => "${coinAbbr} is unavailable :(";

  static m59(coinName) =>
      "❗Caution! Market for ${coinName} has less than \$10k 24h trading-volume!";

  static m60(value) => "Limit must be up to ${value}";

  static m61(coinName, number) =>
      "The minimum amount to sell is ${number} ${coinName}";

  static m62(coinName, number) =>
      "The minimum amount to buy is ${number} ${coinName}";

  static m63(buyCoin, buyAmount, sellCoin, sellAmount) =>
      "Order minimum amount is ${buyAmount} ${buyCoin}\n(${sellAmount} ${sellCoin})";

  static m64(coinName, number) =>
      "The minimum amount to sell is ${number} ${coinName}";

  static m65(minValue, coin) => "Must be greater than ${minValue} ${coin}";

  static m66(appName) =>
      "Please note that now you\'re using cellular data and participation in ${appName} P2P network consume internet traffic. It\'s better to use a WiFi network if your cellular data plan is costly.";

  static m67(coin) => "Activate ${coin} and top-up balance first";

  static m68(number) => "Create ${number} Order(s):";

  static m69(coin) => "${coin} balance is too low";

  static m70(coin, fee) =>
      "Not enough ${coin} to pay fees. MIN balance is ${fee} ${coin}";

  static m71(coinName) => "Please enter the ${coinName} amount.";

  static m72(coin) => "Not enough ${coin} for transaction!";

  static m73(sell, buy) => "${sell}/${buy} swap was completed successfully";

  static m74(sell, buy) => "${sell}/${buy} swap failed";

  static m75(sell, buy) => "${sell}/${buy} swap started";

  static m76(sell, buy) => "${sell}/${buy} swap was timed out";

  static m77(coin) => "You have received ${coin} transaction!";

  static m78(assets) => "${assets} Assets";

  static m79(coin) => "All ${coin} orders will be canceled.";

  static m80(delta) => "Expedient: CEX +${delta}%";

  static m81(delta) => "Expensive: CEX ${delta}%";

  static m82(fill) => "${fill}% filled";

  static m83(coin) => "Amt. (${coin})";

  static m84(coin) => "Price (${coin})";

  static m85(coin) => "Total (${coin})";

  static m86(abbr) => "${abbr} is not active. Please activate and try again.";

  static m87(appName) => "Which devices can I use ${appName} on?";

  static m88(appName) =>
      "How is trading on ${appName} different from trading on other DEXs?";

  static m89(appName) => "How are the fees on ${appName} calculated?";

  static m90(appName) => "Who is behind ${appName}?";

  static m91(appName) =>
      "Is it possible to develop my own white-label exchange on ${appName}?";

  static m92(amount) => "Success! ${amount} KMD received.";

  static m93(dd) => "${dd} day(s)";

  static m94(hh, minutes) => "${hh}h ${minutes}m";

  static m95(mm) => "${mm}min";

  static m96(amount) => "Click to see ${amount} orders";

  static m97(coinName, address) => "My ${coinName} address: \n${address}";

  static m98(coin) => "Scan for past ${coin} transactions?";

  static m99(count, maxCount) => "Showing ${count} of ${maxCount} orders. ";

  static m100(coin) => "Please enter ${coin} amount to buy";

  static m101(maxCoins) =>
      "Max active coins number is ${maxCoins}. Please deactivate some.";

  static m102(coin) => "${coin} is not active!";

  static m103(coin) => "Please enter ${coin} amount to sell";

  static m104(coin) => "Unable to activate ${coin}";

  static m105(description) =>
      "Pick an mp3 or wav file please. We\'ll play it when ${description}.";

  static m106(description) => "Played when ${description}";

  static m107(appName) =>
      "If you have any questions, or think you\'ve found a technical problem with the ${appName} app, you can report it and get support from our team.";

  static m108(coin) => "Please activate ${coin} and top-up balance first";

  static m109(coin) =>
      "${coin} balance not sufficient to pay transaction fees.";

  static m110(coin, amount) =>
      "${coin} balance not sufficient to pay transaction fees. ${coin} ${amount} required.";

  static m111(name) => "Which ${name} transactions would you like to sync?";

  static m112(left) => "Transactions Left: ${left}";

  static m113(amnt, hash) =>
      "Successfully unlocked ${amnt} funds - TX: ${hash}";

  static m114(version) => "You are using version ${version}";

  static m115(version) => "Version ${version} available. Please update.";

  static m116(appName) => "${appName} update";

  static m117(coinAbbr) => "We failed to activate ${coinAbbr}";

  static m118(coinAbbr) =>
      "We failed to activate ${coinAbbr}.\nPlease restart the app to try again.";

  static m119(appName) =>
      "${appName} mobile is a next generation multi-coin wallet with native third generation DEX functionality and more.";

  static m120(appName) =>
      "You have previously denied ${appName} access to the camera.\nPlease manually change camera permission in your phone settings to proceed with the QR code scan.";

  static m121(amount, coinName) => "WITHDRAW ${amount} ${coinName}";

  static m122(amount, coin) => "You will receive ${amount} ${coin}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "Active": MessageLookupByLibrary.simpleMessage("Active"),
        "Applause": MessageLookupByLibrary.simpleMessage("Applause"),
        "Can\'t play that":
            MessageLookupByLibrary.simpleMessage("Can\'t play that"),
        "Failed": MessageLookupByLibrary.simpleMessage("Failed"),
        "Maker": MessageLookupByLibrary.simpleMessage("Maker"),
        "Optional": MessageLookupByLibrary.simpleMessage("Optional"),
        "Play at full volume":
            MessageLookupByLibrary.simpleMessage("Play at full volume"),
        "Sound": MessageLookupByLibrary.simpleMessage("Sound"),
        "Taker": MessageLookupByLibrary.simpleMessage("Taker"),
        "a swap fails": MessageLookupByLibrary.simpleMessage("a swap fails"),
        "a swap runs to completion":
            MessageLookupByLibrary.simpleMessage("a swap runs to completion"),
        "accepteula": MessageLookupByLibrary.simpleMessage("Accept EULA"),
        "accepttac":
            MessageLookupByLibrary.simpleMessage("Accept TERMS and CONDITIONS"),
        "activateAccessBiometric": MessageLookupByLibrary.simpleMessage(
            "Activate Biometric protection"),
        "activateAccessPin":
            MessageLookupByLibrary.simpleMessage("Activate PIN protection"),
        "activateCoins": m0,
        "activating": m1,
        "activation": m2,
        "activationCancelled":
            MessageLookupByLibrary.simpleMessage("Coin activation cancelled"),
        "activationInProgress": m3,
        "addCoin": MessageLookupByLibrary.simpleMessage("Add Coin"),
        "addingCoinSuccess": m4,
        "addressAdd": MessageLookupByLibrary.simpleMessage("Add Address"),
        "addressBook": MessageLookupByLibrary.simpleMessage("Address book"),
        "addressBookEmpty":
            MessageLookupByLibrary.simpleMessage("Address book is empty"),
        "addressBookFilter": m5,
        "addressBookTitle":
            MessageLookupByLibrary.simpleMessage("Address Book"),
        "addressCoinInactive": m6,
        "addressNotFound":
            MessageLookupByLibrary.simpleMessage("Nothing found"),
        "addressSelectCoin":
            MessageLookupByLibrary.simpleMessage("Select Coin"),
        "addressSend":
            MessageLookupByLibrary.simpleMessage("Recipients address"),
        "advanced": MessageLookupByLibrary.simpleMessage("Advanced"),
        "all": MessageLookupByLibrary.simpleMessage("All"),
        "allPastTransactions": MessageLookupByLibrary.simpleMessage(
            "Your wallet will show any past transactions. This will take significant storage and time as all blocks will be downloaded and scanned."),
        "allowCustomSeed":
            MessageLookupByLibrary.simpleMessage("Allow custom seed"),
        "alreadyExists": MessageLookupByLibrary.simpleMessage("Already exists"),
        "amount": MessageLookupByLibrary.simpleMessage("Amount"),
        "amountToSell": MessageLookupByLibrary.simpleMessage("Amount To Sell"),
        "answer_1": m7,
        "answer_10": m8,
        "answer_2": m9,
        "answer_3": m10,
        "answer_4": MessageLookupByLibrary.simpleMessage(
            "Yes. You must remain connected to the internet and have your app running to successfully complete each atomic swap (very short breaks in connectivity are usually fine). Otherwise, there is risk of trade cancellation if you are a maker, and risk of loss of funds if you are a taker. The atomic swap protocol requires both participants to stay online and monitor the involved blockchains for the process to stay atomic."),
        "answer_5": m11,
        "answer_6": m12,
        "answer_7": m13,
        "answer_8": m14,
        "answer_9": m15,
        "areYouSure": MessageLookupByLibrary.simpleMessage("ARE YOU SURE?"),
        "authenticate": MessageLookupByLibrary.simpleMessage("authenticate"),
        "automaticRedirected": MessageLookupByLibrary.simpleMessage(
            "You will be automatically redirected to portfolio page when the retry activation process completes."),
        "availableVolume": MessageLookupByLibrary.simpleMessage("max vol"),
        "back": MessageLookupByLibrary.simpleMessage("back"),
        "backupTitle": MessageLookupByLibrary.simpleMessage("Backup"),
        "basedOnCoinRatio": m16,
        "batteryCriticalError": m17,
        "batteryLowWarning": m18,
        "batterySavingWarning": MessageLookupByLibrary.simpleMessage(
            "Your phone is in battery saving mode. Please disable this mode or do NOT put the application to the background, otherwise, the app might be killed by OS and swap failed."),
        "bestAvailableRate":
            MessageLookupByLibrary.simpleMessage("Exchange rate"),
        "builtKomodo": MessageLookupByLibrary.simpleMessage("Built on Gleec"),
        "builtOnKmd": MessageLookupByLibrary.simpleMessage("Built on Gleec"),
        "buy": MessageLookupByLibrary.simpleMessage("Buy"),
        "buyOrderType": MessageLookupByLibrary.simpleMessage(
            "Convert to Maker if not matched"),
        "buySuccessWaiting":
            MessageLookupByLibrary.simpleMessage("Swap issued, please wait!"),
        "buySuccessWaitingError": m19,
        "buyTestCoinWarning": MessageLookupByLibrary.simpleMessage(
            "Warning, you\'re willing to buy test coins WITHOUT real value!"),
        "camoPinBioProtectionConflict": MessageLookupByLibrary.simpleMessage(
            "Camouflage PIN and Bio protection can\'t be enabled at the same time."),
        "camoPinBioProtectionConflictTitle":
            MessageLookupByLibrary.simpleMessage(
                "Camo PIN and Bio protection conflict."),
        "camoPinChange":
            MessageLookupByLibrary.simpleMessage("Change Camouflage PIN"),
        "camoPinCreate":
            MessageLookupByLibrary.simpleMessage("Create Camouflage PIN"),
        "camoPinDesc": MessageLookupByLibrary.simpleMessage(
            "If You\'ll unlock the app with the Camouflage PIN, a fake LOW balance will be shown and the Camouflage PIN config option will NOT be visible in the settings"),
        "camoPinInvalid":
            MessageLookupByLibrary.simpleMessage("Invalid Camouflage PIN"),
        "camoPinLink": MessageLookupByLibrary.simpleMessage("Camouflage PIN"),
        "camoPinNotFound":
            MessageLookupByLibrary.simpleMessage("Camouflage PIN not found"),
        "camoPinOff": MessageLookupByLibrary.simpleMessage("Off"),
        "camoPinOn": MessageLookupByLibrary.simpleMessage("On"),
        "camoPinSaved":
            MessageLookupByLibrary.simpleMessage("Camouflage PIN saved"),
        "camoPinTitle": MessageLookupByLibrary.simpleMessage("Camouflage PIN"),
        "camoSetupSubtitle":
            MessageLookupByLibrary.simpleMessage("Enter new Camouflage PIN"),
        "camoSetupTitle":
            MessageLookupByLibrary.simpleMessage("Camouflage PIN Setup"),
        "camouflageSetup":
            MessageLookupByLibrary.simpleMessage("Camouflage PIN Setup"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cancelActivation":
            MessageLookupByLibrary.simpleMessage("Cancel Activation"),
        "cancelActivationQuestion": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to cancel activation?"),
        "cancelButton": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cancelOrder": MessageLookupByLibrary.simpleMessage("Cancel Order"),
        "candleChartError": MessageLookupByLibrary.simpleMessage(
            "Something went wrong. Try again later."),
        "cantDeleteDefaultCoinOk": MessageLookupByLibrary.simpleMessage("Ok"),
        "cantDeleteDefaultCoinSpan": MessageLookupByLibrary.simpleMessage(
            " is a default coin. Default coins can\'t be disabled."),
        "cantDeleteDefaultCoinTitle":
            MessageLookupByLibrary.simpleMessage("Can\'t disable "),
        "cex": MessageLookupByLibrary.simpleMessage("CEX"),
        "cexChangeRate": MessageLookupByLibrary.simpleMessage("CEXchange rate"),
        "cexData": MessageLookupByLibrary.simpleMessage("CEX data"),
        "cexDataDesc": MessageLookupByLibrary.simpleMessage(
            "Markets data (prices, charts, etc.) marked with this icon originates from third party sources (<a href=\"https://www.coingecko.com/\">coingecko.com</a>, <a href=\"https://openrates.io/\">openrates.io</a>)."),
        "cexRate": MessageLookupByLibrary.simpleMessage("CEX Rate"),
        "changePin": MessageLookupByLibrary.simpleMessage("Change PIN code"),
        "checkForUpdates":
            MessageLookupByLibrary.simpleMessage("Check for updates"),
        "checkOut": MessageLookupByLibrary.simpleMessage("Check Out"),
        "checkSeedPhrase":
            MessageLookupByLibrary.simpleMessage("Check seed phrase"),
        "checkSeedPhraseButton1":
            MessageLookupByLibrary.simpleMessage("CONTINUE"),
        "checkSeedPhraseButton2":
            MessageLookupByLibrary.simpleMessage("GO BACK AND CHECK AGAIN"),
        "checkSeedPhraseHint": m20,
        "checkSeedPhraseInfo": MessageLookupByLibrary.simpleMessage(
            "Your seed phrase is important - that\'s why we like to make sure it\'s correct. We\'ll ask you three different questions about your seed phrase to make sure you\'ll be able to easily restore your wallet whenever you want."),
        "checkSeedPhraseSubtile": m21,
        "checkSeedPhraseTitle": MessageLookupByLibrary.simpleMessage(
            "LET\'S DOUBLE CHECK YOUR SEED PHRASE"),
        "chineseLanguage": MessageLookupByLibrary.simpleMessage("Chinese"),
        "claim": MessageLookupByLibrary.simpleMessage("claim"),
        "claimTitle":
            MessageLookupByLibrary.simpleMessage("Claim your KMD reward?"),
        "clickToSee": MessageLookupByLibrary.simpleMessage("Click to see "),
        "clipboard":
            MessageLookupByLibrary.simpleMessage("Copied to the clipboard"),
        "clipboardCopy":
            MessageLookupByLibrary.simpleMessage("Copy to clipboard"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "closeMessage":
            MessageLookupByLibrary.simpleMessage("Close Error Message"),
        "closePreview": MessageLookupByLibrary.simpleMessage("Close preview"),
        "code": MessageLookupByLibrary.simpleMessage("Code: "),
        "cofirmCancelActivation": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to cancel activation?"),
        "coinActivationCancelled": m22,
        "coinActivationSuccessfull": m23,
        "coinSelectClear": MessageLookupByLibrary.simpleMessage("Clear"),
        "coinSelectNotFound":
            MessageLookupByLibrary.simpleMessage("No active coins"),
        "coinSelectTitle": MessageLookupByLibrary.simpleMessage("Select Coin"),
        "coinsActivatedLimitReached": MessageLookupByLibrary.simpleMessage(
            "You have selected the max number of assets"),
        "coinsAreActivated": m24,
        "coinsAreActivatedSuccessfully": m25,
        "coinsAreNotActivated": m26,
        "comingSoon": MessageLookupByLibrary.simpleMessage("Coming soon..."),
        "commingsoon":
            MessageLookupByLibrary.simpleMessage("TX details coming soon!"),
        "commingsoonGeneral":
            MessageLookupByLibrary.simpleMessage("Details coming soon!"),
        "commissionFee": MessageLookupByLibrary.simpleMessage("commission fee"),
        "comparedTo24hrCex": MessageLookupByLibrary.simpleMessage(
            "compared to avg. 24h CEX price"),
        "comparedToCex":
            MessageLookupByLibrary.simpleMessage("compared to CEX"),
        "configureWallet": MessageLookupByLibrary.simpleMessage(
            "Configuring your wallet, please wait..."),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmCamouflageSetup":
            MessageLookupByLibrary.simpleMessage("Confirm Camouflage PIN"),
        "confirmCancel": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to cancel the order"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "confirmPin": MessageLookupByLibrary.simpleMessage("Confirm PIN code"),
        "confirmSeed":
            MessageLookupByLibrary.simpleMessage("Confirm Seed Phrase"),
        "confirmeula": MessageLookupByLibrary.simpleMessage(
            "By clicking the button below, you confirm to have read and accept the \'EULA\' and \'Terms and Conditions\'."),
        "connecting": MessageLookupByLibrary.simpleMessage("Connecting..."),
        "contactCancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "contactDelete": MessageLookupByLibrary.simpleMessage("Delete Contact"),
        "contactDeleteBtn": MessageLookupByLibrary.simpleMessage("Delete"),
        "contactDeleteWarning": m27,
        "contactDiscardBtn": MessageLookupByLibrary.simpleMessage("Discard"),
        "contactEdit": MessageLookupByLibrary.simpleMessage("Edit"),
        "contactExit": MessageLookupByLibrary.simpleMessage("Exit"),
        "contactExitWarning":
            MessageLookupByLibrary.simpleMessage("Discard your changes?"),
        "contactNotFound":
            MessageLookupByLibrary.simpleMessage("No contacts found"),
        "contactSave": MessageLookupByLibrary.simpleMessage("Save"),
        "contactTitle": MessageLookupByLibrary.simpleMessage("Contact details"),
        "contactTitleName": MessageLookupByLibrary.simpleMessage("Name"),
        "contract": MessageLookupByLibrary.simpleMessage("Contract"),
        "convert": MessageLookupByLibrary.simpleMessage("Convert"),
        "couldNotLaunchUrl":
            MessageLookupByLibrary.simpleMessage("Could not launch URL"),
        "couldntImportError":
            MessageLookupByLibrary.simpleMessage("Couldn\'t import: "),
        "create": MessageLookupByLibrary.simpleMessage("trade"),
        "createAWallet":
            MessageLookupByLibrary.simpleMessage("CREATE A WALLET"),
        "createContact": MessageLookupByLibrary.simpleMessage("Create Contact"),
        "createPin": MessageLookupByLibrary.simpleMessage("Create PIN"),
        "currency": MessageLookupByLibrary.simpleMessage("Currency"),
        "currencyDialogTitle": MessageLookupByLibrary.simpleMessage("Currency"),
        "currentValue": MessageLookupByLibrary.simpleMessage("Current value:"),
        "customFee": MessageLookupByLibrary.simpleMessage("Custom fee"),
        "customFeeWarning": MessageLookupByLibrary.simpleMessage(
            "Only use custom fees if you know what you are doing!"),
        "customSeedWarning": m28,
        "dPow": MessageLookupByLibrary.simpleMessage("Gleec dPoW security"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "decryptingWallet":
            MessageLookupByLibrary.simpleMessage("Decrypting wallet"),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "deleteConfirm":
            MessageLookupByLibrary.simpleMessage("Confirm deactivation"),
        "deleteSpan1":
            MessageLookupByLibrary.simpleMessage("Do you want to remove "),
        "deleteSpan2": MessageLookupByLibrary.simpleMessage(
            " from your portfolio? All unmatched orders will be canceled. "),
        "deleteSpan3":
            MessageLookupByLibrary.simpleMessage(" will also be deactivated"),
        "deleteWallet": MessageLookupByLibrary.simpleMessage("Delete Wallet"),
        "deletingWallet":
            MessageLookupByLibrary.simpleMessage("Deleting wallet..."),
        "detailedFeesReceiveCoinTransactionFee": m29,
        "detailedFeesSendCoinTransactionFee": m30,
        "detailedFeesSendTradingFeeTransactionFee":
            MessageLookupByLibrary.simpleMessage(
                "send trading fee transaction fee"),
        "detailedFeesTradingFee":
            MessageLookupByLibrary.simpleMessage("trading fee"),
        "details": MessageLookupByLibrary.simpleMessage("details"),
        "deutscheLanguage": MessageLookupByLibrary.simpleMessage("Deutsch"),
        "developerTitle": MessageLookupByLibrary.simpleMessage("Developer"),
        "dex": MessageLookupByLibrary.simpleMessage("DEX"),
        "dexIsNotAvailable": MessageLookupByLibrary.simpleMessage(
            "DEX is not available for this coin"),
        "disableScreenshots":
            MessageLookupByLibrary.simpleMessage("Disable Screenshots/Preview"),
        "disclaimerAndTos":
            MessageLookupByLibrary.simpleMessage("Disclaimer & ToS"),
        "doNotCloseTheAppTapForMoreInfo": MessageLookupByLibrary.simpleMessage(
            "Do not close the app. Tap for more info..."),
        "done": MessageLookupByLibrary.simpleMessage("Done"),
        "dontAskAgain": MessageLookupByLibrary.simpleMessage("Don’t ask again"),
        "dontWantPassword":
            MessageLookupByLibrary.simpleMessage("I don\'t want a password"),
        "duration": MessageLookupByLibrary.simpleMessage("Duration"),
        "editContact": MessageLookupByLibrary.simpleMessage("Edit Contact"),
        "emptyCoin": m31,
        "emptyExportPass": MessageLookupByLibrary.simpleMessage(
            "Encryption password can\'t be empty"),
        "emptyImportPass":
            MessageLookupByLibrary.simpleMessage("Password can\'t be empty"),
        "emptyName": MessageLookupByLibrary.simpleMessage(
            "Contact name cannot be empty"),
        "emptyWallet": MessageLookupByLibrary.simpleMessage(
            "Wallet name must not be empty"),
        "enable": m32,
        "enableNotificationsForActivationProgress":
            MessageLookupByLibrary.simpleMessage(
                "Please enable notifications to get updates on the activation progress."),
        "enableTestCoins":
            MessageLookupByLibrary.simpleMessage("Enable Test Coins"),
        "enablingTooManyAssetsSpan1":
            MessageLookupByLibrary.simpleMessage("You have "),
        "enablingTooManyAssetsSpan2": MessageLookupByLibrary.simpleMessage(
            " assets enabled and trying to enable "),
        "enablingTooManyAssetsSpan3": MessageLookupByLibrary.simpleMessage(
            " more. Enabled assets max limit is "),
        "enablingTooManyAssetsSpan4": MessageLookupByLibrary.simpleMessage(
            ". Please disable some assets before adding more."),
        "enablingTooManyAssetsTitle": MessageLookupByLibrary.simpleMessage(
            "Trying to enable too many assets"),
        "encryptingWallet":
            MessageLookupByLibrary.simpleMessage("Encrypting wallet"),
        "englishLanguage": MessageLookupByLibrary.simpleMessage("English"),
        "enterNewPinCode":
            MessageLookupByLibrary.simpleMessage("Enter your new PIN"),
        "enterOldPinCode":
            MessageLookupByLibrary.simpleMessage("Enter your old PIN"),
        "enterPinCode":
            MessageLookupByLibrary.simpleMessage("Enter your PIN code"),
        "enterSeedPhrase":
            MessageLookupByLibrary.simpleMessage("Enter Your Seed Phrase"),
        "enterSellAmount": MessageLookupByLibrary.simpleMessage(
            "You must enter Sell Amount first"),
        "enterpassword": MessageLookupByLibrary.simpleMessage(
            "Please enter your password to continue."),
        "errorAmountBalance":
            MessageLookupByLibrary.simpleMessage("Not enough balance"),
        "errorNotAValidAddress":
            MessageLookupByLibrary.simpleMessage("Not a valid address"),
        "errorNotAValidAddressSegWit": MessageLookupByLibrary.simpleMessage(
            "Segwit addresses are not supported (yet)"),
        "errorNotEnoughGas": m33,
        "errorTryAgain":
            MessageLookupByLibrary.simpleMessage("Error, please try again"),
        "errorTryLater":
            MessageLookupByLibrary.simpleMessage("Error, please try later"),
        "errorValueEmpty":
            MessageLookupByLibrary.simpleMessage("Value is too high or low"),
        "errorValueNotEmpty":
            MessageLookupByLibrary.simpleMessage("Please input data"),
        "estimateValue":
            MessageLookupByLibrary.simpleMessage("Estimated Total Value"),
        "eulaParagraphe1": m34,
        "eulaParagraphe10": m35,
        "eulaParagraphe11": m36,
        "eulaParagraphe12": MessageLookupByLibrary.simpleMessage(
            "When accessing or using the Services, You agree that You are solely responsible for your conduct while accessing and using our Services. Without limiting the generality of the foregoing, You agree that You will not:\n(a) use the Services in any manner that could interfere with, disrupt, negatively affect or inhibit other users from fully enjoying the Services, or that could damage, disable, overburden or impair the functioning of our Services in any manner;\n(b) use the Services to pay for, support or otherwise engage in any illegal activities, including, but not limited to illegal gambling, fraud, money laundering, or terrorist activities;\n(c) use any robot, spider, crawler, scraper or other automated means or interface not provided by us to access our Services or to extract data;\n(d) use or attempt to use another user’s Wallet or credentials without authorization;\n(e) attempt to circumvent any content filtering techniques we employ, or attempt to access any service or area of our Services that You are not authorized to access;\n(f) introduce to the Services any virus, Trojan, worms, logic bombs or other harmful material;\n(g) develop any third-party applications that interact with our Services without our prior written consent;\n(h) provide false, inaccurate, or misleading information; \n(i) encourage or induce any other person to engage in any of the activities prohibited under this Section.\n\n"),
        "eulaParagraphe13": m37,
        "eulaParagraphe14": m38,
        "eulaParagraphe15": m39,
        "eulaParagraphe16": m40,
        "eulaParagraphe17": m41,
        "eulaParagraphe18": m42,
        "eulaParagraphe19": m43,
        "eulaParagraphe2": m44,
        "eulaParagraphe3": MessageLookupByLibrary.simpleMessage(
            "By entering into this User (each subject accessing or using the site) Agreement (this writing) You declare that You are an individual over the age of majority (at least 18 or older) and have the capacity to enter into this User Agreement and accept to be legally bound by the terms and conditions of this User Agreement, as incorporated herein and amended from time to time. \n\n"),
        "eulaParagraphe4": MessageLookupByLibrary.simpleMessage(
            "We may change the terms of this User Agreement at any time. Any such changes will take effect when published in the application, or when You use the Services.\n\nRead the User Agreement carefully every time You use our Services. Your continued use of the Services shall signify your acceptance to be bound by the current User Agreement. Our failure or delay in enforcing or partially enforcing any provision of this User Agreement shall not be construed as a waiver of any.\n\n"),
        "eulaParagraphe5": m45,
        "eulaParagraphe6": m46,
        "eulaParagraphe7": MessageLookupByLibrary.simpleMessage(
            "We are not responsible for seed-phrases residing in the Mobile Application. In no event shall we be held liable for any loss of any kind. It is your sole responsibility to maintain appropriate backups of your accounts and their seedprases.\n\n"),
        "eulaParagraphe8": MessageLookupByLibrary.simpleMessage(
            "You should not act, or refrain from acting solely on the basis of the content of this application. \nYour access to this application does not itself create an adviser-client relationship between You and us. \nThe content of this application does not constitute a solicitation or inducement to invest in any financial products or services offered by us. \nAny advice included in this application has been prepared without taking into account your objectives, financial situation or needs. You should consider our Risk Disclosure Notice before making any decision on whether to acquire the product described in that document.\n\n"),
        "eulaParagraphe9": MessageLookupByLibrary.simpleMessage(
            "We do not guarantee your continuous access to the application or that your access or use will be error-free. \nWe will not be liable in the event that the application is unavailable to You for any reason (for example, due to computer downtime ascribable to malfunctions, upgrades, server problems, precautionary or corrective maintenance activities or interruption in telecommunication supplies). \n\n"),
        "eulaTitle1": m47,
        "eulaTitle10":
            MessageLookupByLibrary.simpleMessage("ACCESS AND SECURITY\n\n"),
        "eulaTitle11": MessageLookupByLibrary.simpleMessage(
            "INTELLECTUAL PROPERTY RIGHTS\n\n"),
        "eulaTitle12": MessageLookupByLibrary.simpleMessage("DISCLAIMER\n\n"),
        "eulaTitle13": MessageLookupByLibrary.simpleMessage(
            "REPRESENTATIONS AND WARRANTIES, INDEMNIFICATION, AND LIMITATION OF LIABILITY\n\n"),
        "eulaTitle14":
            MessageLookupByLibrary.simpleMessage("GENERAL RISK FACTORS\n\n"),
        "eulaTitle15":
            MessageLookupByLibrary.simpleMessage("INDEMNIFICATION\n\n"),
        "eulaTitle16": MessageLookupByLibrary.simpleMessage(
            "RISK DISCLOSURES RELATING TO THE WALLET\n\n"),
        "eulaTitle17": MessageLookupByLibrary.simpleMessage(
            "NO INVESTMENT ADVICE OR BROKERAGE\n\n"),
        "eulaTitle18": MessageLookupByLibrary.simpleMessage("TERMINATION\n\n"),
        "eulaTitle19":
            MessageLookupByLibrary.simpleMessage("THIRD PARTY RIGHTS\n\n"),
        "eulaTitle2": MessageLookupByLibrary.simpleMessage(
            "TERMS and CONDITIONS: (APPLICATION USER AGREEMENT)"),
        "eulaTitle20":
            MessageLookupByLibrary.simpleMessage("OUR LEGAL OBLIGATIONS\n\n"),
        "eulaTitle3": MessageLookupByLibrary.simpleMessage(
            "TERMS AND CONDITIONS OF USE AND DISCLAIMER\n\n"),
        "eulaTitle4": MessageLookupByLibrary.simpleMessage("GENERAL USE\n\n"),
        "eulaTitle5": MessageLookupByLibrary.simpleMessage("MODIFICATIONS\n\n"),
        "eulaTitle6":
            MessageLookupByLibrary.simpleMessage("LIMITATIONS ON USE\n\n"),
        "eulaTitle7":
            MessageLookupByLibrary.simpleMessage("ACCOUNTS AND MEMBERSHIP\n\n"),
        "eulaTitle8": MessageLookupByLibrary.simpleMessage("BACKUPS\n\n"),
        "eulaTitle9":
            MessageLookupByLibrary.simpleMessage("GENERAL WARNING\n\n"),
        "exampleHintSeed": MessageLookupByLibrary.simpleMessage(
            "Example: build case level ..."),
        "exchangeExpedient": MessageLookupByLibrary.simpleMessage("Expedient"),
        "exchangeExpensive": MessageLookupByLibrary.simpleMessage("Expensive"),
        "exchangeIdentical":
            MessageLookupByLibrary.simpleMessage("Identical to CEX"),
        "exchangeRate": MessageLookupByLibrary.simpleMessage("Exchange rate:"),
        "exchangeTitle": MessageLookupByLibrary.simpleMessage("EXCHANGE"),
        "exportButton": MessageLookupByLibrary.simpleMessage("Export"),
        "exportContactsTitle": MessageLookupByLibrary.simpleMessage("Contacts"),
        "exportDesc": MessageLookupByLibrary.simpleMessage(
            "Please select items to export into encrypted file."),
        "exportLink": MessageLookupByLibrary.simpleMessage("Export"),
        "exportNotesTitle": MessageLookupByLibrary.simpleMessage("Notes"),
        "exportSuccessTitle": MessageLookupByLibrary.simpleMessage(
            "Items have been successfully exported:"),
        "exportSwapsTitle": MessageLookupByLibrary.simpleMessage("Swaps"),
        "exportTitle": MessageLookupByLibrary.simpleMessage("Export"),
        "failedToCancelActivation": m48,
        "fakeBalanceAmt":
            MessageLookupByLibrary.simpleMessage("Fake balance amount:"),
        "faqTitle":
            MessageLookupByLibrary.simpleMessage("Frequently Asked Questions"),
        "faucetError": MessageLookupByLibrary.simpleMessage("Error"),
        "faucetInProgress": m49,
        "faucetName": MessageLookupByLibrary.simpleMessage("FAUCET"),
        "faucetSuccess": MessageLookupByLibrary.simpleMessage("Success"),
        "faucetTimedOut":
            MessageLookupByLibrary.simpleMessage("Request timed out"),
        "feedNewsTab": MessageLookupByLibrary.simpleMessage("News"),
        "feedNotFound": MessageLookupByLibrary.simpleMessage("Nothing here"),
        "feedNotifTitle": m50,
        "feedReadMore": MessageLookupByLibrary.simpleMessage("Read more..."),
        "feedTab": MessageLookupByLibrary.simpleMessage("Feed"),
        "feedTitle": MessageLookupByLibrary.simpleMessage("News Feed"),
        "feedUnableToProceed": MessageLookupByLibrary.simpleMessage(
            "Unable to proceed news update"),
        "feedUnableToUpdate":
            MessageLookupByLibrary.simpleMessage("Unable to get news update"),
        "feedUpToDate":
            MessageLookupByLibrary.simpleMessage("Already up to date"),
        "feedUpdated":
            MessageLookupByLibrary.simpleMessage("News feed updated"),
        "feedback": MessageLookupByLibrary.simpleMessage("Share Log File"),
        "feesError": m51,
        "filtersAll": MessageLookupByLibrary.simpleMessage("All"),
        "filtersButton": MessageLookupByLibrary.simpleMessage("Filter"),
        "filtersClearAll":
            MessageLookupByLibrary.simpleMessage("Clear all filters"),
        "filtersFailed": MessageLookupByLibrary.simpleMessage("Failed"),
        "filtersFrom": MessageLookupByLibrary.simpleMessage("From date"),
        "filtersMaker": MessageLookupByLibrary.simpleMessage("Maker"),
        "filtersReceive": MessageLookupByLibrary.simpleMessage("Receive coin"),
        "filtersSell": MessageLookupByLibrary.simpleMessage("Sell coin"),
        "filtersStatus": MessageLookupByLibrary.simpleMessage("Status"),
        "filtersSuccessful": MessageLookupByLibrary.simpleMessage("Successful"),
        "filtersTaker": MessageLookupByLibrary.simpleMessage("Taker"),
        "filtersTo": MessageLookupByLibrary.simpleMessage("To date"),
        "filtersType": MessageLookupByLibrary.simpleMessage("Taker/Maker"),
        "fingerprint": MessageLookupByLibrary.simpleMessage("Fingerprint"),
        "finishingUp":
            MessageLookupByLibrary.simpleMessage("Finishing up, please wait"),
        "foundQrCode": MessageLookupByLibrary.simpleMessage("Found QR Code"),
        "frenchLanguage": MessageLookupByLibrary.simpleMessage("French"),
        "from": MessageLookupByLibrary.simpleMessage("From"),
        "futureTransactions": MessageLookupByLibrary.simpleMessage(
            "We will sync future transactions made after activation associated with your public key. This is the quickest option and takes up the least amount of storage."),
        "gasFee": m52,
        "gasLimit": MessageLookupByLibrary.simpleMessage("Gas limit"),
        "gasNotActive": m53,
        "gasPrice": MessageLookupByLibrary.simpleMessage("Gas price"),
        "generalPinNotActive": MessageLookupByLibrary.simpleMessage(
            "General PIN protection is not active.\nCamouflage mode will not be available.\nPlease activate PIN protection."),
        "getBackupPhrase": MessageLookupByLibrary.simpleMessage(
            "Important: Back up your seed phrase before proceeding!"),
        "gettingTxWait": MessageLookupByLibrary.simpleMessage(
            "Getting transaction, please wait"),
        "goToPorfolio": MessageLookupByLibrary.simpleMessage("Go to portfolio"),
        "gweiError": m54,
        "helpLink": MessageLookupByLibrary.simpleMessage("Help"),
        "helpTitle": MessageLookupByLibrary.simpleMessage("Help and Support"),
        "hideBalance": MessageLookupByLibrary.simpleMessage("Hide balances"),
        "hintConfirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm Password"),
        "hintCreatePassword":
            MessageLookupByLibrary.simpleMessage("Create Password"),
        "hintCurrentPassword":
            MessageLookupByLibrary.simpleMessage("Current password"),
        "hintEnterPassword":
            MessageLookupByLibrary.simpleMessage("Enter your password"),
        "hintEnterSeedPhrase":
            MessageLookupByLibrary.simpleMessage("Enter your seed phrase"),
        "hintNameYourWallet":
            MessageLookupByLibrary.simpleMessage("Name your wallet"),
        "hintPassword": MessageLookupByLibrary.simpleMessage("Password"),
        "history": MessageLookupByLibrary.simpleMessage("history"),
        "hours": MessageLookupByLibrary.simpleMessage("h"),
        "hungarianLanguage": MessageLookupByLibrary.simpleMessage("Hungarian"),
        "iUnderstand": MessageLookupByLibrary.simpleMessage("I understand"),
        "importButton": MessageLookupByLibrary.simpleMessage("Import"),
        "importDecryptError": MessageLookupByLibrary.simpleMessage(
            "Invalid password or corrupted data"),
        "importDesc":
            MessageLookupByLibrary.simpleMessage("Items to be imported:"),
        "importFileNotFound":
            MessageLookupByLibrary.simpleMessage("File not found"),
        "importInvalidSwapData": MessageLookupByLibrary.simpleMessage(
            "Invalid swap data. Please provide a valid swap status JSON file."),
        "importLink": MessageLookupByLibrary.simpleMessage("Import"),
        "importLoadDesc": MessageLookupByLibrary.simpleMessage(
            "Please select encrypted file to import."),
        "importLoadSwapDesc": MessageLookupByLibrary.simpleMessage(
            "Please select plain text swap file to import."),
        "importLoading": MessageLookupByLibrary.simpleMessage("Opening..."),
        "importPassCancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "importPassOk": MessageLookupByLibrary.simpleMessage("Ok"),
        "importPassword": MessageLookupByLibrary.simpleMessage("Password"),
        "importSingleSwapLink":
            MessageLookupByLibrary.simpleMessage("Import Single Swap"),
        "importSingleSwapTitle":
            MessageLookupByLibrary.simpleMessage("Import Swap"),
        "importSomeItemsSkippedWarning": MessageLookupByLibrary.simpleMessage(
            "Some items have been skipped"),
        "importSuccessTitle": MessageLookupByLibrary.simpleMessage(
            "Items have been successfully imported:"),
        "importSwapFailed":
            MessageLookupByLibrary.simpleMessage("Failed to import swap"),
        "importSwapJsonDecodingError":
            MessageLookupByLibrary.simpleMessage("Error decoding json file"),
        "importTitle": MessageLookupByLibrary.simpleMessage("Import"),
        "incomingTransactionsProtectionSettings": m55,
        "infoPasswordDialog": MessageLookupByLibrary.simpleMessage(
            "Use a secure password and do not store it on the same device"),
        "infoTrade1": MessageLookupByLibrary.simpleMessage(
            "The swap request can not be undone and is a final event!"),
        "infoTrade2": MessageLookupByLibrary.simpleMessage(
            "The swap can take up to 60 minutes. DONT close this application!"),
        "infoWalletPassword": MessageLookupByLibrary.simpleMessage(
            "You have to provide a password for the wallet encryption due to security reasons."),
        "insufficientBalanceToPay": m56,
        "insufficientText": MessageLookupByLibrary.simpleMessage(
            "Minumum volume required by this order is"),
        "insufficientTitle":
            MessageLookupByLibrary.simpleMessage("Insufficient volume"),
        "internetRefreshButton":
            MessageLookupByLibrary.simpleMessage("Refresh"),
        "internetRestored": MessageLookupByLibrary.simpleMessage(
            "Internet Connection Restored"),
        "invalidCoinAddress": m57,
        "invalidSwap":
            MessageLookupByLibrary.simpleMessage("Unable to proceed swap"),
        "invalidSwapDetailsLink":
            MessageLookupByLibrary.simpleMessage("Details"),
        "isUnavailable": m58,
        "japaneseLanguage": MessageLookupByLibrary.simpleMessage("Japanese"),
        "koreanLanguage": MessageLookupByLibrary.simpleMessage("Korean"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "latestTxs":
            MessageLookupByLibrary.simpleMessage("Latest Transactions"),
        "legalTitle": MessageLookupByLibrary.simpleMessage("Legal"),
        "less": MessageLookupByLibrary.simpleMessage("Less"),
        "lessThanCaution": m59,
        "limitError": m60,
        "loading": MessageLookupByLibrary.simpleMessage("Loading..."),
        "loadingOrderbook":
            MessageLookupByLibrary.simpleMessage("Loading orderbook..."),
        "lockScreen": MessageLookupByLibrary.simpleMessage("Screen is locked"),
        "lockScreenAuth":
            MessageLookupByLibrary.simpleMessage("Please authenticate!"),
        "login": MessageLookupByLibrary.simpleMessage("login"),
        "logout": MessageLookupByLibrary.simpleMessage("Log Out"),
        "logoutOnExit": MessageLookupByLibrary.simpleMessage("Log Out on Exit"),
        "logoutWarning": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to logout now?"),
        "logoutsettings":
            MessageLookupByLibrary.simpleMessage("Log Out Settings"),
        "longMinutes": MessageLookupByLibrary.simpleMessage("minutes"),
        "makeAorder": MessageLookupByLibrary.simpleMessage("make an order"),
        "makerDetailsCancel":
            MessageLookupByLibrary.simpleMessage("Cancel order"),
        "makerDetailsCreated":
            MessageLookupByLibrary.simpleMessage("Created at"),
        "makerDetailsFor": MessageLookupByLibrary.simpleMessage("Receive"),
        "makerDetailsId": MessageLookupByLibrary.simpleMessage("Order ID"),
        "makerDetailsNoSwaps": MessageLookupByLibrary.simpleMessage(
            "No swaps were started by this order"),
        "makerDetailsPrice": MessageLookupByLibrary.simpleMessage("Price"),
        "makerDetailsSell": MessageLookupByLibrary.simpleMessage("Sell"),
        "makerDetailsSwaps":
            MessageLookupByLibrary.simpleMessage("Swaps started by this order"),
        "makerDetailsTitle":
            MessageLookupByLibrary.simpleMessage("Maker Order details"),
        "makerOrder": MessageLookupByLibrary.simpleMessage("Maker Order"),
        "marketplace": MessageLookupByLibrary.simpleMessage("Marketplace"),
        "marketsChart": MessageLookupByLibrary.simpleMessage("Chart"),
        "marketsDepth": MessageLookupByLibrary.simpleMessage("Depth"),
        "marketsNoAsks": MessageLookupByLibrary.simpleMessage("No asks found"),
        "marketsNoBids": MessageLookupByLibrary.simpleMessage("No bids found"),
        "marketsOrderDetails":
            MessageLookupByLibrary.simpleMessage("Order Details"),
        "marketsOrderbook": MessageLookupByLibrary.simpleMessage("ORDER BOOK"),
        "marketsPrice": MessageLookupByLibrary.simpleMessage("PRICE"),
        "marketsSelectCoins":
            MessageLookupByLibrary.simpleMessage("Please select coins"),
        "marketsTab": MessageLookupByLibrary.simpleMessage("Markets"),
        "marketsTitle": MessageLookupByLibrary.simpleMessage("MARKETS"),
        "matchExportPass":
            MessageLookupByLibrary.simpleMessage("Passwords must match"),
        "matchingCamoChange": MessageLookupByLibrary.simpleMessage("Change"),
        "matchingCamoPinError": MessageLookupByLibrary.simpleMessage(
            "Your general PIN and Camouflage PIN are the same.\nCamouflage mode will not be available.\nPlease change Camouflage PIN."),
        "matchingCamoTitle":
            MessageLookupByLibrary.simpleMessage("Invalid PIN"),
        "max": MessageLookupByLibrary.simpleMessage("MAX"),
        "maxOrder": MessageLookupByLibrary.simpleMessage("Max order volume:"),
        "media": MessageLookupByLibrary.simpleMessage("News"),
        "mediaBrowse": MessageLookupByLibrary.simpleMessage("BROWSE"),
        "mediaBrowseFeed": MessageLookupByLibrary.simpleMessage("BROWSE FEED"),
        "mediaBy": MessageLookupByLibrary.simpleMessage("By"),
        "mediaNotSavedDescription":
            MessageLookupByLibrary.simpleMessage("YOU HAVE NO SAVED ARTICLES"),
        "mediaSaved": MessageLookupByLibrary.simpleMessage("SAVED"),
        "memo": MessageLookupByLibrary.simpleMessage("Memo"),
        "merge": MessageLookupByLibrary.simpleMessage("Merge"),
        "mergedValue": MessageLookupByLibrary.simpleMessage("Merged value:"),
        "milliseconds": MessageLookupByLibrary.simpleMessage("ms"),
        "min": MessageLookupByLibrary.simpleMessage("MIN"),
        "minOrder": MessageLookupByLibrary.simpleMessage("Min order volume:"),
        "minValue": m61,
        "minValueBuy": m62,
        "minValueOrder": m63,
        "minValueSell": m64,
        "minVolumeInput": m65,
        "minVolumeIsTDH": MessageLookupByLibrary.simpleMessage(
            "Must be lower than sell amount"),
        "minVolumeTitle":
            MessageLookupByLibrary.simpleMessage("Min volume required"),
        "minVolumeToggle":
            MessageLookupByLibrary.simpleMessage("Use custom min volume"),
        "minimizingWillTerminate": MessageLookupByLibrary.simpleMessage(
            "Warning: Minimizing the app on iOS will terminate the activation process."),
        "minutes": MessageLookupByLibrary.simpleMessage("m"),
        "mobileDataWarning": m66,
        "moreInfo": MessageLookupByLibrary.simpleMessage("More Info"),
        "moreTab": MessageLookupByLibrary.simpleMessage("More"),
        "multiActivateGas": m67,
        "multiBaseAmtPlaceholder":
            MessageLookupByLibrary.simpleMessage("Amount"),
        "multiBasePlaceholder": MessageLookupByLibrary.simpleMessage("Coin"),
        "multiBaseSelectTitle": MessageLookupByLibrary.simpleMessage("Sell"),
        "multiConfirmCancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "multiConfirmConfirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "multiConfirmTitle": m68,
        "multiCreate": MessageLookupByLibrary.simpleMessage("Create"),
        "multiCreateOrder": MessageLookupByLibrary.simpleMessage("Order"),
        "multiCreateOrders": MessageLookupByLibrary.simpleMessage("Orders"),
        "multiEthFee": MessageLookupByLibrary.simpleMessage("fee"),
        "multiFiatCancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "multiFiatDesc": MessageLookupByLibrary.simpleMessage(
            "Please enter fiat amount to receive:"),
        "multiFiatFill": MessageLookupByLibrary.simpleMessage("Autofill"),
        "multiFixErrors": MessageLookupByLibrary.simpleMessage(
            "Please fix all errors before continuing"),
        "multiInvalidAmt":
            MessageLookupByLibrary.simpleMessage("Invalid amount"),
        "multiInvalidSellAmt":
            MessageLookupByLibrary.simpleMessage("Invalid sell amount"),
        "multiLowGas": m69,
        "multiLowerThanFee": m70,
        "multiMaxSellAmt":
            MessageLookupByLibrary.simpleMessage("Max sell amount is"),
        "multiMinReceiveAmt":
            MessageLookupByLibrary.simpleMessage("Min receive amount is"),
        "multiMinSellAmt":
            MessageLookupByLibrary.simpleMessage("Min sell amount is"),
        "multiReceiveTitle": MessageLookupByLibrary.simpleMessage("Receive:"),
        "multiSellTitle": MessageLookupByLibrary.simpleMessage("Sell:"),
        "multiTab": MessageLookupByLibrary.simpleMessage("Multi"),
        "multiTableAmt": MessageLookupByLibrary.simpleMessage("Receive Amt."),
        "multiTablePrice": MessageLookupByLibrary.simpleMessage("Price/CEX"),
        "networkFee": MessageLookupByLibrary.simpleMessage("Network fee"),
        "newAccount": MessageLookupByLibrary.simpleMessage("new account"),
        "newAccountUpper": MessageLookupByLibrary.simpleMessage("New Account"),
        "newValue": MessageLookupByLibrary.simpleMessage("New value:"),
        "newsFeed": MessageLookupByLibrary.simpleMessage("News feed"),
        "next": MessageLookupByLibrary.simpleMessage("next"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noArticles": MessageLookupByLibrary.simpleMessage(
            "No news - please check back later!"),
        "noCoinFound": MessageLookupByLibrary.simpleMessage("No coin found"),
        "noFunds": MessageLookupByLibrary.simpleMessage("No funds"),
        "noFundsDetected": MessageLookupByLibrary.simpleMessage(
            "No funds available - please deposit."),
        "noInternet":
            MessageLookupByLibrary.simpleMessage("No Internet Connection"),
        "noItemsToExport":
            MessageLookupByLibrary.simpleMessage("No items selected"),
        "noItemsToImport":
            MessageLookupByLibrary.simpleMessage("No items selected"),
        "noMatchingOrders":
            MessageLookupByLibrary.simpleMessage("No matching orders found"),
        "noOrder": m71,
        "noOrderAvailable":
            MessageLookupByLibrary.simpleMessage("Click to create an order"),
        "noOrders": MessageLookupByLibrary.simpleMessage(
            "No orders, please go to trade."),
        "noRewardYet": MessageLookupByLibrary.simpleMessage(
            "No reward claimable - please try again in 1h."),
        "noRewards":
            MessageLookupByLibrary.simpleMessage("No claimable rewards"),
        "noSuchCoin": MessageLookupByLibrary.simpleMessage("No such coin"),
        "noSwaps": MessageLookupByLibrary.simpleMessage("No history."),
        "noTxs": MessageLookupByLibrary.simpleMessage("No Transactions"),
        "nonNumericInput":
            MessageLookupByLibrary.simpleMessage("The value must be numeric"),
        "none": MessageLookupByLibrary.simpleMessage("None"),
        "notEnoughGas": m72,
        "notEnoughtBalanceForFee": MessageLookupByLibrary.simpleMessage(
            "Not enough balance for fees - trade a smaller amount"),
        "noteOnOrder": MessageLookupByLibrary.simpleMessage(
            "Note: Matched order cannot be cancelled again"),
        "notePlaceholder": MessageLookupByLibrary.simpleMessage("Add a Note"),
        "noteTitle": MessageLookupByLibrary.simpleMessage("Note"),
        "nothingFound": MessageLookupByLibrary.simpleMessage("Nothing found"),
        "notifSwapCompletedText": m73,
        "notifSwapCompletedTitle":
            MessageLookupByLibrary.simpleMessage("Swap completed"),
        "notifSwapFailedText": m74,
        "notifSwapFailedTitle":
            MessageLookupByLibrary.simpleMessage("Swap failed"),
        "notifSwapStartedText": m75,
        "notifSwapStartedTitle":
            MessageLookupByLibrary.simpleMessage("New swap started"),
        "notifSwapStatusTitle":
            MessageLookupByLibrary.simpleMessage("Swap status changed"),
        "notifSwapTimeoutText": m76,
        "notifSwapTimeoutTitle":
            MessageLookupByLibrary.simpleMessage("Swap timed out"),
        "notifTxText": m77,
        "notifTxTitle":
            MessageLookupByLibrary.simpleMessage("Incoming transaction"),
        "numberAssets": m78,
        "officialPressRelease":
            MessageLookupByLibrary.simpleMessage("Official press release"),
        "okButton": MessageLookupByLibrary.simpleMessage("Ok"),
        "oldLogsDelete": MessageLookupByLibrary.simpleMessage("Delete"),
        "oldLogsTitle": MessageLookupByLibrary.simpleMessage("Old logs"),
        "oldLogsUsed": MessageLookupByLibrary.simpleMessage("Space used"),
        "openMessage":
            MessageLookupByLibrary.simpleMessage("Open Error Message"),
        "orderBookLess": MessageLookupByLibrary.simpleMessage("Less"),
        "orderBookMore": MessageLookupByLibrary.simpleMessage("More"),
        "orderCancel": m79,
        "orderCreated": MessageLookupByLibrary.simpleMessage("Order created"),
        "orderCreatedInfo":
            MessageLookupByLibrary.simpleMessage("Order successfully created"),
        "orderDetailsAddress": MessageLookupByLibrary.simpleMessage("Address"),
        "orderDetailsCancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "orderDetailsExpedient": m80,
        "orderDetailsExpensive": m81,
        "orderDetailsFor": MessageLookupByLibrary.simpleMessage("for"),
        "orderDetailsIdentical":
            MessageLookupByLibrary.simpleMessage("Identical to CEX"),
        "orderDetailsMin": MessageLookupByLibrary.simpleMessage("min."),
        "orderDetailsPrice": MessageLookupByLibrary.simpleMessage("Price"),
        "orderDetailsReceive": MessageLookupByLibrary.simpleMessage("Receive"),
        "orderDetailsSelect": MessageLookupByLibrary.simpleMessage("Select"),
        "orderDetailsSells": MessageLookupByLibrary.simpleMessage("Sells"),
        "orderDetailsSettings": MessageLookupByLibrary.simpleMessage(
            "Open Details on single tap and select Order by long tap"),
        "orderDetailsSpend": MessageLookupByLibrary.simpleMessage("Spend"),
        "orderDetailsTitle": MessageLookupByLibrary.simpleMessage("Details"),
        "orderFilled": m82,
        "orderMatched": MessageLookupByLibrary.simpleMessage("Order matched"),
        "orderMatching": MessageLookupByLibrary.simpleMessage("Order matching"),
        "orderTypePartial": MessageLookupByLibrary.simpleMessage(" Order"),
        "orderTypeUnknown":
            MessageLookupByLibrary.simpleMessage("Unknown Type Order"),
        "orders": MessageLookupByLibrary.simpleMessage("orders"),
        "ordersActive": MessageLookupByLibrary.simpleMessage("Active"),
        "ordersHistory": MessageLookupByLibrary.simpleMessage("History"),
        "ordersTableAmount": m83,
        "ordersTablePrice": m84,
        "ordersTableTotal": m85,
        "overwrite": MessageLookupByLibrary.simpleMessage("Overwrite"),
        "ownOrder":
            MessageLookupByLibrary.simpleMessage(" This is your own order!"),
        "paidFromBalance":
            MessageLookupByLibrary.simpleMessage("Paid from balance:"),
        "paidFromVolume":
            MessageLookupByLibrary.simpleMessage("Paid from received volume:"),
        "paidWith": MessageLookupByLibrary.simpleMessage("Paid with "),
        "passwordRequirement": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least 12 characters, with one lower-case, one upper-case and one special symbol."),
        "pastTransactionsFromDate": MessageLookupByLibrary.simpleMessage(
            "Your wallet will show your past transactions made after the specified date."),
        "paymentUriDetailsAccept": MessageLookupByLibrary.simpleMessage("Pay"),
        "paymentUriDetailsAcceptQuestion": MessageLookupByLibrary.simpleMessage(
            "Do you accept this transaction?"),
        "paymentUriDetailsAddressSpan":
            MessageLookupByLibrary.simpleMessage("To Address "),
        "paymentUriDetailsAmountSpan":
            MessageLookupByLibrary.simpleMessage("Amount: "),
        "paymentUriDetailsCoinSpan":
            MessageLookupByLibrary.simpleMessage("Coin: "),
        "paymentUriDetailsDeny": MessageLookupByLibrary.simpleMessage("Cancel"),
        "paymentUriDetailsTitle":
            MessageLookupByLibrary.simpleMessage("Payment Requested"),
        "paymentUriInactiveCoin": m86,
        "placeOrder": MessageLookupByLibrary.simpleMessage("Place your order"),
        "pleaseAcceptAllCoinActivationRequests":
            MessageLookupByLibrary.simpleMessage(
                "Please accept all special coin activation requests or deselect the coins."),
        "pleaseAddCoin":
            MessageLookupByLibrary.simpleMessage("Please Add A Coin"),
        "pleaseRestart": MessageLookupByLibrary.simpleMessage(
            "Please restart the app to try again, or press the button below."),
        "portfolio": MessageLookupByLibrary.simpleMessage("Portfolio"),
        "poweredOnKmd":
            MessageLookupByLibrary.simpleMessage("Powered by Gleec"),
        "price": MessageLookupByLibrary.simpleMessage("price"),
        "privateKey": MessageLookupByLibrary.simpleMessage("Private Key"),
        "privateKeys": MessageLookupByLibrary.simpleMessage("Private Keys"),
        "protectionCtrlConfirmations":
            MessageLookupByLibrary.simpleMessage("Confirmations"),
        "protectionCtrlCustom": MessageLookupByLibrary.simpleMessage(
            "Use custom protection settings"),
        "protectionCtrlOff": MessageLookupByLibrary.simpleMessage("OFF"),
        "protectionCtrlOn": MessageLookupByLibrary.simpleMessage("ON"),
        "protectionCtrlWarning": MessageLookupByLibrary.simpleMessage(
            "Warning, this atomic swap is not dPoW protected. "),
        "pubkey": MessageLookupByLibrary.simpleMessage("Pubkey"),
        "qrCodeScanner":
            MessageLookupByLibrary.simpleMessage("QR Code Scanner"),
        "question_1": MessageLookupByLibrary.simpleMessage(
            "Do you store my private keys?"),
        "question_10": m87,
        "question_2": m88,
        "question_3": MessageLookupByLibrary.simpleMessage(
            "How long does each atomic swap take?"),
        "question_4": MessageLookupByLibrary.simpleMessage(
            "Do I need to be online for the duration of the swap?"),
        "question_5": m89,
        "question_6": MessageLookupByLibrary.simpleMessage(
            "Do you provide user support?"),
        "question_7": MessageLookupByLibrary.simpleMessage(
            "Do you have country restrictions?"),
        "question_8": m90,
        "question_9": m91,
        "rebrandingAnnouncement": MessageLookupByLibrary.simpleMessage(
            "It\'s a new era! We have officially rebranded from \'AtomicDEX\' to \'Gleec Wallet\'"),
        "receive": MessageLookupByLibrary.simpleMessage("RECEIVE"),
        "receiveLower": MessageLookupByLibrary.simpleMessage("Receive"),
        "recommendSeedMessage": MessageLookupByLibrary.simpleMessage(
            "We recommend storing it offline."),
        "remove": MessageLookupByLibrary.simpleMessage("Disable"),
        "requestedTrade":
            MessageLookupByLibrary.simpleMessage("Requested Trade"),
        "reset": MessageLookupByLibrary.simpleMessage("CLEAR"),
        "resetTitle": MessageLookupByLibrary.simpleMessage("Reset form"),
        "restoreWallet": MessageLookupByLibrary.simpleMessage("RESTORE"),
        "retryActivating": MessageLookupByLibrary.simpleMessage(
            "Retrying activating all coins..."),
        "retryAll":
            MessageLookupByLibrary.simpleMessage("Retry activating all"),
        "rewardsButton":
            MessageLookupByLibrary.simpleMessage("Claim your rewards"),
        "rewardsCancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "rewardsError": MessageLookupByLibrary.simpleMessage(
            "Something went wrong. Please try again later."),
        "rewardsInProgressLong":
            MessageLookupByLibrary.simpleMessage("Transaction is in progress"),
        "rewardsInProgressShort":
            MessageLookupByLibrary.simpleMessage("processing"),
        "rewardsLowAmountLong": MessageLookupByLibrary.simpleMessage(
            "UTXO amount less than 10 KMD"),
        "rewardsLowAmountShort":
            MessageLookupByLibrary.simpleMessage("<10 KMD"),
        "rewardsOneHourLong":
            MessageLookupByLibrary.simpleMessage("One hour not passed yet"),
        "rewardsOneHourShort": MessageLookupByLibrary.simpleMessage("<1 hour"),
        "rewardsPopupOk": MessageLookupByLibrary.simpleMessage("Ok"),
        "rewardsPopupTitle":
            MessageLookupByLibrary.simpleMessage("Rewards status:"),
        "rewardsReadMore": MessageLookupByLibrary.simpleMessage(
            "Read more about KMD active user rewards"),
        "rewardsReceive": MessageLookupByLibrary.simpleMessage("Receive"),
        "rewardsSuccess": m92,
        "rewardsTableFiat": MessageLookupByLibrary.simpleMessage("Fiat"),
        "rewardsTableRewards":
            MessageLookupByLibrary.simpleMessage("Rewards,\nKMD"),
        "rewardsTableStatus": MessageLookupByLibrary.simpleMessage("Status"),
        "rewardsTableTime": MessageLookupByLibrary.simpleMessage("Time left"),
        "rewardsTableTitle":
            MessageLookupByLibrary.simpleMessage("Rewards information:"),
        "rewardsTableUXTO":
            MessageLookupByLibrary.simpleMessage("UTXO amt,\nKMD"),
        "rewardsTimeDays": m93,
        "rewardsTimeHours": m94,
        "rewardsTimeMin": m95,
        "rewardsTitle":
            MessageLookupByLibrary.simpleMessage("Rewards information"),
        "russianLanguage": MessageLookupByLibrary.simpleMessage("Russian"),
        "saveMerged": MessageLookupByLibrary.simpleMessage("Save merged"),
        "scrollToContinue": MessageLookupByLibrary.simpleMessage(
            "Scroll to the bottom to continue..."),
        "searchFilterCoin":
            MessageLookupByLibrary.simpleMessage("Search a coin"),
        "searchFilterSubtitleAVX":
            MessageLookupByLibrary.simpleMessage("Select all Avax tokens"),
        "searchFilterSubtitleBEP":
            MessageLookupByLibrary.simpleMessage("Select all BEP tokens"),
        "searchFilterSubtitleCosmos":
            MessageLookupByLibrary.simpleMessage("Select all Cosmos Network"),
        "searchFilterSubtitleERC":
            MessageLookupByLibrary.simpleMessage("Select all ERC tokens"),
        "searchFilterSubtitleETC":
            MessageLookupByLibrary.simpleMessage("Select all ETC tokens"),
        "searchFilterSubtitleFTM":
            MessageLookupByLibrary.simpleMessage("Select all Fantom tokens"),
        "searchFilterSubtitleHCO":
            MessageLookupByLibrary.simpleMessage("Select all HecoChain tokens"),
        "searchFilterSubtitleHRC":
            MessageLookupByLibrary.simpleMessage("Select all Harmony tokens"),
        "searchFilterSubtitleIris":
            MessageLookupByLibrary.simpleMessage("Select all Iris Network"),
        "searchFilterSubtitleKRC":
            MessageLookupByLibrary.simpleMessage("Select all Kucoin tokens"),
        "searchFilterSubtitleMVR":
            MessageLookupByLibrary.simpleMessage("Select all Moonriver tokens"),
        "searchFilterSubtitlePLG":
            MessageLookupByLibrary.simpleMessage("Select all Polygon tokens"),
        "searchFilterSubtitleQRC":
            MessageLookupByLibrary.simpleMessage("Select all QRC tokens"),
        "searchFilterSubtitleSBCH":
            MessageLookupByLibrary.simpleMessage("Select all SmartBCH tokens"),
        "searchFilterSubtitleSLP":
            MessageLookupByLibrary.simpleMessage("Select all SLP tokens"),
        "searchFilterSubtitleSmartChain":
            MessageLookupByLibrary.simpleMessage("Select all SmartChains"),
        "searchFilterSubtitleTestCoins":
            MessageLookupByLibrary.simpleMessage("Select all Test Assets"),
        "searchFilterSubtitleUBQ":
            MessageLookupByLibrary.simpleMessage("Select all Ubiq coins"),
        "searchFilterSubtitleZHTLC":
            MessageLookupByLibrary.simpleMessage("Select all ZHTLC coins"),
        "searchFilterSubtitleutxo":
            MessageLookupByLibrary.simpleMessage("Select all UTXO coins"),
        "searchForTicker":
            MessageLookupByLibrary.simpleMessage("Search for Ticker"),
        "seconds": MessageLookupByLibrary.simpleMessage("s"),
        "security": MessageLookupByLibrary.simpleMessage("Security"),
        "seeOrders": m96,
        "seeTxHistory":
            MessageLookupByLibrary.simpleMessage("View Transaction History"),
        "seedPhrase": MessageLookupByLibrary.simpleMessage("Seed Phrase"),
        "seedPhraseTitle":
            MessageLookupByLibrary.simpleMessage("Your new Seed Phrase"),
        "selectCoin": MessageLookupByLibrary.simpleMessage("Select coin"),
        "selectCoinInfo": MessageLookupByLibrary.simpleMessage(
            "Select the coins you want to add to your portfolio."),
        "selectCoinTitle":
            MessageLookupByLibrary.simpleMessage("Activate coins:"),
        "selectCoinToBuy": MessageLookupByLibrary.simpleMessage(
            "Select the coin you want to BUY"),
        "selectCoinToSell": MessageLookupByLibrary.simpleMessage(
            "Select the coin you want to SELL"),
        "selectDate": MessageLookupByLibrary.simpleMessage("Select a Date"),
        "selectFileImport": MessageLookupByLibrary.simpleMessage("Select file"),
        "selectLanguage":
            MessageLookupByLibrary.simpleMessage("Select Language"),
        "selectPaymentMethod":
            MessageLookupByLibrary.simpleMessage("Select Your Payment Method"),
        "selectedOrder":
            MessageLookupByLibrary.simpleMessage("Selected order:"),
        "sell": MessageLookupByLibrary.simpleMessage("Sell"),
        "sellTestCoinWarning": MessageLookupByLibrary.simpleMessage(
            "Warning, you\'re willing to sell test coins WITHOUT real value!"),
        "send": MessageLookupByLibrary.simpleMessage("SEND"),
        "setUpPassword":
            MessageLookupByLibrary.simpleMessage("SET UP A PASSWORD"),
        "settingDialogSpan1": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete "),
        "settingDialogSpan2": MessageLookupByLibrary.simpleMessage(" wallet?"),
        "settingDialogSpan3":
            MessageLookupByLibrary.simpleMessage("If so, make sure you "),
        "settingDialogSpan4":
            MessageLookupByLibrary.simpleMessage(" record your seed phrase."),
        "settingDialogSpan5": MessageLookupByLibrary.simpleMessage(
            " In order to restore your wallet in the future."),
        "settingLanguageTitle":
            MessageLookupByLibrary.simpleMessage("Languages"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "share": MessageLookupByLibrary.simpleMessage("Share"),
        "shareAddress": m97,
        "shouldScanPastTransaction": m98,
        "showAddress": MessageLookupByLibrary.simpleMessage("Show Address"),
        "showDetails": MessageLookupByLibrary.simpleMessage("Show Details"),
        "showMyOrders": MessageLookupByLibrary.simpleMessage("Show My Orders"),
        "showingOrders": m99,
        "signInWithPassword":
            MessageLookupByLibrary.simpleMessage("Sign in with password"),
        "signInWithSeedPhrase": MessageLookupByLibrary.simpleMessage(
            "Forgot the password? Restore wallet from seed"),
        "simple": MessageLookupByLibrary.simpleMessage("Simple"),
        "simpleTradeActivate": MessageLookupByLibrary.simpleMessage("Activate"),
        "simpleTradeBuyHint": m100,
        "simpleTradeBuyTitle": MessageLookupByLibrary.simpleMessage("Buy"),
        "simpleTradeClose": MessageLookupByLibrary.simpleMessage("Close"),
        "simpleTradeMaxActiveCoins": m101,
        "simpleTradeNotActive": m102,
        "simpleTradeRecieve": MessageLookupByLibrary.simpleMessage("Receive"),
        "simpleTradeSellHint": m103,
        "simpleTradeSellTitle": MessageLookupByLibrary.simpleMessage("Sell"),
        "simpleTradeSend": MessageLookupByLibrary.simpleMessage("Send"),
        "simpleTradeShowLess":
            MessageLookupByLibrary.simpleMessage("Show less"),
        "simpleTradeShowMore":
            MessageLookupByLibrary.simpleMessage("Show more"),
        "simpleTradeUnableActivate": m104,
        "skip": MessageLookupByLibrary.simpleMessage("Skip"),
        "snackbarDismiss": MessageLookupByLibrary.simpleMessage("Dismiss"),
        "soundCantPlayThatMsg": m105,
        "soundPlayedWhen": m106,
        "soundSettingsLink": MessageLookupByLibrary.simpleMessage("Sound"),
        "soundSettingsTitle":
            MessageLookupByLibrary.simpleMessage("Sound settings"),
        "soundsDialogTitle": MessageLookupByLibrary.simpleMessage("Sounds"),
        "soundsDoNotShowAgain": MessageLookupByLibrary.simpleMessage(
            "Understood, don\'t show it anymore"),
        "soundsExplanation": MessageLookupByLibrary.simpleMessage(
            "You\'ll hear sound notifications during the swap process and when you have an active maker order placed.\nAtomic swaps protocol requires participants to be online for a successful trade, and sound notifications help to achieve that."),
        "soundsNote": MessageLookupByLibrary.simpleMessage(
            "Note that you can set your custom sounds in application settings."),
        "spanishLanguage": MessageLookupByLibrary.simpleMessage("Spanish"),
        "startDate": MessageLookupByLibrary.simpleMessage("Start Date"),
        "startSwap": MessageLookupByLibrary.simpleMessage("Start Swap"),
        "step": MessageLookupByLibrary.simpleMessage("Step"),
        "success": MessageLookupByLibrary.simpleMessage("Success!"),
        "support": MessageLookupByLibrary.simpleMessage("Support"),
        "supportLinksDesc": m107,
        "swap": MessageLookupByLibrary.simpleMessage("swap"),
        "swapCurrent": MessageLookupByLibrary.simpleMessage("Current"),
        "swapDetailTitle":
            MessageLookupByLibrary.simpleMessage("CONFIRM EXCHANGE DETAILS"),
        "swapEstimated": MessageLookupByLibrary.simpleMessage("Estimate"),
        "swapFailed": MessageLookupByLibrary.simpleMessage("Swap failed"),
        "swapGasActivate": m108,
        "swapGasAmount": m109,
        "swapGasAmountRequired": m110,
        "swapOngoing": MessageLookupByLibrary.simpleMessage("Swap ongoing"),
        "swapProgress":
            MessageLookupByLibrary.simpleMessage("Progress details"),
        "swapStarted": MessageLookupByLibrary.simpleMessage("Started"),
        "swapSucceful": MessageLookupByLibrary.simpleMessage("Swap successful"),
        "swapTotal": MessageLookupByLibrary.simpleMessage("Total"),
        "swapUUID": MessageLookupByLibrary.simpleMessage("Swap UUID"),
        "switchTheme": MessageLookupByLibrary.simpleMessage("Switch Theme"),
        "syncFromDate":
            MessageLookupByLibrary.simpleMessage("Sync from specified date"),
        "syncFromSaplingActivation": MessageLookupByLibrary.simpleMessage(
            "Sync from sapling activation"),
        "syncNewTransactions":
            MessageLookupByLibrary.simpleMessage("Sync new transactions"),
        "syncTransactionsQuestion": m111,
        "tagAVX20": MessageLookupByLibrary.simpleMessage("AVX20"),
        "tagBEP20": MessageLookupByLibrary.simpleMessage("BEP20"),
        "tagERC20": MessageLookupByLibrary.simpleMessage("ERC20"),
        "tagETC": MessageLookupByLibrary.simpleMessage("ETC"),
        "tagFTM20": MessageLookupByLibrary.simpleMessage("FTM20"),
        "tagHCO20": MessageLookupByLibrary.simpleMessage("HCO20"),
        "tagHRC20": MessageLookupByLibrary.simpleMessage("HRC20"),
        "tagKMD": MessageLookupByLibrary.simpleMessage("KMD"),
        "tagKRC20": MessageLookupByLibrary.simpleMessage("KRC20"),
        "tagMVR20": MessageLookupByLibrary.simpleMessage("MVR20"),
        "tagPLG20": MessageLookupByLibrary.simpleMessage("PLG20"),
        "tagQRC20": MessageLookupByLibrary.simpleMessage("QRC20"),
        "tagSBCH": MessageLookupByLibrary.simpleMessage("SBCH"),
        "tagUBQ": MessageLookupByLibrary.simpleMessage("UBQ"),
        "tagZHTLC": MessageLookupByLibrary.simpleMessage("ZHTLC"),
        "takerOrder": MessageLookupByLibrary.simpleMessage("Taker Order"),
        "timeOut": MessageLookupByLibrary.simpleMessage("Timeout"),
        "titleCreatePassword":
            MessageLookupByLibrary.simpleMessage("CREATE A PASSWORD"),
        "titleCurrentAsk":
            MessageLookupByLibrary.simpleMessage("Order selected"),
        "to": MessageLookupByLibrary.simpleMessage("To"),
        "toAddress": MessageLookupByLibrary.simpleMessage("To address:"),
        "tooManyAssetsEnabledSpan1":
            MessageLookupByLibrary.simpleMessage("You have "),
        "tooManyAssetsEnabledSpan2": MessageLookupByLibrary.simpleMessage(
            " assets enabled. Enabled assets max limit is "),
        "tooManyAssetsEnabledSpan3": MessageLookupByLibrary.simpleMessage(
            ". Please disable some assets before adding more."),
        "tooManyAssetsEnabledTitle":
            MessageLookupByLibrary.simpleMessage("Too many assets enabled"),
        "totalFees": MessageLookupByLibrary.simpleMessage("Total Fees:"),
        "trade": MessageLookupByLibrary.simpleMessage("TRADE"),
        "tradeCompleted":
            MessageLookupByLibrary.simpleMessage("SWAP COMPLETED!"),
        "tradeDetail": MessageLookupByLibrary.simpleMessage("TRADE DETAILS"),
        "tradePreimageError": MessageLookupByLibrary.simpleMessage(
            "Failed to calculate trade fees"),
        "tradingFee": MessageLookupByLibrary.simpleMessage("trading fee:"),
        "tradingMode": MessageLookupByLibrary.simpleMessage("Trading Mode:"),
        "transactionAddress":
            MessageLookupByLibrary.simpleMessage("Transaction Address"),
        "transactionHidden":
            MessageLookupByLibrary.simpleMessage("Transaction Hidden"),
        "transactionHiddenPhishing": MessageLookupByLibrary.simpleMessage(
            "This transaction was hidden due to a possible phishing attempt."),
        "tryRestarting": MessageLookupByLibrary.simpleMessage(
            "If even then some coins are still not activated, try restarting the app."),
        "turkishLanguage": MessageLookupByLibrary.simpleMessage("Turkish"),
        "txBlock": MessageLookupByLibrary.simpleMessage("Block"),
        "txConfirmations":
            MessageLookupByLibrary.simpleMessage("Confirmations"),
        "txConfirmed": MessageLookupByLibrary.simpleMessage("CONFIRMED"),
        "txFee": MessageLookupByLibrary.simpleMessage("Fee"),
        "txFeeTitle": MessageLookupByLibrary.simpleMessage("transaction fee:"),
        "txHash": MessageLookupByLibrary.simpleMessage("Transaction ID"),
        "txLimitExceeded": MessageLookupByLibrary.simpleMessage(
            "Too many requests.\nTransactions history requests limit exceeded.\nPlease try again later."),
        "txNotConfirmed": MessageLookupByLibrary.simpleMessage("UNCONFIRMED"),
        "txleft": m112,
        "ukrainianLanguage": MessageLookupByLibrary.simpleMessage("Ukrainian"),
        "unlock": MessageLookupByLibrary.simpleMessage("unlock"),
        "unlockFunds": MessageLookupByLibrary.simpleMessage("Unlock Funds"),
        "unlockSuccess": m113,
        "unspendable": MessageLookupByLibrary.simpleMessage("unspendable"),
        "updatesAvailable":
            MessageLookupByLibrary.simpleMessage("New version available"),
        "updatesChecking":
            MessageLookupByLibrary.simpleMessage("Checking for updates..."),
        "updatesCurrentVersion": m114,
        "updatesNotifAvailable": MessageLookupByLibrary.simpleMessage(
            "New version available. Please update."),
        "updatesNotifAvailableVersion": m115,
        "updatesNotifTitle":
            MessageLookupByLibrary.simpleMessage("Update available"),
        "updatesSkip": MessageLookupByLibrary.simpleMessage("Skip for now"),
        "updatesTitle": m116,
        "updatesUpToDate":
            MessageLookupByLibrary.simpleMessage("Already up to date"),
        "updatesUpdate": MessageLookupByLibrary.simpleMessage("Update"),
        "uriInsufficientBalanceSpan1": MessageLookupByLibrary.simpleMessage(
            "Not enough balance for scanned "),
        "uriInsufficientBalanceSpan2":
            MessageLookupByLibrary.simpleMessage(" payment request."),
        "uriInsufficientBalanceTitle":
            MessageLookupByLibrary.simpleMessage("Insufficient balance"),
        "value": MessageLookupByLibrary.simpleMessage("Value: "),
        "version": MessageLookupByLibrary.simpleMessage("version"),
        "viewInExplorerButton":
            MessageLookupByLibrary.simpleMessage("Explorer"),
        "viewSeedAndKeys":
            MessageLookupByLibrary.simpleMessage("Seed & Private Keys"),
        "volumes": MessageLookupByLibrary.simpleMessage("Volumes"),
        "walletInUse": MessageLookupByLibrary.simpleMessage(
            "Wallet name is already in use"),
        "walletMaxChar": MessageLookupByLibrary.simpleMessage(
            "Wallet name must have a max of 40 characters"),
        "walletOnly": MessageLookupByLibrary.simpleMessage("Wallet only"),
        "warning": MessageLookupByLibrary.simpleMessage("Warning!"),
        "warningOkBtn": MessageLookupByLibrary.simpleMessage("Ok"),
        "warningShareLogs": MessageLookupByLibrary.simpleMessage(
            "Warning - in special cases this log data contains sensitive information that can be used to spend coins from failed swaps!"),
        "weFailedTo": m117,
        "weFailedToActivate": m118,
        "welcomeInfo": m119,
        "welcomeLetSetUp":
            MessageLookupByLibrary.simpleMessage("LET\'S GET SET UP!"),
        "welcomeTitle": MessageLookupByLibrary.simpleMessage("WELCOME"),
        "welcomeWallet": MessageLookupByLibrary.simpleMessage("wallet"),
        "willBeRedirected": MessageLookupByLibrary.simpleMessage(
            "You will be redirected to portfolio page on completion."),
        "willTakeTime": MessageLookupByLibrary.simpleMessage(
            "This will take a while and the app must be kept in the foreground.\nTerminating the app while activation is in progress could lead to issues."),
        "withdraw": MessageLookupByLibrary.simpleMessage("Withdraw"),
        "withdrawCameraAccessText": m120,
        "withdrawCameraAccessTitle":
            MessageLookupByLibrary.simpleMessage("Access Denied"),
        "withdrawConfirm":
            MessageLookupByLibrary.simpleMessage("Confirm Withdrawal"),
        "withdrawConfirmError": MessageLookupByLibrary.simpleMessage(
            "Something went wrong. Try again later."),
        "withdrawValue": m121,
        "wrongCoinSpan1": MessageLookupByLibrary.simpleMessage(
            "You are trying to scan a payment QR code for "),
        "wrongCoinSpan2":
            MessageLookupByLibrary.simpleMessage(" but you are on the "),
        "wrongCoinSpan3":
            MessageLookupByLibrary.simpleMessage(" withdraw screen"),
        "wrongCoinTitle": MessageLookupByLibrary.simpleMessage("Wrong coin"),
        "wrongPassword": MessageLookupByLibrary.simpleMessage(
            "The passwords do not match. Please try again."),
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "you have a fresh order that is trying to match with an existing order":
            MessageLookupByLibrary.simpleMessage(
                "you have a fresh order that is trying to match with an existing order"),
        "you have an active swap in progress":
            MessageLookupByLibrary.simpleMessage(
                "you have an active swap in progress"),
        "you have an order that new orders can match with":
            MessageLookupByLibrary.simpleMessage(
                "you have an order that new orders can match with"),
        "youAreSending":
            MessageLookupByLibrary.simpleMessage("You are sending:"),
        "youWillReceiveClaim": m122,
        "youWillReceived":
            MessageLookupByLibrary.simpleMessage("You will receive: "),
        "yourWallet": MessageLookupByLibrary.simpleMessage("your wallet")
      };
}
