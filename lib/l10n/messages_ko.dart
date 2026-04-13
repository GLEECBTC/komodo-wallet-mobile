// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
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
  String get localeName => 'ko';

  static m0(protocolName) => "${protocolName} 코인을 활성화하시겠습니까?";

  static m1(coinName) => "${coinName} 활성화 중";

  static m2(coinName) => "${coinName} 활성화";

  static m3(protocolName) => "${protocolName} 활성화 진행 중";

  static m4(name) => "성공적으로 ${name} 활성화!";

  static m5(title) => "${title} 주소를 가진 연락처만 보여지고 있습니다";

  static m6(abbr) =>
      "${abbr}의 주소로 펀드를 보낼수 없습니다, 왜냐하면 ${abbr}는 활성화가 되어있지 않습니다. 포티폴리오로 가주세요.";

  static m7(appName) =>
      "아니요! ${appName}은 정보를 보관하지 않습니다. 키, 시드 문구, 비밀번호 등 기밀 데이터는 저장되지 않습니다. 이 데이터는 사용자의 장치에만 저장되며, 시스템에는 저장되지 않습니다. 당신은 자산을 완전히 관리하고 있습니다.";

  static m8(appName) =>
      "${appName}은(는) Android 및 iPhone의 모바일과 <a href=\"https://gleec.com/\">Windows, Mac 및 Linux 운영 체제</a>의 데스크톱에서 사용할 수 있습니다.";

  static m9(appName) =>
      "다른 DEX는 일반적으로 단일 블록체인 네트워크를 기반으로 하는 자산 거래, 프록시 토큰 사용, 같은 펀드에서 단일 주문만 가능합니다.\n\n${appName}을 사용하면 프록시 토큰 없이 두 개의 다른 블록체인 네트워크 간에 기본적으로 교환할 수 있습니다. 같은 자금으로 여러 개를 주문할 수도 있습니다. 예를 들어, KMD, QTUM 또는 VRSC으로 0.1 BTC를 판매할 수 있습니다. 첫 주문이 가득 차면 다른 모든 주문이 자동으로 취소됩니다.";

  static m10(appName) =>
      "각 스왑의 처리 시간은 몇 가지 요인에 의해 결정됩니다. 거래되는 자산의 블록 시간은 네트워크마다 다릅니다(보통 비트코인이 가장 느립니다). 게다가 사용자는 보안 설정을 커스터마이징 할 수 있습니다. 예를 들어 3번의 확인 후 ${appName}에게 KMD 트랜잭션을 최종적으로 고려하도록 요구할 수 있습니다, 이는 <a href=\"https://gleec.com/\">공증</a>을 기다리는 것보다 스와프 시간이 짧아집니다.";

  static m11(appName) =>
      "${appName}에서 거래할 때 고려해야 할 두 가지 수수료 카테고리가 있습니다.\n\n1. ${appName}은 수주자의 거래 수수료로 약 0.13%으로(거래량의 1/777 이상 0.0001 이하)를 청구하며 제조사의 주문은 수수료가 제로입니다.\n\n2. 원자력 스와프 거래를 할 때는 제조사와 수험자 모두 관련된 블록체인에 정상적인 네트워크 요금을 지불해야 합니다.\n\n네트워크 요금은 선택한 거래 쌍에 따라 크게 다를 수 있습니다.";

  static m12(name, link, appName, appCompanyShort) =>
      "네! ${appName}은 <a href=\"${link}\">${appCompanyShort} ${name}</a>을 통해서 서포트를 지원합니다. 저희 팀과 커뮤니티는 항상 돕고 싶습니다!";

  static m13(appName) =>
      "아니요! ${appName}은 완전한 분권화가 되어있습니다. 유저를 제3자 파티를 통해서 제한하는 것은 불가능합니다.";

  static m14(appName, appCompanyShort) =>
      "${appName}은 ${appCompanyShort} 팁에서 개발되었습니다. ${appCompanyShort}는 원자력 스왑, 지연 작업 증명, 상호 운용 가능한 멀티체인 아키텍처 등의 혁신적인 솔루션을 추진하고 있는 가장 확립된 블록체인 프로젝트 중 하나입니다.";

  static m15(appName) =>
      "전적으로! 자세한 내용은 <a href=\"https://gleec.com/\">개발자 문서</a>를 참조하거나 파트너십 문의 사항이 있는 경우 문의해 주세요. 특정 기술 질문이 있습니까? ${appName} 개발자 커뮤니티는 항상 도울 준비가 되어 있습니다!";

  static m16(coinName1, coinName2) => "${coinName1}/${coinName2} 기준";

  static m17(batteryLevelCritical) =>
      "스왑을 안전하게 실행하려면 배터리 충전양 (${batteryLevelCritical}%)은 매우 중요합니다. 충전을 하고 다시 시도해 주십시오.";

  static m18(batteryLevelLow) =>
      "배터리 충전량이 ${batteryLevelLow}%보다 낮습니다. 휴대폰 충전을 부탁드립니다.";

  static m19(seconde) => "주문이 진행 중입니다. ${seconde}초를 기다려 주세요!";

  static m20(index) => "${index} 단어 입력";

  static m21(index) => "당신의 시드 문구 안에 있는 ${index} 단어는 무엇입니까?";

  static m22(coin) => "${coin} 활성화가 취소되었습니다.";

  static m23(coin) => "${coin}을(를) 성공적으로 활성화했습니다";

  static m24(protocolName) => "${protocolName} 코인이 활성화되었습니다";

  static m25(protocolName) => "${protocolName} 코인이 성공적으로 활성화되었습니다.";

  static m26(protocolName) => "${protocolName} 코인이 활성화되지 않았습니다.";

  static m27(name) => "${name}을 연락처를 삭제하는 것을 확인하십니까?";

  static m28(iUnderstand) =>
      "커스텀 시드 문구는 생성된 BIP39 준거 시드 문구 또는 개인 키(WIF)보다 안전성이 낮고 크랙되기 쉬운 경우가 있습니다. 위험을 이해하고 무엇을 하고 있는지 확인하려면 아래 상자에 \"${iUnderstand}\"라고 입력해주세요.";

  static m29(coinName) => "${coinName} 거래 수수료를 받습니다";

  static m30(coinName) => "${coinName} 거래 수수료 보내기";

  static m31(abbr) => "${abbr} 주소 입력";

  static m32(selected, remains) =>
      "여전히 ${remains}을(를) 활성화할 수 있습니다. 선택됨: ${selected}";

  static m33(gas) => "가스가 충분하지 않습니다 - 최소 ${gas}양의 가스를 사용하세요";

  static m34(appName, appCompanyLong) =>
      "This End-User License Agreement (\'EULA\') is a legal agreement between you and ${appCompanyLong}.\n\nThis EULA agreement governs your acquisition and use of our ${appName} mobile software (\'Software\', \'Mobile Application\', \'Application\' or \'App\') directly from ${appCompanyLong} or indirectly through a ${appCompanyLong} authorized entity, reseller or distributor (a \'Distributor\').\nPlease read this EULA agreement carefully before completing the installation process and using the ${appName} mobile software. It provides a license to use the ${appName} mobile software and contains warranty information and liability disclaimers.\nIf you register for the beta program of the ${appName} mobile software, this EULA agreement will also govern that trial. By clicking \'accept\' or installing and/or using the ${appName} mobile software, you are confirming your acceptance of the Software and agreeing to become bound by the terms of this EULA agreement.\nIf you are entering into this EULA agreement on behalf of a company or other legal entity, you represent that you have the authority to bind such entity and its affiliates to these terms and conditions. If you do not have such authority or if you do not agree with the terms and conditions of this EULA agreement, do not install or use the Software, and you must not accept this EULA agreement.\nThis EULA agreement shall apply only to the Software supplied by ${appCompanyLong} herewith regardless of whether other software is referred to or described herein. The terms also apply to any ${appCompanyLong} updates, supplements, Internet-based services, and support services for the Software, unless other terms accompany those items on delivery. If so, those terms apply.\n\nLICENSE GRANT\n\n${appCompanyLong} hereby grants you a personal, non-transferable, non-exclusive license to use the ${appName} mobile software on your devices in accordance with the terms of this EULA agreement.\n\nYou are permitted to load the ${appName} mobile software (for example a PC, laptop, mobile or tablet) under your control. You are responsible for ensuring your device meets the minimum security and resource requirements of the ${appName} mobile software.\n\nYou are not permitted to:\n(a) edit, alter, modify, adapt, translate or otherwise change the whole or any part of the Software nor permit the whole or any part of the Software to be combined with or become incorporated in any other software, nor decompile, disassemble or reverse engineer the Software or attempt to do any such things;\n(b) reproduce, copy, distribute, resell or otherwise use the Software for any commercial purpose;\n(c) use the Software in any way which breaches any applicable local, national or international law;\n(d) use the Software for any purpose that ${appCompanyLong} considers is a breach of this EULA agreement.\n\nINTELLECTUAL PROPERTY AND OWNERSHIP\n\n${appCompanyLong} shall at all times retain ownership of the Software as originally downloaded by you and all subsequent downloads of the Software by you. The Software (and the copyright, and other intellectual property rights of whatever nature in the Software, including any modifications made thereto) are and shall remain the property of ${appCompanyLong}.\n\n${appCompanyLong} reserves the right to grant licenses to use the Software to third parties.\n\nTERMINATION\n\nThis EULA agreement is effective from the date you first use the Software and shall continue until terminated. You may terminate it at any time upon written notice to ${appCompanyLong}.\nIt will also terminate immediately if you fail to comply with any term of this EULA agreement. Upon such termination, the licenses granted by this EULA agreement will immediately terminate and you agree to stop all access and use of the Software. The provisions that by their nature continue and survive will survive any termination of this EULA agreement.\n\nGOVERNING LAW\n\nThis EULA agreement, and any dispute arising out of or in connection with this EULA agreement, shall be governed by and construed in accordance with the laws of Vietnam.\n\nThis document was last updated on January 31st, 2020";

  static m35(appCompanyLong) =>
      "${appCompanyLong} is the owner and/or authorised user of all trademarks, service marks, design marks, patents, copyrights, database rights and all other intellectual property appearing on or contained within the application, unless otherwise indicated. All information, text, material, graphics, software and advertisements on the application interface are copyright of ${appCompanyLong}, its suppliers and licensors, unless otherwise expressly indicated by ${appCompanyLong}. \nExcept as provided in the Terms, use of the application does not grant You any right, title, interest or license to any such intellectual property You may have access to on the application. \nWe own the rights, or have permission to use, the trademarks listed in our application. You are not authorised to use any of those trademarks without our written authorization – doing so would constitute a breach of our or another party’s intellectual property rights. \nAlternatively, we might authorise You to use the content in our application if You previously contact us and we agree in writing.";

  static m36(appCompanyShort, appCompanyLong) =>
      "${appCompanyLong} cannot guarantee the safety or security of your computer systems. We do not accept liability for any loss or corruption of electronically stored data or any damage to any computer system occurred in connection with the use of the application or of the user content.\n${appCompanyLong} makes no representation or warranty of any kind, express or implied, as to the operation of the application or the user content. You expressly agree that your use of the application is entirely at your sole risk.\nYou agree that the content provided in the application and the user content do not constitute financial product, legal or taxation advice, and You agree on not representing the user content or the application as such.\nTo the extent permitted by current legislation, the application is provided on an “as is, as available” basis.\n\n${appCompanyLong} expressly disclaims all responsibility for any loss, injury, claim, liability, or damage, or any indirect, incidental, special or consequential damages or loss of profits whatsoever resulting from, arising out of or in any way related to:\n(a) any errors in or omissions of the application and/or the user content, including but not limited to technical inaccuracies and typographical errors;\n(b) any third party website, application or content directly or indirectly accessed through links in the application, including but not limited to any errors or omissions;\n(c) the unavailability of the application or any portion of it;\n(d) your use of the application;\n(e) your use of any equipment or software in connection with the application.\n\nAny Services offered in connection with the Platform are provided on an \'as is\' basis, without any representation or warranty, whether express, implied or statutory. To the maximum extent permitted by applicable law, we specifically disclaim any implied warranties of title, merchantability, suitability for a particular purpose and/or non-infringement. We do not make any representations or warranties that use of the Platform will be continuous, uninterrupted, timely, or error-free.\nWe make no warranty that any Platform will be free from viruses, malware, or other related harmful material and that your ability to access any Platform will be uninterrupted. Any defects or malfunction in the product should be directed to the third party offering the Platform, not to ${appCompanyShort}.\nWe will not be responsible or liable to You for any loss of any kind, from action taken, or taken in reliance on the material or information contained in or through the Platform.\nThis is experimental and unfinished software. Use at your own risk. No warranty for any kind of damage. By using this application you agree to this terms and conditions.";

  static m37(appCompanyLong) =>
      "You agree and understand that there are risks associated with utilizing Services involving Virtual Currencies including, but not limited to, the risk of failure of hardware, software and internet connections, the risk of malicious software introduction, and the risk that third parties may obtain unauthorized access to information stored within your Wallet, including but not limited to your public and private keys. You agree and understand that ${appCompanyLong} will not be responsible for any communication failures, disruptions, errors, distortions or delays You may experience when using the Services, however caused.\nYou accept and acknowledge that there are risks associated with utilizing any virtual currency network, including, but not limited to, the risk of unknown vulnerabilities in or unanticipated changes to the network protocol. You acknowledge and accept that ${appCompanyLong} has no control over any cryptocurrency network and will not be responsible for any harm occurring as a result of such risks, including, but not limited to, the inability to reverse a transaction, and any losses in connection therewith due to erroneous or fraudulent actions.\nThe risk of loss in using Services involving Virtual Currencies may be substantial and losses may occur over a short period of time. In addition, price and liquidity are subject to significant fluctuations that may be unpredictable.\nVirtual Currencies are not legal tender and are not backed by any sovereign government. In addition, the legislative and regulatory landscape around Virtual Currencies is constantly changing and may affect your ability to use, transfer, or exchange Virtual Currencies.\nCFDs are complex instruments and come with a high risk of losing money rapidly due to leverage. 80.6% of retail investor accounts lose money when trading CFDs with this provider. You should consider whether You understand how CFDs work and whether You can afford to take the high risk of losing your money.";

  static m38(appCompanyLong) =>
      "You agree to indemnify, defend and hold harmless ${appCompanyLong}, its officers, directors, employees, agents, licensors, suppliers and any third party information providers to the application from and against all losses, expenses, damages and costs, including reasonable lawyer fees, resulting from any violation of the Terms by You.\nYou also agree to indemnify ${appCompanyLong} against any claims that information or material which You have submitted to ${appCompanyLong} is in violation of any law or in breach of any third party rights (including, but not limited to, claims in respect of defamation, invasion of privacy, breach of confidence, infringement of copyright or infringement of any other intellectual property right).";

  static m39(appCompanyLong) =>
      "In order to be completed, any Virtual Currency transaction created with the ${appCompanyLong} must be confirmed and recorded in the Virtual Currency ledger associated with the relevant Virtual Currency network. Such networks are decentralized, peer-to-peer networks supported by independent third parties, which are not owned, controlled or operated by ${appCompanyLong}.\n${appCompanyLong} has no control over any Virtual Currency network and therefore cannot and does not ensure that any transaction details You submit via our Services will be confirmed on the relevant Virtual Currency network. You agree and understand that the transaction details You submit via our Services may not be completed, or may be substantially delayed, by the Virtual Currency network used to process the transaction. We do not guarantee that the Wallet can transfer title or right in any Virtual Currency or make any warranties whatsoever with regard to title.\nOnce transaction details have been submitted to a Virtual Currency network, we cannot assist You to cancel or otherwise modify your transaction or transaction details. ${appCompanyLong} has no control over any Virtual Currency network and does not have the ability to facilitate any cancellation or modification requests.\nIn the event of a Fork, ${appCompanyLong} may not be able to support activity related to your Virtual Currency. You agree and understand that, in the event of a Fork, the transactions may not be completed, completed partially, incorrectly completed, or substantially delayed. ${appCompanyLong} is not responsible for any loss incurred by You caused in whole or in part, directly or indirectly, by a Fork.\nIn no event shall ${appCompanyLong}, its affiliates and service providers, or any of their respective officers, directors, agents, employees or representatives, be liable for any lost profits or any special, incidental, indirect, intangible, or consequential damages, whether based on contract, tort, negligence, strict liability, or otherwise, arising out of or in connection with authorized or unauthorized use of the services, or this agreement, even if an authorized representative of ${appCompanyLong} has been advised of, has known of, or should have known of the possibility of such damages. \nFor example (and without limiting the scope of the preceding sentence), You may not recover for lost profits, lost business opportunities, or other types of special, incidental, indirect, intangible, or consequential damages. Some jurisdictions do not allow the exclusion or limitation of incidental or consequential damages, so the above limitation may not apply to You. \nWe will not be responsible or liable to You for any loss and take no responsibility for damages or claims arising in whole or in part, directly or indirectly from: \n(a) user error such as forgotten passwords, incorrectly constructed transactions, or mistyped Virtual Currency addresses; \n(b) server failure or data loss; \n(c) corrupted or otherwise non-performing Wallets or Wallet files; \n(d) unauthorized access to applications; \n(e) any unauthorized activities, including without limitation the use of hacking, viruses, phishing, brute forcing or other means of attack against the Services.";

  static m40(appCompanyShort, appCompanyLong) =>
      "For the avoidance of doubt, ${appCompanyLong} does not provide investment, tax or legal advice, nor does ${appCompanyLong} broker trades on your behalf. All ${appCompanyLong} trades are executed automatically, based on the parameters of your order instructions and in accordance with posted Trade execution procedures, and You are solely responsible for determining whether any investment, investment strategy or related transaction is appropriate for You based on your personal investment objectives, financial circumstances and risk tolerance. You should consult your legal or tax professional regarding your specific situation. Neither ${appCompanyShort} nor its owners, members, officers, directors, partners, consultants, nor anyone involved in the publication of this application, is a registered investment adviser or broker-dealer or associated person with a registered investment adviser or broker-dealer and none of the foregoing make any recommendation that the purchase or sale of crypto-assets or securities of any company profiled in the mobile Application is suitable or advisable for any person or that an investment or transaction in such crypto-assets or securities will be profitable. The information contained in the mobile Application is not intended to be, and shall not constitute, an offer to sell or the solicitation of any offer to buy any crypto-asset or security. The information presented in the mobile Application is provided for informational purposes only and is not to be treated as advice or a recommendation to make any specific investment or transaction. Please, consult with a qualified professional before making any decisions. The opinions and analysis included in this applications are based on information from sources deemed to be reliable and are provided “as is” in good faith. ${appCompanyShort} makes no representation or warranty, expressed, implied, or statutory, as to the accuracy or completeness of such information, which may be subject to change without notice. ${appCompanyShort} shall not be liable for any errors or any actions taken in relation to the above. Statements of opinion and belief are those of the authors and/or editors who contribute to this application, and are based solely upon the information possessed by such authors and/or editors. No inference should be drawn that ${appCompanyShort} or such authors or editors have any special or greater knowledge about the crypto-assets or companies profiled or any particular expertise in the industries or markets in which the profiled crypto-assets and companies operate and compete. Information on this application is obtained from sources deemed to be reliable; however, ${appCompanyShort} takes no responsibility for verifying the accuracy of such information and makes no representation that such information is accurate or complete. Certain statements included in this application may be forward-looking statements based on current expectations. ${appCompanyShort} makes no representation and provides no assurance or guarantee that such forward-looking statements will prove to be accurate. Persons using the ${appCompanyShort} application are urged to consult with a qualified professional with respect to an investment or transaction in any crypto-asset or company profiled herein. Additionally, persons using this application expressly represent that the content in this application is not and will not be a consideration in such persons’ investment or transaction decisions. Traders should verify independently information provided in the ${appCompanyShort} application by completing their own due diligence on any crypto-asset or company in which they are contemplating an investment or transaction of any kind and review a complete information package on that crypto-asset or company, which should include, but not be limited to, related blog updates and press releases. Past performance of profiled crypto-assets and securities is not indicative of future results. Crypto-assets and companies profiled on this site may lack an active trading market and invest in a crypto-asset or security that lacks an active trading market or trade on certain media, platforms and markets are deemed highly speculative and carry a high degree of risk. Anyone holding such crypto-assets and securities should be financially able and prepared to bear the risk of loss and the actual loss of his or her entire trade. The information in this application is not designed to be used as a basis for an investment decision. Persons using the ${appCompanyShort} application should confirm to their own satisfaction the veracity of any information prior to entering into any investment or making any transaction. The decision to buy or sell any crypto-asset or security that may be featured by ${appCompanyShort} is done purely and entirely at the reader’s own risk. As a reader and user of this application, You agree that under no circumstances will You seek to hold liable owners, members, officers, directors, partners, consultants or other persons involved in the publication of this application for any losses incurred by the use of information contained in this application ${appCompanyShort} and its contractors and affiliates may profit in the event the crypto-assets and securities increase or decrease in value. Such crypto-assets and securities may be bought or sold from time to time, even after ${appCompanyShort} has distributed positive information regarding the crypto-assets and companies. ${appCompanyShort} has no obligation to inform readers of its trading activities or the trading activities of any of its owners, members, officers, directors, contractors and affiliates and/or any companies affiliated with BC Relations’ owners, members, officers, directors, contractors and affiliates. ${appCompanyShort} and its affiliates may from time to time enter into agreements to purchase crypto-assets or securities to provide a method to reach their goals.";

  static m41(appCompanyLong) =>
      "The Terms are effective until terminated by ${appCompanyLong}. \nIn the event of termination, You are no longer authorized to access the Application, but all restrictions imposed on You and the disclaimers and limitations of liability set out in the Terms will survive termination. \nSuch termination shall not affect any legal right that may have accrued to ${appCompanyLong} against You up to the date of termination. \n${appCompanyLong} may also remove the Application as a whole or any sections or features of the Application at any time. ";

  static m42(appCompanyLong) =>
      "The provisions of previous paragraphs are for the benefit of ${appCompanyLong} and its officers, directors, employees, agents, licensors, suppliers, and any third party information providers to the Application. Each of these individuals or entities shall have the right to assert and enforce those provisions directly against You on its own behalf.";

  static m43(appName, appCompanyLong) =>
      "${appName} mobile is a non-custodial, decentralized and blockchain based application and as such does ${appCompanyLong} never store any user-data (accounts and authentication data). \nWe also collect and process non-personal, anonymized data for statistical purposes and analysis and to help us provide a better service.\n\nThis document was last updated on January 31st, 2020";

  static m44(appName, appCompanyLong) =>
      "This disclaimer applies to the contents and services of the app ${appName} and is valid for all users of the “Application” (\'Software\', “Mobile Application”, “Application” or “App”).\n\nThe Application is owned by ${appCompanyLong}.\n\nWe reserve the right to amend the following Terms and Conditions (governing the use of the application “${appName} mobile”) at any time without prior notice and at our sole discretion. It is your responsibility to periodically check this Terms and Conditions for any updates to these Terms, which shall come into force once published.\nYour continued use of the application shall be deemed as acceptance of the following Terms.\nWe are a company incorporated in Vietnam and these Terms and Conditions are governed by and subject to the laws of Vietnam.\nIf You do not agree with these Terms and Conditions, You must not use or access this software.";

  static m45(appName) =>
      "You are not allowed to decompile, decode, disassemble, rent, lease, loan, sell, sublicense, or create derivative works from the ${appName} mobile application or the user content. Nor are You allowed to use any network monitoring or detection software to determine the software architecture, or extract information about usage or individuals’ or users’ identities. \nYou are not allowed to copy, modify, reproduce, republish, distribute, display, or transmit for commercial, non-profit or public purposes all or any portion of the application or the user content without our prior written authorization.";

  static m46(appName, appCompanyLong) =>
      "If you create an account in the Mobile Application, you are responsible for maintaining the security of your account and you are fully responsible for all activities that occur under the account and any other actions taken in connection with it. We will not be liable for any acts or omissions by you, including any damages of any kind incurred as a result of such acts or omissions. \n\n${appName} mobile is a non-custodial wallet implementation and thus ${appCompanyLong} can not access nor restore your account in case of (data) loss.";

  static m47(appName) =>
      "End-User License Agreement (EULA) of ${appName} mobile:";

  static m48(coinAbbr) => "${coinAbbr} 활성화를 취소하지 못했습니다.";

  static m49(coin) => "${coin} 호수에게 요청 보내는 중...";

  static m50(appCompanyShort) => "${appCompanyShort} 뉴스";

  static m51(value) => "수수료는 최대 ${value}이어야 합니다.";

  static m52(coin) => "${coin} 수수료";

  static m53(coin) => "${coin}을 활성화하세요.";

  static m54(value) => "Gwei는 최대 ${value}이어야 합니다.";

  static m55(coinName) => "수신되는 ${coinName} txs 보호 설정";

  static m56(abbr) => "${abbr} 잔액은 교환 수수료를 지불할 금액보다 부족합니다";

  static m57(coin) => "잘못된 ${coin} 주소";

  static m58(coinAbbr) => "${coinAbbr} 이 사용불가합니다 :(";

  static m59(coinName) => "❗주의! ${coinName} 시장의 24시간 거래량이 \$10,000 미만입니다!";

  static m60(value) => "한도는 최대 ${value}이어야 합니다.";

  static m61(coinName, number) => "최소 판매 양은 ${number} ${coinName}입니다";

  static m62(coinName, number) => "최소 구매 양은 ${number} ${coinName}입니다";

  static m63(buyCoin, buyAmount, sellCoin, sellAmount) =>
      "최소 주문 양은 ${buyAmount} ${buyCoin}\n(${sellAmount} ${sellCoin})입니다";

  static m64(coinName, number) => "최소 판매 양은 ${number} ${coinName}입니다";

  static m65(minValue, coin) => "값은 ${minValue} ${coin}보다 커야합니다";

  static m66(appName) =>
      "이제 셀룰러 데이터를 사용하고 ${appName} P2P 네트워크에 참여하여 인터넷 트래픽을 소비합니다. 셀룰러 데이터 요금제가 비싸다면 WiFi 네트워크를 사용하는 것이 좋습니다.";

  static m67(coin) => "${coin} 활성화하고 먼저 가장 높은 잔고로";

  static m68(number) => "${number} 주문들 생성:";

  static m69(coin) => "${coin} 잔고가 너무 낮습니다";

  static m70(coin, fee) => "수수료를 지불할 ${coin}이 부족합니다. 최소 잔고는 ${fee} ${coin}입니다";

  static m71(coinName) => "${coinName} 양을 입력해 주세요.";

  static m72(coin) => "거래를 위한 ${coin} 부족합니다!";

  static m73(sell, buy) => "${sell}/${buy} 가 성공적으로 바꿔었습니다";

  static m74(sell, buy) => "${sell}/${buy} 를 바꾸기 실패했습니다";

  static m75(sell, buy) => "${sell}/${buy} 스와프가 시작되었습니다";

  static m76(sell, buy) => "${sell}/${buy} 스왑 시간이 초과되었습니다";

  static m77(coin) => "당신은 ${coin} 거래를 받았습니다!";

  static m78(assets) => "${assets} 자산";

  static m79(coin) => "모든 ${coin} 주문이 취소될것 입니다.";

  static m80(delta) => "편함: CEX +${delta}%";

  static m81(delta) => "편함: CEX ${delta}%";

  static m82(fill) => "${fill}% 채워짐";

  static m83(coin) => "Amt. (${coin})";

  static m84(coin) => "가격 (${coin})";

  static m85(coin) => "총값 (${coin})";

  static m86(abbr) => "${abbr}가 활성화되어 있지 않습니다. 활성화 후에 다시 시도해주세요.";

  static m87(appName) => "어떤 기기에서 ${appName}을 사용할 수 있나요?";

  static m88(appName) => "다른 DEX들에서 거래하는 것 보다 ${appName}에서 하는 것이 무엇이 다른가요?";

  static m89(appName) => "${appName}에서 수수료는 어떻게 계산되나요?";

  static m90(appName) => "${appName} 뒤에는 누가 있나요?";

  static m91(appName) => "${appName}에서 저의 화이트-레이블 익스체인지를 개발할 수 있나요?";

  static m92(amount) => "성공! ${amount} KMD를 받았습니다.";

  static m93(dd) => "${dd} 날(들)";

  static m94(hh, minutes) => "${hh}h ${minutes}m";

  static m95(mm) => "${mm}분";

  static m96(amount) => "${amount} 주문을 보기 위해 클릭하세요";

  static m97(coinName, address) => "나의 ${coinName} 주소:\n${address}";

  static m98(coin) => "과거 ${coin} 거래를 검색하시겠습니까?";

  static m99(count, maxCount) => "${maxCount}개 주문 중 ${count}개를 표시 중입니다.";

  static m100(coin) => "구매할 ${coin} 양을 입력하세요";

  static m101(maxCoins) => "최대 활성화 코인 양은 ${maxCoins}입니다. 조금 비활성화 해주세요.";

  static m102(coin) => "${coin}이 활성화 되어 있지 않습니다!";

  static m103(coin) => "판매 할 ${coin} 양을 입력하세요";

  static m104(coin) => "${coin}을 활성화 할 수 없습니다";

  static m105(description) =>
      "mp3 또는 wav 파일을 골라주세요. 저희가 ${description}때 들려드리겠습니다.";

  static m106(description) => "${description}일때 들려주기";

  static m107(appName) =>
      "궁금한 점이 있거나, ${appName} 앱의 기술적인 문제를 발견하셨다고 생각하시면, 보고하고 팀의 지원을 받으실 수 있습니다.";

  static m108(coin) => "${coin} 활성화와 최고 잔고를 먼저 해주세요";

  static m109(coin) => "${coin} 잔고가 거래 수수료를 지불하기 부족합니다.";

  static m110(coin, amount) =>
      "${coin} 잔고가 거래 수수료를 지불하기 부족합니다. ${coin} ${amount}가 필요합니다.";

  static m111(name) => "어떤 ${name} 거래를 동기화하시겠습니까?";

  static m112(left) => "남은 거래: ${left}";

  static m113(amnt, hash) => "성공적으로 ${amnt} 펀드를 열었습니다 - TX: ${hash}";

  static m114(version) => "당신은 ${version} 사용 중 입니다";

  static m115(version) => "버전 ${version}이 있습니다. 업데이트를 하세요.";

  static m116(appName) => "${appName} 업데이트";

  static m117(coinAbbr) => "저희가 ${coinAbbr}를 활성화 하는 것을 실패했습니다";

  static m118(coinAbbr) =>
      "저희가 ${coinAbbr}를 활성화 하는 것을 실패했습니다.\n앱을 다시 시작하고 다시 해주세요.";

  static m119(appName) =>
      "${appName} 모바일은 3세대 DEX 기능과 더 많은 기능 등을 탑재한 차세대 멀티코인 지갑입니다.";

  static m120(appName) =>
      "카메라에 대한 ${appName} 액세스를 이전에 거부했습니다.\nQR코드 스캔을 실시하려면 전화기의 설정에서 카메라의 허가를 수동으로 변경해 주세요.";

  static m121(amount, coinName) => "${amount} ${coinName} 인출";

  static m122(amount, coin) => "당신은 ${amount} ${coin}을 받습니다";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "Active": MessageLookupByLibrary.simpleMessage("활성화"),
        "Applause": MessageLookupByLibrary.simpleMessage("박수"),
        "Can\'t play that":
            MessageLookupByLibrary.simpleMessage("그것은 할 수 없습니다"),
        "Failed": MessageLookupByLibrary.simpleMessage("실패"),
        "Maker": MessageLookupByLibrary.simpleMessage("메이커"),
        "Optional": MessageLookupByLibrary.simpleMessage("선택 과목"),
        "Play at full volume":
            MessageLookupByLibrary.simpleMessage("최대 소리로 틀기"),
        "Sound": MessageLookupByLibrary.simpleMessage("소리"),
        "Taker": MessageLookupByLibrary.simpleMessage("테이커"),
        "a swap fails": MessageLookupByLibrary.simpleMessage("바꾸기 실패"),
        "a swap runs to completion":
            MessageLookupByLibrary.simpleMessage("바꾸기 완료 중"),
        "accepteula": MessageLookupByLibrary.simpleMessage("EULA 동의"),
        "accepttac": MessageLookupByLibrary.simpleMessage("이용약관 동의"),
        "activateAccessBiometric":
            MessageLookupByLibrary.simpleMessage("생체보안 활성화"),
        "activateAccessPin":
            MessageLookupByLibrary.simpleMessage("비밀번호 보호 활성화"),
        "activateCoins": m0,
        "activating": m1,
        "activation": m2,
        "activationCancelled":
            MessageLookupByLibrary.simpleMessage("코인 활성화가 취소되었습니다."),
        "activationInProgress": m3,
        "addCoin": MessageLookupByLibrary.simpleMessage("코인 활성화"),
        "addingCoinSuccess": m4,
        "addressAdd": MessageLookupByLibrary.simpleMessage("주소 추가"),
        "addressBook": MessageLookupByLibrary.simpleMessage("주소록"),
        "addressBookEmpty":
            MessageLookupByLibrary.simpleMessage("주소록이 비어 있습니다"),
        "addressBookFilter": m5,
        "addressBookTitle": MessageLookupByLibrary.simpleMessage("주소록"),
        "addressCoinInactive": m6,
        "addressNotFound": MessageLookupByLibrary.simpleMessage("찾을 수 없음"),
        "addressSelectCoin": MessageLookupByLibrary.simpleMessage("코인 선택"),
        "addressSend": MessageLookupByLibrary.simpleMessage("수신자 선택"),
        "advanced": MessageLookupByLibrary.simpleMessage("고급"),
        "all": MessageLookupByLibrary.simpleMessage("모두"),
        "allPastTransactions": MessageLookupByLibrary.simpleMessage(
            "지갑에는 과거 거래가 표시됩니다. 모든 블록이 다운로드되고 스캔되므로 상당한 저장 공간과 시간이 소요됩니다."),
        "allowCustomSeed": MessageLookupByLibrary.simpleMessage("커스텀 시드 허용"),
        "alreadyExists": MessageLookupByLibrary.simpleMessage("벌서 존재합니다"),
        "amount": MessageLookupByLibrary.simpleMessage("양"),
        "amountToSell": MessageLookupByLibrary.simpleMessage("판매 할 양"),
        "answer_1": m7,
        "answer_10": m8,
        "answer_2": m9,
        "answer_3": m10,
        "answer_4": MessageLookupByLibrary.simpleMessage(
            "네. 각 아토믹 스왑을 정상적으로 완료하려면 인터넷에 접속한 채로 애플리케이션을 실행해 두어야 합니다(보통 연결이 매우 짧은 상태도 문제 없습니다). 그렇지 않으면 제조업자의 경우 거래가 취소되고 인수업자의 경우 자금 손실 위험이 있습니다. 애트믹스와프 프로토콜을 사용하려면 두 참가자가 온라인으로 남아 프로세스가 아토믹 상태를 유지하기 위해 관련 블록체인을 감시해야 합니다."),
        "answer_5": m11,
        "answer_6": m12,
        "answer_7": m13,
        "answer_8": m14,
        "answer_9": m15,
        "areYouSure": MessageLookupByLibrary.simpleMessage("확실하신가요?"),
        "authenticate": MessageLookupByLibrary.simpleMessage("증명하기"),
        "automaticRedirected": MessageLookupByLibrary.simpleMessage(
            "활성화 재시도가 완료되면 당신은 자동으로 포티폴리오 페이지로 리디랙션이 될 것 입니다."),
        "availableVolume": MessageLookupByLibrary.simpleMessage("최대 볼륨"),
        "back": MessageLookupByLibrary.simpleMessage("뒤로"),
        "backupTitle": MessageLookupByLibrary.simpleMessage("백업"),
        "basedOnCoinRatio": m16,
        "batteryCriticalError": m17,
        "batteryLowWarning": m18,
        "batterySavingWarning": MessageLookupByLibrary.simpleMessage(
            "전화기가 배터리 절약 모드로 되어 있습니다. 이 모드를 비활성화하거나 애플리케이션을 백그라운드에 두지 마세요. 그렇지 않으면 OS에 의해 애플리케이션이 중지되고 스왑에 실패할 수 있습니다."),
        "bestAvailableRate": MessageLookupByLibrary.simpleMessage("비율 바꾸기"),
        "builtKomodo": MessageLookupByLibrary.simpleMessage("Komodo로 만들어짐"),
        "builtOnKmd": MessageLookupByLibrary.simpleMessage("Komodo로 만들어짐"),
        "buy": MessageLookupByLibrary.simpleMessage("구매"),
        "buyOrderType":
            MessageLookupByLibrary.simpleMessage("일치하지 않을 경우 제조사로 변환"),
        "buySuccessWaiting":
            MessageLookupByLibrary.simpleMessage("스와프가 발행되었습니다. 잠시만 기다려주세요!"),
        "buySuccessWaitingError": m19,
        "buyTestCoinWarning": MessageLookupByLibrary.simpleMessage(
            "경고합니다, 당신은 실제 가치가 없는 테스트 코인을 구매하는 것입니다!"),
        "camoPinBioProtectionConflict": MessageLookupByLibrary.simpleMessage(
            "위장 비밀번호와 바이오인증 보호를 동시에 활성화할 수 없습니다."),
        "camoPinBioProtectionConflictTitle":
            MessageLookupByLibrary.simpleMessage("위장 비밀번호와 바이오인증 보호 문제."),
        "camoPinChange": MessageLookupByLibrary.simpleMessage("위장 비밀번호 바꾸기"),
        "camoPinCreate": MessageLookupByLibrary.simpleMessage("위장 비밀번호 만들기"),
        "camoPinDesc": MessageLookupByLibrary.simpleMessage(
            "위장 비밀번호로 앱을 잠금해제 하면 가짜인 낮은 잔액이 표시되고, 위장 비밀번호 설정 옵션은 설정에 표시되지 않습니다."),
        "camoPinInvalid": MessageLookupByLibrary.simpleMessage("잘못된 위장 비밀번호"),
        "camoPinLink": MessageLookupByLibrary.simpleMessage("위장 비밀번호"),
        "camoPinNotFound":
            MessageLookupByLibrary.simpleMessage("위장 비밀번호를 찾을 수 없습니다"),
        "camoPinOff": MessageLookupByLibrary.simpleMessage("끄기"),
        "camoPinOn": MessageLookupByLibrary.simpleMessage("켜기"),
        "camoPinSaved": MessageLookupByLibrary.simpleMessage("위장 비밀번호 저장됨"),
        "camoPinTitle": MessageLookupByLibrary.simpleMessage("위장 비밀번호"),
        "camoSetupSubtitle":
            MessageLookupByLibrary.simpleMessage("새로운 위장 비밀번호 입력하기"),
        "camoSetupTitle": MessageLookupByLibrary.simpleMessage("위장 비밀번호 셋업"),
        "camouflageSetup": MessageLookupByLibrary.simpleMessage("위장 비밀번호 셋업"),
        "cancel": MessageLookupByLibrary.simpleMessage("취소"),
        "cancelActivation": MessageLookupByLibrary.simpleMessage("활성화 취소"),
        "cancelActivationQuestion":
            MessageLookupByLibrary.simpleMessage("활성화를 취소하시겠습니까?"),
        "cancelButton": MessageLookupByLibrary.simpleMessage("취소"),
        "cancelOrder": MessageLookupByLibrary.simpleMessage("주문 취소"),
        "candleChartError":
            MessageLookupByLibrary.simpleMessage("무언가 잘못되었습니다. 나중에 다시 시도해주세요."),
        "cantDeleteDefaultCoinOk": MessageLookupByLibrary.simpleMessage("네"),
        "cantDeleteDefaultCoinSpan": MessageLookupByLibrary.simpleMessage(
            "기본 코인입니다. 기본 코인은 비활성화 될 수 없습니다."),
        "cantDeleteDefaultCoinTitle":
            MessageLookupByLibrary.simpleMessage("비활성화 불가능"),
        "cex": MessageLookupByLibrary.simpleMessage("CEX"),
        "cexChangeRate": MessageLookupByLibrary.simpleMessage("CEX 변환 비율"),
        "cexData": MessageLookupByLibrary.simpleMessage("CEX 데이터"),
        "cexDataDesc": MessageLookupByLibrary.simpleMessage(
            "이 아이콘이 표시된 시장 데이터(가격, 차트 등)는, 서드 파티(<a href=\"https://www.coingecko.com/\">coingecko.com</a>, <a href=\"https://openrates.io/\">openrates.io</a>)에서 받아왔습니다."),
        "cexRate": MessageLookupByLibrary.simpleMessage("CEX 비율"),
        "changePin": MessageLookupByLibrary.simpleMessage("비밀번호 바꾸기"),
        "checkForUpdates": MessageLookupByLibrary.simpleMessage("업데이트 확인하기"),
        "checkOut": MessageLookupByLibrary.simpleMessage("확인하기"),
        "checkSeedPhrase": MessageLookupByLibrary.simpleMessage("시드 문구 확인하기"),
        "checkSeedPhraseButton1": MessageLookupByLibrary.simpleMessage("계속하기"),
        "checkSeedPhraseButton2":
            MessageLookupByLibrary.simpleMessage("다시가서 확인하기"),
        "checkSeedPhraseHint": m20,
        "checkSeedPhraseInfo": MessageLookupByLibrary.simpleMessage(
            "당신의 시드 문구는 중요합니다 - 그래서 저희는 이것이 맞는지 확인하고 싶습니다. 필요할 때 언제든지 쉽게 지갑을 복원할 수 있도록 시드 문구에 대해 세 가지 다른 질문을 합니다."),
        "checkSeedPhraseSubtile": m21,
        "checkSeedPhraseTitle":
            MessageLookupByLibrary.simpleMessage("다시 한번 당신의 시드 문구를 확인해봅시다"),
        "chineseLanguage": MessageLookupByLibrary.simpleMessage("중국인"),
        "claim": MessageLookupByLibrary.simpleMessage("받기"),
        "claimTitle": MessageLookupByLibrary.simpleMessage("KMD 보상을 받으시겠습니까?"),
        "clickToSee": MessageLookupByLibrary.simpleMessage("눌러서 보기"),
        "clipboard": MessageLookupByLibrary.simpleMessage("클립보드에 복사됨"),
        "clipboardCopy": MessageLookupByLibrary.simpleMessage("클립보드 복사"),
        "close": MessageLookupByLibrary.simpleMessage("닫기"),
        "closeMessage": MessageLookupByLibrary.simpleMessage("에러 메시지 닫기"),
        "closePreview": MessageLookupByLibrary.simpleMessage("프리뷰 닫기"),
        "code": MessageLookupByLibrary.simpleMessage("코드:"),
        "cofirmCancelActivation":
            MessageLookupByLibrary.simpleMessage("활성화를 취소하시겠습니까?"),
        "coinActivationCancelled": m22,
        "coinActivationSuccessfull": m23,
        "coinSelectClear": MessageLookupByLibrary.simpleMessage("클리어"),
        "coinSelectNotFound":
            MessageLookupByLibrary.simpleMessage("활성화된 코인 없음"),
        "coinSelectTitle": MessageLookupByLibrary.simpleMessage("코인 선택"),
        "coinsActivatedLimitReached":
            MessageLookupByLibrary.simpleMessage("최대 저작물 수를 선택했습니다."),
        "coinsAreActivated": m24,
        "coinsAreActivatedSuccessfully": m25,
        "coinsAreNotActivated": m26,
        "comingSoon": MessageLookupByLibrary.simpleMessage("곳 옵니다..."),
        "commingsoon": MessageLookupByLibrary.simpleMessage("TX 디테일이 곳 옵니다!"),
        "commingsoonGeneral":
            MessageLookupByLibrary.simpleMessage("디테일이 곳 옵니다!"),
        "commissionFee": MessageLookupByLibrary.simpleMessage("수수료"),
        "comparedTo24hrCex":
            MessageLookupByLibrary.simpleMessage("평균에 비해. 24시간 CEX 가격"),
        "comparedToCex": MessageLookupByLibrary.simpleMessage("CEX에게 비교하기"),
        "configureWallet":
            MessageLookupByLibrary.simpleMessage("지갑을 설정하고 있습니다, 기다려주세요..."),
        "confirm": MessageLookupByLibrary.simpleMessage("확인"),
        "confirmCamouflageSetup":
            MessageLookupByLibrary.simpleMessage("위장 비밀번호 확인"),
        "confirmCancel":
            MessageLookupByLibrary.simpleMessage("주문을 취소하는 것을 확인하시겠습니까?"),
        "confirmPassword": MessageLookupByLibrary.simpleMessage("비밀번호 확인"),
        "confirmPin": MessageLookupByLibrary.simpleMessage("핀 코드 확인"),
        "confirmSeed": MessageLookupByLibrary.simpleMessage("시드 문구 확인하기"),
        "confirmeula": MessageLookupByLibrary.simpleMessage(
            "아래 버튼을 클릭하면 \'EULA\'와 \'이용약관\'을 읽고 이러한 버튼에 동의할 수 있습니다."),
        "connecting": MessageLookupByLibrary.simpleMessage("연결중..."),
        "contactCancel": MessageLookupByLibrary.simpleMessage("취소"),
        "contactDelete": MessageLookupByLibrary.simpleMessage("연락처 삭제"),
        "contactDeleteBtn": MessageLookupByLibrary.simpleMessage("삭제"),
        "contactDeleteWarning": m27,
        "contactDiscardBtn": MessageLookupByLibrary.simpleMessage("버리기"),
        "contactEdit": MessageLookupByLibrary.simpleMessage("편집"),
        "contactExit": MessageLookupByLibrary.simpleMessage("종료"),
        "contactExitWarning":
            MessageLookupByLibrary.simpleMessage("변경을 파기하시겠습니까?"),
        "contactNotFound":
            MessageLookupByLibrary.simpleMessage("연락처를 찾을 수 없습니다"),
        "contactSave": MessageLookupByLibrary.simpleMessage("저장"),
        "contactTitle": MessageLookupByLibrary.simpleMessage("연락처 상세"),
        "contactTitleName": MessageLookupByLibrary.simpleMessage("이름"),
        "contract": MessageLookupByLibrary.simpleMessage("계약"),
        "convert": MessageLookupByLibrary.simpleMessage("바꾸기"),
        "couldNotLaunchUrl":
            MessageLookupByLibrary.simpleMessage("URL을 시작할 수 없습니다."),
        "couldntImportError":
            MessageLookupByLibrary.simpleMessage("가져올 수 없습니다:"),
        "create": MessageLookupByLibrary.simpleMessage("바꾸기"),
        "createAWallet": MessageLookupByLibrary.simpleMessage("지갑 만들기"),
        "createContact": MessageLookupByLibrary.simpleMessage("연락처 만들기"),
        "createPin": MessageLookupByLibrary.simpleMessage("핀 만들기"),
        "currency": MessageLookupByLibrary.simpleMessage("화폐"),
        "currencyDialogTitle": MessageLookupByLibrary.simpleMessage("화폐"),
        "currentValue": MessageLookupByLibrary.simpleMessage("현제 가치:"),
        "customFee": MessageLookupByLibrary.simpleMessage("통관 수수료"),
        "customFeeWarning": MessageLookupByLibrary.simpleMessage(
            "당신이 무엇을 하고 있는지 알고 있는 경우에만 관세비용을 사용하세요!"),
        "customSeedWarning": m28,
        "dPow": MessageLookupByLibrary.simpleMessage("Gleec dPoW 보안"),
        "date": MessageLookupByLibrary.simpleMessage("날짜"),
        "decryptingWallet": MessageLookupByLibrary.simpleMessage("지갑 해석 중"),
        "delete": MessageLookupByLibrary.simpleMessage("삭제"),
        "deleteConfirm": MessageLookupByLibrary.simpleMessage("비활성화 확인"),
        "deleteSpan1": MessageLookupByLibrary.simpleMessage("지우시고 싶으십니까"),
        "deleteSpan2": MessageLookupByLibrary.simpleMessage(
            "당신의 포티폴리오에서? 일치되지 않은 주문들은 모두 취소됩니다."),
        "deleteSpan3": MessageLookupByLibrary.simpleMessage(" 비활성화도 됩니다"),
        "deleteWallet": MessageLookupByLibrary.simpleMessage("지갑 삭제"),
        "deletingWallet": MessageLookupByLibrary.simpleMessage("지갑 삭제 중..."),
        "detailedFeesReceiveCoinTransactionFee": m29,
        "detailedFeesSendCoinTransactionFee": m30,
        "detailedFeesSendTradingFeeTransactionFee":
            MessageLookupByLibrary.simpleMessage("거래 수수료 거래 수수료 보내기"),
        "detailedFeesTradingFee":
            MessageLookupByLibrary.simpleMessage("거래 수수료"),
        "details": MessageLookupByLibrary.simpleMessage("상세"),
        "deutscheLanguage": MessageLookupByLibrary.simpleMessage("독일어"),
        "developerTitle": MessageLookupByLibrary.simpleMessage("개발자"),
        "dex": MessageLookupByLibrary.simpleMessage("DEX"),
        "dexIsNotAvailable":
            MessageLookupByLibrary.simpleMessage("DEX은 이 코인에서 사용 불가합니다"),
        "disableScreenshots":
            MessageLookupByLibrary.simpleMessage("스크린샷/미리보기 비활성화"),
        "disclaimerAndTos": MessageLookupByLibrary.simpleMessage("부인서명 & ToS"),
        "doNotCloseTheAppTapForMoreInfo": MessageLookupByLibrary.simpleMessage(
            "앱을 닫지 마세요. 자세한 내용을 보려면 탭하세요..."),
        "done": MessageLookupByLibrary.simpleMessage("완료"),
        "dontAskAgain": MessageLookupByLibrary.simpleMessage("다시 물어보지 마세요"),
        "dontWantPassword":
            MessageLookupByLibrary.simpleMessage("전 비밀번호를 원지 않습니다"),
        "duration": MessageLookupByLibrary.simpleMessage("지속시간"),
        "editContact": MessageLookupByLibrary.simpleMessage("연락처 편집"),
        "emptyCoin": m31,
        "emptyExportPass":
            MessageLookupByLibrary.simpleMessage("암호화 암호는 공백으로 둘 수 없습니다"),
        "emptyImportPass":
            MessageLookupByLibrary.simpleMessage("비밀번호를 공백으로 둘 수 없습니다"),
        "emptyName":
            MessageLookupByLibrary.simpleMessage("연락처 이름은 공백으로 둘 수 없습니다"),
        "emptyWallet":
            MessageLookupByLibrary.simpleMessage("지갑 이름은 절대로 공백으로 둘 수 없습니다"),
        "enable": m32,
        "enableNotificationsForActivationProgress":
            MessageLookupByLibrary.simpleMessage(
                "활성화 진행 상황에 대한 업데이트를 받으려면 알림을 활성화하세요."),
        "enableTestCoins": MessageLookupByLibrary.simpleMessage("실험 코인 활성화"),
        "enablingTooManyAssetsSpan1":
            MessageLookupByLibrary.simpleMessage("당신의 소유"),
        "enablingTooManyAssetsSpan2":
            MessageLookupByLibrary.simpleMessage("활성화되어 있는 자산과 활성화하려고 하는 자산"),
        "enablingTooManyAssetsSpan3":
            MessageLookupByLibrary.simpleMessage("활성화된 최대 한계치 자산은"),
        "enablingTooManyAssetsSpan4": MessageLookupByLibrary.simpleMessage(
            "새로운 것을 추가하기 전에 먼저 다른 것들을 비활성화 해주세요."),
        "enablingTooManyAssetsTitle":
            MessageLookupByLibrary.simpleMessage("너무 많은 자산을 활성화 할려고 하고 있습니다"),
        "encryptingWallet": MessageLookupByLibrary.simpleMessage("지갑 암호화 하는 중"),
        "englishLanguage": MessageLookupByLibrary.simpleMessage("영어"),
        "enterNewPinCode": MessageLookupByLibrary.simpleMessage("새로운 핀을 입력하세요"),
        "enterOldPinCode": MessageLookupByLibrary.simpleMessage("옛날 핀을 입력하세요"),
        "enterPinCode": MessageLookupByLibrary.simpleMessage("핀 코드를 입력하세요"),
        "enterSeedPhrase": MessageLookupByLibrary.simpleMessage("시드 문구를 입력하세요"),
        "enterSellAmount":
            MessageLookupByLibrary.simpleMessage("판매 양을 먼저 입력하세요"),
        "enterpassword":
            MessageLookupByLibrary.simpleMessage("계속하기 위해서 비밀번호를 먼저 입력해주세요."),
        "errorAmountBalance":
            MessageLookupByLibrary.simpleMessage("잔고가 충분하지 않습니다"),
        "errorNotAValidAddress":
            MessageLookupByLibrary.simpleMessage("유효한 주소가 없습니다"),
        "errorNotAValidAddressSegWit":
            MessageLookupByLibrary.simpleMessage("세그윗 주소가 (아직) 지원되지 않습니다"),
        "errorNotEnoughGas": m33,
        "errorTryAgain": MessageLookupByLibrary.simpleMessage("에러, 다시 하세요"),
        "errorTryLater": MessageLookupByLibrary.simpleMessage("에러, 나중에 다시 하세요"),
        "errorValueEmpty":
            MessageLookupByLibrary.simpleMessage("값이 너무 높거나 낮습니다"),
        "errorValueNotEmpty":
            MessageLookupByLibrary.simpleMessage("데이터를 입력해주세요"),
        "estimateValue": MessageLookupByLibrary.simpleMessage("예상된 합계치"),
        "eulaParagraphe1": m34,
        "eulaParagraphe10": m35,
        "eulaParagraphe11": m36,
        "eulaParagraphe12": MessageLookupByLibrary.simpleMessage(
            "When accessing or using the Services, You agree that You are solely responsible for your conduct while accessing and using our Services. Without limiting the generality of the foregoing, You agree that You will not:\n(a) use the Services in any manner that could interfere with, disrupt, negatively affect or inhibit other users from fully enjoying the Services, or that could damage, disable, overburden or impair the functioning of our Services in any manner;\n(b) use the Services to pay for, support or otherwise engage in any illegal activities, including, but not limited to illegal gambling, fraud, money laundering, or terrorist activities;\n(c) use any robot, spider, crawler, scraper or other automated means or interface not provided by us to access our Services or to extract data;\n(d) use or attempt to use another user’s Wallet or credentials without authorization;\n(e) attempt to circumvent any content filtering techniques we employ, or attempt to access any service or area of our Services that You are not authorized to access;\n(f) introduce to the Services any virus, Trojan, worms, logic bombs or other harmful material;\n(g) develop any third-party applications that interact with our Services without our prior written consent;\n(h) provide false, inaccurate, or misleading information; \n(i) encourage or induce any other person to engage in any of the activities prohibited under this Section."),
        "eulaParagraphe13": m37,
        "eulaParagraphe14": m38,
        "eulaParagraphe15": m39,
        "eulaParagraphe16": m40,
        "eulaParagraphe17": m41,
        "eulaParagraphe18": m42,
        "eulaParagraphe19": m43,
        "eulaParagraphe2": m44,
        "eulaParagraphe3": MessageLookupByLibrary.simpleMessage(
            "By entering into this User (each subject accessing or using the site) Agreement (this writing) You declare that You are an individual over the age of majority (at least 18 or older) and have the capacity to enter into this User Agreement and accept to be legally bound by the terms and conditions of this User Agreement, as incorporated herein and amended from time to time."),
        "eulaParagraphe4": MessageLookupByLibrary.simpleMessage(
            "We may change the terms of this User Agreement at any time. Any such changes will take effect when published in the application, or when You use the Services.\n\nRead the User Agreement carefully every time You use our Services. Your continued use of the Services shall signify your acceptance to be bound by the current User Agreement. Our failure or delay in enforcing or partially enforcing any provision of this User Agreement shall not be construed as a waiver of any."),
        "eulaParagraphe5": m45,
        "eulaParagraphe6": m46,
        "eulaParagraphe7": MessageLookupByLibrary.simpleMessage(
            "We are not responsible for seed-phrases residing in the Mobile Application. In no event shall we be held liable for any loss of any kind. It is your sole responsibility to maintain appropriate backups of your accounts and their seedprases."),
        "eulaParagraphe8": MessageLookupByLibrary.simpleMessage(
            "You should not act, or refrain from acting solely on the basis of the content of this application. \nYour access to this application does not itself create an adviser-client relationship between You and us. \nThe content of this application does not constitute a solicitation or inducement to invest in any financial products or services offered by us. \nAny advice included in this application has been prepared without taking into account your objectives, financial situation or needs. You should consider our Risk Disclosure Notice before making any decision on whether to acquire the product described in that document."),
        "eulaParagraphe9": MessageLookupByLibrary.simpleMessage(
            "We do not guarantee your continuous access to the application or that your access or use will be error-free. \nWe will not be liable in the event that the application is unavailable to You for any reason (for example, due to computer downtime ascribable to malfunctions, upgrades, server problems, precautionary or corrective maintenance activities or interruption in telecommunication supplies). "),
        "eulaTitle1": m47,
        "eulaTitle10":
            MessageLookupByLibrary.simpleMessage("ACCESS AND SECURITY"),
        "eulaTitle11": MessageLookupByLibrary.simpleMessage(
            "INTELLECTUAL PROPERTY RIGHTS"),
        "eulaTitle12": MessageLookupByLibrary.simpleMessage("DISCLAIMER"),
        "eulaTitle13": MessageLookupByLibrary.simpleMessage(
            "REPRESENTATIONS AND WARRANTIES, INDEMNIFICATION, AND LIMITATION OF LIABILITY"),
        "eulaTitle14":
            MessageLookupByLibrary.simpleMessage("GENERAL RISK FACTORS"),
        "eulaTitle15": MessageLookupByLibrary.simpleMessage("INDEMNIFICATION"),
        "eulaTitle16": MessageLookupByLibrary.simpleMessage(
            "RISK DISCLOSURES RELATING TO THE WALLET"),
        "eulaTitle17": MessageLookupByLibrary.simpleMessage(
            "NO INVESTMENT ADVICE OR BROKERAGE"),
        "eulaTitle18": MessageLookupByLibrary.simpleMessage("TERMINATION"),
        "eulaTitle19":
            MessageLookupByLibrary.simpleMessage("THIRD PARTY RIGHTS"),
        "eulaTitle2": MessageLookupByLibrary.simpleMessage(
            "TERMS and CONDITIONS: (APPLICATION USER AGREEMENT)"),
        "eulaTitle20":
            MessageLookupByLibrary.simpleMessage("OUR LEGAL OBLIGATIONS"),
        "eulaTitle3": MessageLookupByLibrary.simpleMessage(
            "TERMS AND CONDITIONS OF USE AND DISCLAIMER"),
        "eulaTitle4": MessageLookupByLibrary.simpleMessage("GENERAL USE"),
        "eulaTitle5": MessageLookupByLibrary.simpleMessage("MODIFICATIONS"),
        "eulaTitle6":
            MessageLookupByLibrary.simpleMessage("LIMITATIONS ON USE"),
        "eulaTitle7":
            MessageLookupByLibrary.simpleMessage("ACCOUNTS AND MEMBERSHIP"),
        "eulaTitle8": MessageLookupByLibrary.simpleMessage("BACKUPS"),
        "eulaTitle9": MessageLookupByLibrary.simpleMessage("GENERAL WARNING"),
        "exampleHintSeed":
            MessageLookupByLibrary.simpleMessage("예시: build case level ..."),
        "exchangeExpedient": MessageLookupByLibrary.simpleMessage("편리"),
        "exchangeExpensive": MessageLookupByLibrary.simpleMessage("비싼"),
        "exchangeIdentical": MessageLookupByLibrary.simpleMessage("CEX와 똑같음"),
        "exchangeRate": MessageLookupByLibrary.simpleMessage("변환 비율:"),
        "exchangeTitle": MessageLookupByLibrary.simpleMessage("변환"),
        "exportButton": MessageLookupByLibrary.simpleMessage("수출"),
        "exportContactsTitle": MessageLookupByLibrary.simpleMessage("연락처"),
        "exportDesc":
            MessageLookupByLibrary.simpleMessage("함호화된 파일로 내보낼 항목을 선택하세요."),
        "exportLink": MessageLookupByLibrary.simpleMessage("수출"),
        "exportNotesTitle": MessageLookupByLibrary.simpleMessage("노트"),
        "exportSuccessTitle":
            MessageLookupByLibrary.simpleMessage("아이템이 성공적으로 내보냈습니다:"),
        "exportSwapsTitle": MessageLookupByLibrary.simpleMessage("바꾸기"),
        "exportTitle": MessageLookupByLibrary.simpleMessage("수출"),
        "failedToCancelActivation": m48,
        "fakeBalanceAmt": MessageLookupByLibrary.simpleMessage("가짜 잔고 잔액:"),
        "faqTitle": MessageLookupByLibrary.simpleMessage("자주 묻는 질문들"),
        "faucetError": MessageLookupByLibrary.simpleMessage("에러"),
        "faucetInProgress": m49,
        "faucetName": MessageLookupByLibrary.simpleMessage("호수"),
        "faucetSuccess": MessageLookupByLibrary.simpleMessage("성공"),
        "faucetTimedOut": MessageLookupByLibrary.simpleMessage("요청 시간 초과"),
        "feedNewsTab": MessageLookupByLibrary.simpleMessage("뉴스"),
        "feedNotFound": MessageLookupByLibrary.simpleMessage("아무것도 없습니다"),
        "feedNotifTitle": m50,
        "feedReadMore": MessageLookupByLibrary.simpleMessage("더 읽기..."),
        "feedTab": MessageLookupByLibrary.simpleMessage("피드"),
        "feedTitle": MessageLookupByLibrary.simpleMessage("뉴스 피드"),
        "feedUnableToProceed":
            MessageLookupByLibrary.simpleMessage("뉴스 업데이트를 진행 할 수 없습니다"),
        "feedUnableToUpdate":
            MessageLookupByLibrary.simpleMessage("뉴스 업데이트를 받을 수 없습니다"),
        "feedUpToDate": MessageLookupByLibrary.simpleMessage("벌서 최신화 되어 있습니다"),
        "feedUpdated": MessageLookupByLibrary.simpleMessage("뉴스 피드가 업데이트 됬습니다"),
        "feedback": MessageLookupByLibrary.simpleMessage("로그 파일 공유"),
        "feesError": m51,
        "filtersAll": MessageLookupByLibrary.simpleMessage("모두"),
        "filtersButton": MessageLookupByLibrary.simpleMessage("필터"),
        "filtersClearAll": MessageLookupByLibrary.simpleMessage("모든 필터 지우기"),
        "filtersFailed": MessageLookupByLibrary.simpleMessage("실패"),
        "filtersFrom": MessageLookupByLibrary.simpleMessage("날짜부터"),
        "filtersMaker": MessageLookupByLibrary.simpleMessage("마커"),
        "filtersReceive": MessageLookupByLibrary.simpleMessage("코인 받기"),
        "filtersSell": MessageLookupByLibrary.simpleMessage("코인 판매"),
        "filtersStatus": MessageLookupByLibrary.simpleMessage("상태"),
        "filtersSuccessful": MessageLookupByLibrary.simpleMessage("성공적"),
        "filtersTaker": MessageLookupByLibrary.simpleMessage("테이커"),
        "filtersTo": MessageLookupByLibrary.simpleMessage("날짜까지"),
        "filtersType": MessageLookupByLibrary.simpleMessage("테이커/메이커"),
        "fingerprint": MessageLookupByLibrary.simpleMessage("지문"),
        "finishingUp":
            MessageLookupByLibrary.simpleMessage("마무리 중이니 잠시만 기다려주세요"),
        "foundQrCode": MessageLookupByLibrary.simpleMessage("QR코드 발견"),
        "frenchLanguage": MessageLookupByLibrary.simpleMessage("프랑스 국민"),
        "from": MessageLookupByLibrary.simpleMessage("에서부터"),
        "futureTransactions": MessageLookupByLibrary.simpleMessage(
            "공개 키와 관련된 활성화 후 향후 거래가 동기화됩니다. 이는 가장 빠른 옵션이며 저장 공간을 가장 적게 차지합니다."),
        "gasFee": m52,
        "gasLimit": MessageLookupByLibrary.simpleMessage("가스 제한"),
        "gasNotActive": m53,
        "gasPrice": MessageLookupByLibrary.simpleMessage("가스 가격"),
        "generalPinNotActive": MessageLookupByLibrary.simpleMessage(
            "일반 핀 보호가 활성화되어 있지 않습니다.\n위장 모드를 사용 할 수 없습니다.\n핀 보호를 활성화 시켜주세요."),
        "getBackupPhrase":
            MessageLookupByLibrary.simpleMessage("중요: 계속하기 전에 시드 문구를 백업해두세요!"),
        "gettingTxWait":
            MessageLookupByLibrary.simpleMessage("거래를 받는 중입니다. 잠시 기다려 주세요."),
        "goToPorfolio": MessageLookupByLibrary.simpleMessage("포티폴리오로 가기"),
        "gweiError": m54,
        "helpLink": MessageLookupByLibrary.simpleMessage("도움"),
        "helpTitle": MessageLookupByLibrary.simpleMessage("도움 및 서포트"),
        "hideBalance": MessageLookupByLibrary.simpleMessage("잔고 숨기기"),
        "hintConfirmPassword": MessageLookupByLibrary.simpleMessage("비밀번호 확인"),
        "hintCreatePassword": MessageLookupByLibrary.simpleMessage("비밀번호 만들기"),
        "hintCurrentPassword": MessageLookupByLibrary.simpleMessage("현제 비밀번호"),
        "hintEnterPassword":
            MessageLookupByLibrary.simpleMessage("당신의 비밀번호 입력하기"),
        "hintEnterSeedPhrase":
            MessageLookupByLibrary.simpleMessage("당신의 시드 문구 입력하기"),
        "hintNameYourWallet": MessageLookupByLibrary.simpleMessage("지갑 이름 정하기"),
        "hintPassword": MessageLookupByLibrary.simpleMessage("비밀번호"),
        "history": MessageLookupByLibrary.simpleMessage("히스토리"),
        "hours": MessageLookupByLibrary.simpleMessage("h"),
        "hungarianLanguage": MessageLookupByLibrary.simpleMessage("헝가리 인"),
        "iUnderstand": MessageLookupByLibrary.simpleMessage("전 이해합니다"),
        "importButton": MessageLookupByLibrary.simpleMessage("불러오기"),
        "importDecryptError":
            MessageLookupByLibrary.simpleMessage("불일치한 비밀번호 또는 망가진 데이터"),
        "importDesc": MessageLookupByLibrary.simpleMessage("불러올 아이템들:"),
        "importFileNotFound":
            MessageLookupByLibrary.simpleMessage("파일을 찾을 수 없음"),
        "importInvalidSwapData": MessageLookupByLibrary.simpleMessage(
            "틀린 데이터 바꾸기. 알맞은 상태의 JSON 파일을 주세요."),
        "importLink": MessageLookupByLibrary.simpleMessage("불러오기"),
        "importLoadDesc":
            MessageLookupByLibrary.simpleMessage("불러올 암호화된 파일을 선택하세요."),
        "importLoadSwapDesc":
            MessageLookupByLibrary.simpleMessage("불러올 일반 텍스트 바꾸기 파일을 선택하세요."),
        "importLoading": MessageLookupByLibrary.simpleMessage("열람 중..."),
        "importPassCancel": MessageLookupByLibrary.simpleMessage("취소"),
        "importPassOk": MessageLookupByLibrary.simpleMessage("네"),
        "importPassword": MessageLookupByLibrary.simpleMessage("비밀번호"),
        "importSingleSwapLink":
            MessageLookupByLibrary.simpleMessage("싱글 스왑 불러오기"),
        "importSingleSwapTitle":
            MessageLookupByLibrary.simpleMessage("스왑 불러오기"),
        "importSomeItemsSkippedWarning":
            MessageLookupByLibrary.simpleMessage("어떤 아이템들을 건너뛌습니다"),
        "importSuccessTitle":
            MessageLookupByLibrary.simpleMessage("아이템을 성공적으로 불러왔습니다:"),
        "importSwapFailed":
            MessageLookupByLibrary.simpleMessage("스왑 불러오기를 실패했습니다"),
        "importSwapJsonDecodingError":
            MessageLookupByLibrary.simpleMessage("json파일 읽기에 에러가 났습니다"),
        "importTitle": MessageLookupByLibrary.simpleMessage("불러오기"),
        "incomingTransactionsProtectionSettings": m55,
        "infoPasswordDialog": MessageLookupByLibrary.simpleMessage(
            "보안 비밀번호를 사용하고 똑같은 장치에 저장해두지 마세요"),
        "infoTrade1": MessageLookupByLibrary.simpleMessage(
            "스왑 요청은 되돌릴수 없고 이는 최종 이벤트입니다!"),
        "infoTrade2": MessageLookupByLibrary.simpleMessage(
            "스왑은 60분까지 걸릴 수 있습니다. 이 앱플리케이션을 종료하지 마세요!"),
        "infoWalletPassword": MessageLookupByLibrary.simpleMessage(
            "보안 이유상 지갑 암호활를 위해 비밀번호를 입력해야 합니다"),
        "insufficientBalanceToPay": m56,
        "insufficientText":
            MessageLookupByLibrary.simpleMessage("이 주문을 하기 위한 최소 볼륨은"),
        "insufficientTitle": MessageLookupByLibrary.simpleMessage("볼륨 부족"),
        "internetRefreshButton": MessageLookupByLibrary.simpleMessage("새로 고침"),
        "internetRestored": MessageLookupByLibrary.simpleMessage("인터넷 연결 복구됨"),
        "invalidCoinAddress": m57,
        "invalidSwap": MessageLookupByLibrary.simpleMessage("스왑 진행 불가능"),
        "invalidSwapDetailsLink": MessageLookupByLibrary.simpleMessage("상세"),
        "isUnavailable": m58,
        "japaneseLanguage": MessageLookupByLibrary.simpleMessage("일본어"),
        "koreanLanguage": MessageLookupByLibrary.simpleMessage("한국인"),
        "language": MessageLookupByLibrary.simpleMessage("언어"),
        "latestTxs": MessageLookupByLibrary.simpleMessage("마지막 거래"),
        "legalTitle": MessageLookupByLibrary.simpleMessage("법적"),
        "less": MessageLookupByLibrary.simpleMessage("덜"),
        "lessThanCaution": m59,
        "limitError": m60,
        "loading": MessageLookupByLibrary.simpleMessage("로딩 중..."),
        "loadingOrderbook": MessageLookupByLibrary.simpleMessage("주문책 로딩 중..."),
        "lockScreen": MessageLookupByLibrary.simpleMessage("스크린이 잠겼습니다"),
        "lockScreenAuth": MessageLookupByLibrary.simpleMessage("인증 해주세요!"),
        "login": MessageLookupByLibrary.simpleMessage("로그인"),
        "logout": MessageLookupByLibrary.simpleMessage("로그아웃"),
        "logoutOnExit": MessageLookupByLibrary.simpleMessage("종료 후 로그아웃"),
        "logoutWarning":
            MessageLookupByLibrary.simpleMessage("지금 로그아웃 하고 싶으신게 맞나요?"),
        "logoutsettings": MessageLookupByLibrary.simpleMessage("로그아웃 설정"),
        "longMinutes": MessageLookupByLibrary.simpleMessage("분"),
        "makeAorder": MessageLookupByLibrary.simpleMessage("주문 만들기"),
        "makerDetailsCancel": MessageLookupByLibrary.simpleMessage("주문 취소"),
        "makerDetailsCreated": MessageLookupByLibrary.simpleMessage("에서 만들어짐"),
        "makerDetailsFor": MessageLookupByLibrary.simpleMessage("받기"),
        "makerDetailsId": MessageLookupByLibrary.simpleMessage("주문 ID"),
        "makerDetailsNoSwaps":
            MessageLookupByLibrary.simpleMessage("이 주문에서 스왑이 실행되지 않았습니다"),
        "makerDetailsPrice": MessageLookupByLibrary.simpleMessage("가격"),
        "makerDetailsSell": MessageLookupByLibrary.simpleMessage("판매"),
        "makerDetailsSwaps":
            MessageLookupByLibrary.simpleMessage("이 주문으로 스왑이 시작되었습니다"),
        "makerDetailsTitle": MessageLookupByLibrary.simpleMessage("주문 디테일 메이커"),
        "makerOrder": MessageLookupByLibrary.simpleMessage("메이커 주문"),
        "marketplace": MessageLookupByLibrary.simpleMessage("마켓플레이스"),
        "marketsChart": MessageLookupByLibrary.simpleMessage("차트"),
        "marketsDepth": MessageLookupByLibrary.simpleMessage("깊이"),
        "marketsNoAsks": MessageLookupByLibrary.simpleMessage("질문을 찾을 수 없음"),
        "marketsNoBids": MessageLookupByLibrary.simpleMessage("입찰을 찾을 수 없음"),
        "marketsOrderDetails": MessageLookupByLibrary.simpleMessage("주문 디테일"),
        "marketsOrderbook": MessageLookupByLibrary.simpleMessage("책 주문"),
        "marketsPrice": MessageLookupByLibrary.simpleMessage("가격"),
        "marketsSelectCoins":
            MessageLookupByLibrary.simpleMessage("코인을 선택해 주세요"),
        "marketsTab": MessageLookupByLibrary.simpleMessage("마켓"),
        "marketsTitle": MessageLookupByLibrary.simpleMessage("마켓"),
        "matchExportPass": MessageLookupByLibrary.simpleMessage("비밀번호가 알맞아합니다"),
        "matchingCamoChange": MessageLookupByLibrary.simpleMessage("바꾸기"),
        "matchingCamoPinError": MessageLookupByLibrary.simpleMessage(
            "당신의 일반 핀과 위장 핀이 같습니다.\n위장 모드 사용이 불가능 할 것 입니다.\n위장 핀을 바꿔주세요."),
        "matchingCamoTitle": MessageLookupByLibrary.simpleMessage("틀린 핀"),
        "max": MessageLookupByLibrary.simpleMessage("최대"),
        "maxOrder": MessageLookupByLibrary.simpleMessage("최대 주문 볼륨"),
        "media": MessageLookupByLibrary.simpleMessage("뉴스"),
        "mediaBrowse": MessageLookupByLibrary.simpleMessage("브라우즈"),
        "mediaBrowseFeed": MessageLookupByLibrary.simpleMessage("브라우즈 피드"),
        "mediaBy": MessageLookupByLibrary.simpleMessage("작성"),
        "mediaNotSavedDescription":
            MessageLookupByLibrary.simpleMessage("당신은 저장된 기사가 없습니다"),
        "mediaSaved": MessageLookupByLibrary.simpleMessage("저장"),
        "memo": MessageLookupByLibrary.simpleMessage("메모"),
        "merge": MessageLookupByLibrary.simpleMessage("합체"),
        "mergedValue": MessageLookupByLibrary.simpleMessage("합한 갑어치:"),
        "milliseconds": MessageLookupByLibrary.simpleMessage("ms"),
        "min": MessageLookupByLibrary.simpleMessage("최소"),
        "minOrder": MessageLookupByLibrary.simpleMessage("최소 주문 볼륨"),
        "minValue": m61,
        "minValueBuy": m62,
        "minValueOrder": m63,
        "minValueSell": m64,
        "minVolumeInput": m65,
        "minVolumeIsTDH":
            MessageLookupByLibrary.simpleMessage("판매 양보다 적어야 합니다"),
        "minVolumeTitle": MessageLookupByLibrary.simpleMessage("필요된 최소 볼륨"),
        "minVolumeToggle": MessageLookupByLibrary.simpleMessage("커스텀 최소 볼륨 사용"),
        "minimizingWillTerminate": MessageLookupByLibrary.simpleMessage(
            "경고: iOS에서 앱을 최소화하면 활성화 프로세스가 종료됩니다."),
        "minutes": MessageLookupByLibrary.simpleMessage("m"),
        "mobileDataWarning": m66,
        "moreInfo": MessageLookupByLibrary.simpleMessage("더 많은 정보"),
        "moreTab": MessageLookupByLibrary.simpleMessage("더"),
        "multiActivateGas": m67,
        "multiBaseAmtPlaceholder": MessageLookupByLibrary.simpleMessage("양"),
        "multiBasePlaceholder": MessageLookupByLibrary.simpleMessage("코인"),
        "multiBaseSelectTitle": MessageLookupByLibrary.simpleMessage("판매"),
        "multiConfirmCancel": MessageLookupByLibrary.simpleMessage("취소"),
        "multiConfirmConfirm": MessageLookupByLibrary.simpleMessage("확인"),
        "multiConfirmTitle": m68,
        "multiCreate": MessageLookupByLibrary.simpleMessage("생성"),
        "multiCreateOrder": MessageLookupByLibrary.simpleMessage("주문"),
        "multiCreateOrders": MessageLookupByLibrary.simpleMessage("주문들"),
        "multiEthFee": MessageLookupByLibrary.simpleMessage("수수료"),
        "multiFiatCancel": MessageLookupByLibrary.simpleMessage("취소"),
        "multiFiatDesc":
            MessageLookupByLibrary.simpleMessage("받을 명령 양을 입력하세요:"),
        "multiFiatFill": MessageLookupByLibrary.simpleMessage("자동 채우기"),
        "multiFixErrors":
            MessageLookupByLibrary.simpleMessage("계속하기 전에 모든 에러를 고치세요"),
        "multiInvalidAmt": MessageLookupByLibrary.simpleMessage("잘못된 양"),
        "multiInvalidSellAmt": MessageLookupByLibrary.simpleMessage("잘못된 판매 양"),
        "multiLowGas": m69,
        "multiLowerThanFee": m70,
        "multiMaxSellAmt": MessageLookupByLibrary.simpleMessage("최대 판매 양은"),
        "multiMinReceiveAmt": MessageLookupByLibrary.simpleMessage("최소 받는 양은"),
        "multiMinSellAmt": MessageLookupByLibrary.simpleMessage("최소 판매 양은"),
        "multiReceiveTitle": MessageLookupByLibrary.simpleMessage("받기:"),
        "multiSellTitle": MessageLookupByLibrary.simpleMessage("판매:"),
        "multiTab": MessageLookupByLibrary.simpleMessage("멀티"),
        "multiTableAmt": MessageLookupByLibrary.simpleMessage("Amt 받기"),
        "multiTablePrice": MessageLookupByLibrary.simpleMessage("가격/CEX"),
        "networkFee": MessageLookupByLibrary.simpleMessage("네트워크 수수료"),
        "newAccount": MessageLookupByLibrary.simpleMessage("새로운 계정"),
        "newAccountUpper": MessageLookupByLibrary.simpleMessage("새로운 계정"),
        "newValue": MessageLookupByLibrary.simpleMessage("새로운 값:"),
        "newsFeed": MessageLookupByLibrary.simpleMessage("뉴스 피드"),
        "next": MessageLookupByLibrary.simpleMessage("다음"),
        "no": MessageLookupByLibrary.simpleMessage("아니요"),
        "noArticles":
            MessageLookupByLibrary.simpleMessage("뉴스 없음 - 나중에 다시 확인하세요!"),
        "noCoinFound": MessageLookupByLibrary.simpleMessage("코인을 찾을 수 없음"),
        "noFunds": MessageLookupByLibrary.simpleMessage("펀드 없음"),
        "noFundsDetected":
            MessageLookupByLibrary.simpleMessage("가능한 펀드 없음 -  ㅂ"),
        "noInternet": MessageLookupByLibrary.simpleMessage("인터넷 연결 없음"),
        "noItemsToExport": MessageLookupByLibrary.simpleMessage("선택된 아이템 없음"),
        "noItemsToImport": MessageLookupByLibrary.simpleMessage("선택된 아이템 없음"),
        "noMatchingOrders": MessageLookupByLibrary.simpleMessage("알맞는 주문 없음"),
        "noOrder": m71,
        "noOrderAvailable":
            MessageLookupByLibrary.simpleMessage("주문을 만들기 위해서 눌러주세요"),
        "noOrders": MessageLookupByLibrary.simpleMessage("주문 없음, 가서 거래하세요."),
        "noRewardYet": MessageLookupByLibrary.simpleMessage(
            "받을 수 있는 보상 없음 - 1시간 뒤에 다시하세요"),
        "noRewards": MessageLookupByLibrary.simpleMessage("받을 수 있는 보상 없음"),
        "noSuchCoin": MessageLookupByLibrary.simpleMessage("그런 코인은 없습니다"),
        "noSwaps": MessageLookupByLibrary.simpleMessage("히스토리 없음."),
        "noTxs": MessageLookupByLibrary.simpleMessage("거래내역 없음"),
        "nonNumericInput": MessageLookupByLibrary.simpleMessage("값은 숫자여야 합니다"),
        "none": MessageLookupByLibrary.simpleMessage("없음"),
        "notEnoughGas": m72,
        "notEnoughtBalanceForFee": MessageLookupByLibrary.simpleMessage(
            "수수료를 위한 잔고 부족 - 더 작은 양을 거래하세요"),
        "noteOnOrder":
            MessageLookupByLibrary.simpleMessage("노트: 매치 주문은 다시 취소 될 수 없습니다"),
        "notePlaceholder": MessageLookupByLibrary.simpleMessage("노트 추가"),
        "noteTitle": MessageLookupByLibrary.simpleMessage("노트"),
        "nothingFound": MessageLookupByLibrary.simpleMessage("찾을 수 없습니다"),
        "notifSwapCompletedText": m73,
        "notifSwapCompletedTitle":
            MessageLookupByLibrary.simpleMessage("스와프 완료됨"),
        "notifSwapFailedText": m74,
        "notifSwapFailedTitle": MessageLookupByLibrary.simpleMessage("스와프 실패됨"),
        "notifSwapStartedText": m75,
        "notifSwapStartedTitle":
            MessageLookupByLibrary.simpleMessage("새로운 스와프가 시작되었습니다"),
        "notifSwapStatusTitle":
            MessageLookupByLibrary.simpleMessage("스와프 상태가 바꿨습니다"),
        "notifSwapTimeoutText": m76,
        "notifSwapTimeoutTitle":
            MessageLookupByLibrary.simpleMessage("스왑 시간 초과됨"),
        "notifTxText": m77,
        "notifTxTitle": MessageLookupByLibrary.simpleMessage("들어오는 거래"),
        "numberAssets": m78,
        "officialPressRelease":
            MessageLookupByLibrary.simpleMessage("공식 보도 자료"),
        "okButton": MessageLookupByLibrary.simpleMessage("네"),
        "oldLogsDelete": MessageLookupByLibrary.simpleMessage("삭제"),
        "oldLogsTitle": MessageLookupByLibrary.simpleMessage("오래된 로그"),
        "oldLogsUsed": MessageLookupByLibrary.simpleMessage("사용된 용양"),
        "openMessage": MessageLookupByLibrary.simpleMessage("에러 메세지 열기"),
        "orderBookLess": MessageLookupByLibrary.simpleMessage("더 적은"),
        "orderBookMore": MessageLookupByLibrary.simpleMessage("더"),
        "orderCancel": m79,
        "orderCreated": MessageLookupByLibrary.simpleMessage("주문 생성됨"),
        "orderCreatedInfo":
            MessageLookupByLibrary.simpleMessage("주문이 성공적으로 생성됬습니다"),
        "orderDetailsAddress": MessageLookupByLibrary.simpleMessage("주소"),
        "orderDetailsCancel": MessageLookupByLibrary.simpleMessage("취소"),
        "orderDetailsExpedient": m80,
        "orderDetailsExpensive": m81,
        "orderDetailsFor": MessageLookupByLibrary.simpleMessage("위한"),
        "orderDetailsIdentical":
            MessageLookupByLibrary.simpleMessage("똑같은 CEX"),
        "orderDetailsMin": MessageLookupByLibrary.simpleMessage("분."),
        "orderDetailsPrice": MessageLookupByLibrary.simpleMessage("가격"),
        "orderDetailsReceive": MessageLookupByLibrary.simpleMessage("받기"),
        "orderDetailsSelect": MessageLookupByLibrary.simpleMessage("선택"),
        "orderDetailsSells": MessageLookupByLibrary.simpleMessage("판매"),
        "orderDetailsSettings": MessageLookupByLibrary.simpleMessage(
            "한개 탭에서 상세를 열고 긴 탭에서 주문을 선택하세요"),
        "orderDetailsSpend": MessageLookupByLibrary.simpleMessage("소비"),
        "orderDetailsTitle": MessageLookupByLibrary.simpleMessage("세부 사항"),
        "orderFilled": m82,
        "orderMatched": MessageLookupByLibrary.simpleMessage("주문 매칭됨"),
        "orderMatching": MessageLookupByLibrary.simpleMessage("주문 매칭"),
        "orderTypePartial": MessageLookupByLibrary.simpleMessage("주문"),
        "orderTypeUnknown": MessageLookupByLibrary.simpleMessage("알수 없는 주문 종류"),
        "orders": MessageLookupByLibrary.simpleMessage("주문"),
        "ordersActive": MessageLookupByLibrary.simpleMessage("활성화"),
        "ordersHistory": MessageLookupByLibrary.simpleMessage("히스토리"),
        "ordersTableAmount": m83,
        "ordersTablePrice": m84,
        "ordersTableTotal": m85,
        "overwrite": MessageLookupByLibrary.simpleMessage("덮어쓰기"),
        "ownOrder": MessageLookupByLibrary.simpleMessage("이것은 당신만의 주문입니다!"),
        "paidFromBalance": MessageLookupByLibrary.simpleMessage("잔액에서 지불:"),
        "paidFromVolume": MessageLookupByLibrary.simpleMessage("받은 볼륨에서 지불:"),
        "paidWith": MessageLookupByLibrary.simpleMessage("으로 지불"),
        "passwordRequirement": MessageLookupByLibrary.simpleMessage(
            "비밀번호는 최서 12자 이상이어여 하고, 소문자, 대문자 및 특수 기호가 하나씩 있어야합니다."),
        "pastTransactionsFromDate": MessageLookupByLibrary.simpleMessage(
            "귀하의 지갑에는 지정된 날짜 이후에 이루어진 과거 거래가 표시됩니다."),
        "paymentUriDetailsAccept": MessageLookupByLibrary.simpleMessage("지불"),
        "paymentUriDetailsAcceptQuestion":
            MessageLookupByLibrary.simpleMessage("거래를 수락하시겠습니까?"),
        "paymentUriDetailsAddressSpan":
            MessageLookupByLibrary.simpleMessage("주소 지정"),
        "paymentUriDetailsAmountSpan":
            MessageLookupByLibrary.simpleMessage("양:"),
        "paymentUriDetailsCoinSpan":
            MessageLookupByLibrary.simpleMessage("코인:"),
        "paymentUriDetailsDeny": MessageLookupByLibrary.simpleMessage("취소"),
        "paymentUriDetailsTitle": MessageLookupByLibrary.simpleMessage("지불 요청"),
        "paymentUriInactiveCoin": m86,
        "placeOrder": MessageLookupByLibrary.simpleMessage("당신의 주문을 넣으세요"),
        "pleaseAcceptAllCoinActivationRequests":
            MessageLookupByLibrary.simpleMessage(
                "모든 특별 코인 활성화 요청을 수락하거나 코인 선택을 취소하세요."),
        "pleaseAddCoin": MessageLookupByLibrary.simpleMessage("코인을 더해 주세요"),
        "pleaseRestart": MessageLookupByLibrary.simpleMessage(
            "다시하기 위해서 앱을 다시 시작하거나, 밑에 버튼을 눌러 주세요."),
        "portfolio": MessageLookupByLibrary.simpleMessage("포티폴리오"),
        "poweredOnKmd": MessageLookupByLibrary.simpleMessage("Komodo의해 구동됨"),
        "price": MessageLookupByLibrary.simpleMessage("가격"),
        "privateKey": MessageLookupByLibrary.simpleMessage("개인 키"),
        "privateKeys": MessageLookupByLibrary.simpleMessage("개인 키들"),
        "protectionCtrlConfirmations":
            MessageLookupByLibrary.simpleMessage("확인 사향"),
        "protectionCtrlCustom":
            MessageLookupByLibrary.simpleMessage("커스텀 보호 설정 사용"),
        "protectionCtrlOff": MessageLookupByLibrary.simpleMessage("끄기"),
        "protectionCtrlOn": MessageLookupByLibrary.simpleMessage("켜기"),
        "protectionCtrlWarning": MessageLookupByLibrary.simpleMessage(
            "경고, 이 아토믹 스왑은 dPoW 보호가 않되어 있습니다."),
        "pubkey": MessageLookupByLibrary.simpleMessage("펍키"),
        "qrCodeScanner": MessageLookupByLibrary.simpleMessage("QR 코드 스캐너"),
        "question_1": MessageLookupByLibrary.simpleMessage("제 개인 키를 보관하나요?"),
        "question_10": m87,
        "question_2": m88,
        "question_3":
            MessageLookupByLibrary.simpleMessage("각각의 아토믹 스왑을 얼마나 걸리나요?"),
        "question_4":
            MessageLookupByLibrary.simpleMessage("스왑을 하는 동안 온라인에 있어야 하나요?"),
        "question_5": m89,
        "question_6": MessageLookupByLibrary.simpleMessage("유저 지원을 공급하나요?"),
        "question_7": MessageLookupByLibrary.simpleMessage("나라 제한이 있나요?"),
        "question_8": m90,
        "question_9": m91,
        "rebrandingAnnouncement": MessageLookupByLibrary.simpleMessage(
            "새로운 시대입니다! \'AtomicDEX\'에서 \'Gleec Wallet\'으로 공식 명칭을 변경하였습니다."),
        "receive": MessageLookupByLibrary.simpleMessage("받기"),
        "receiveLower": MessageLookupByLibrary.simpleMessage("받기"),
        "recommendSeedMessage":
            MessageLookupByLibrary.simpleMessage("저희는 오프라인에 저장하는 것을 추천합니다."),
        "remove": MessageLookupByLibrary.simpleMessage("비활성화"),
        "requestedTrade": MessageLookupByLibrary.simpleMessage("요청된 거래"),
        "reset": MessageLookupByLibrary.simpleMessage("클리어"),
        "resetTitle": MessageLookupByLibrary.simpleMessage("폼 리셋"),
        "restoreWallet": MessageLookupByLibrary.simpleMessage("복구"),
        "retryActivating":
            MessageLookupByLibrary.simpleMessage("다시 모든 코인 활성화 중..."),
        "retryAll": MessageLookupByLibrary.simpleMessage("다시 모두 활성화 중"),
        "rewardsButton": MessageLookupByLibrary.simpleMessage("당신의 보상을 받으세요"),
        "rewardsCancel": MessageLookupByLibrary.simpleMessage("취소"),
        "rewardsError":
            MessageLookupByLibrary.simpleMessage("무언가 잘못 됬습니다. 나중에 다시 시도하세요."),
        "rewardsInProgressLong":
            MessageLookupByLibrary.simpleMessage("거래가 진행되고 있습니다"),
        "rewardsInProgressShort": MessageLookupByLibrary.simpleMessage("진행중"),
        "rewardsLowAmountLong":
            MessageLookupByLibrary.simpleMessage("UTXO 양이 10 KMD에 이하입니다"),
        "rewardsLowAmountShort":
            MessageLookupByLibrary.simpleMessage("<10 KMD"),
        "rewardsOneHourLong":
            MessageLookupByLibrary.simpleMessage("한 시간이 지나지 않았습니다"),
        "rewardsOneHourShort": MessageLookupByLibrary.simpleMessage("<1 시간"),
        "rewardsPopupOk": MessageLookupByLibrary.simpleMessage("네"),
        "rewardsPopupTitle": MessageLookupByLibrary.simpleMessage("보상 상태:"),
        "rewardsReadMore":
            MessageLookupByLibrary.simpleMessage("KMD 활성화 유저 보상에 대해서 더 읽어 보기"),
        "rewardsReceive": MessageLookupByLibrary.simpleMessage("받기"),
        "rewardsSuccess": m92,
        "rewardsTableFiat": MessageLookupByLibrary.simpleMessage("피아트"),
        "rewardsTableRewards": MessageLookupByLibrary.simpleMessage("보상,\nKMD"),
        "rewardsTableStatus": MessageLookupByLibrary.simpleMessage("상태"),
        "rewardsTableTime": MessageLookupByLibrary.simpleMessage("남은 시간"),
        "rewardsTableTitle": MessageLookupByLibrary.simpleMessage("보상 정보:"),
        "rewardsTableUXTO":
            MessageLookupByLibrary.simpleMessage("UTXO amt,\nKMD"),
        "rewardsTimeDays": m93,
        "rewardsTimeHours": m94,
        "rewardsTimeMin": m95,
        "rewardsTitle": MessageLookupByLibrary.simpleMessage("보상 정보"),
        "russianLanguage": MessageLookupByLibrary.simpleMessage("러시아인"),
        "saveMerged": MessageLookupByLibrary.simpleMessage("병함 저장"),
        "scrollToContinue":
            MessageLookupByLibrary.simpleMessage("계속하려면 아래로 스크롤하세요..."),
        "searchFilterCoin": MessageLookupByLibrary.simpleMessage("코인 찾기"),
        "searchFilterSubtitleAVX":
            MessageLookupByLibrary.simpleMessage("Avax 토큰 모두 선택"),
        "searchFilterSubtitleBEP":
            MessageLookupByLibrary.simpleMessage("BEP 토큰 모두 선택"),
        "searchFilterSubtitleCosmos":
            MessageLookupByLibrary.simpleMessage("코스모스 네트워크 모두 선택"),
        "searchFilterSubtitleERC":
            MessageLookupByLibrary.simpleMessage("ERC 토큰 모두 선택"),
        "searchFilterSubtitleETC":
            MessageLookupByLibrary.simpleMessage("ETC 토큰 모두 선택"),
        "searchFilterSubtitleFTM":
            MessageLookupByLibrary.simpleMessage("Fantom 토큰 모두 선택"),
        "searchFilterSubtitleHCO":
            MessageLookupByLibrary.simpleMessage("HecoChain 토큰 모두 선택"),
        "searchFilterSubtitleHRC":
            MessageLookupByLibrary.simpleMessage("Harmony 토큰 모두 선택"),
        "searchFilterSubtitleIris":
            MessageLookupByLibrary.simpleMessage("홍채 네트워크 모두 선택"),
        "searchFilterSubtitleKRC":
            MessageLookupByLibrary.simpleMessage("Kucoin 토큰 모두 선택"),
        "searchFilterSubtitleMVR":
            MessageLookupByLibrary.simpleMessage("Moonriver 토큰 모두 선택"),
        "searchFilterSubtitlePLG":
            MessageLookupByLibrary.simpleMessage("Polygon 토큰 모두 선택"),
        "searchFilterSubtitleQRC":
            MessageLookupByLibrary.simpleMessage("QRC 토큰 모두 선택"),
        "searchFilterSubtitleSBCH":
            MessageLookupByLibrary.simpleMessage("SmartBCH 토큰 모두 선택"),
        "searchFilterSubtitleSLP":
            MessageLookupByLibrary.simpleMessage("모든 SLP 토큰 선택"),
        "searchFilterSubtitleSmartChain":
            MessageLookupByLibrary.simpleMessage("SmartChains 토큰 모두 선택"),
        "searchFilterSubtitleTestCoins":
            MessageLookupByLibrary.simpleMessage("테스트 자산 토큰 모두 선택"),
        "searchFilterSubtitleUBQ":
            MessageLookupByLibrary.simpleMessage("Ubiq 코인 모두 선택"),
        "searchFilterSubtitleZHTLC":
            MessageLookupByLibrary.simpleMessage("모든 ZHTLC 코인을 선택하세요"),
        "searchFilterSubtitleutxo":
            MessageLookupByLibrary.simpleMessage("UTXO 코인 모두 선택"),
        "searchForTicker": MessageLookupByLibrary.simpleMessage("Ticker 찾기"),
        "seconds": MessageLookupByLibrary.simpleMessage("s"),
        "security": MessageLookupByLibrary.simpleMessage("보안"),
        "seeOrders": m96,
        "seeTxHistory": MessageLookupByLibrary.simpleMessage("거래 내역 보기"),
        "seedPhrase": MessageLookupByLibrary.simpleMessage("시드 문구"),
        "seedPhraseTitle":
            MessageLookupByLibrary.simpleMessage("당신의 새로운 시드 문구"),
        "selectCoin": MessageLookupByLibrary.simpleMessage("코인 선택"),
        "selectCoinInfo":
            MessageLookupByLibrary.simpleMessage("당신의 포티폴리오에 추가하고 싶은 코인 선택하기"),
        "selectCoinTitle": MessageLookupByLibrary.simpleMessage("활성화 코인:"),
        "selectCoinToBuy":
            MessageLookupByLibrary.simpleMessage("구매하고 싶은 코인 선택"),
        "selectCoinToSell":
            MessageLookupByLibrary.simpleMessage("판매하고 싶은 코인 선택"),
        "selectDate": MessageLookupByLibrary.simpleMessage("날짜를 선택하세요"),
        "selectFileImport": MessageLookupByLibrary.simpleMessage("파일 선택"),
        "selectLanguage": MessageLookupByLibrary.simpleMessage("언어 선택"),
        "selectPaymentMethod": MessageLookupByLibrary.simpleMessage("지불 방법 선택"),
        "selectedOrder": MessageLookupByLibrary.simpleMessage("선택된 주문:"),
        "sell": MessageLookupByLibrary.simpleMessage("판매"),
        "sellTestCoinWarning": MessageLookupByLibrary.simpleMessage(
            "경고, 진정한 값어치가 없는 테스트 코인을 판매하고 있습니다!"),
        "send": MessageLookupByLibrary.simpleMessage("보내기"),
        "setUpPassword": MessageLookupByLibrary.simpleMessage("비밀번호 만들기"),
        "settingDialogSpan1":
            MessageLookupByLibrary.simpleMessage("이걸 지우시길 원하십니까"),
        "settingDialogSpan2": MessageLookupByLibrary.simpleMessage("지갑?"),
        "settingDialogSpan3":
            MessageLookupByLibrary.simpleMessage("그렇다면, 확실하게 하세요"),
        "settingDialogSpan4":
            MessageLookupByLibrary.simpleMessage("당신의 시드 문구를 기록하세요/"),
        "settingDialogSpan5":
            MessageLookupByLibrary.simpleMessage("미래에 당신의 지갑을 복구하기 위해서."),
        "settingLanguageTitle": MessageLookupByLibrary.simpleMessage("언어"),
        "settings": MessageLookupByLibrary.simpleMessage("설정"),
        "share": MessageLookupByLibrary.simpleMessage("공유"),
        "shareAddress": m97,
        "shouldScanPastTransaction": m98,
        "showAddress": MessageLookupByLibrary.simpleMessage("주소 표시"),
        "showDetails": MessageLookupByLibrary.simpleMessage("상세 보기"),
        "showMyOrders": MessageLookupByLibrary.simpleMessage("나의 주문 보기"),
        "showingOrders": m99,
        "signInWithPassword":
            MessageLookupByLibrary.simpleMessage("비밀번호로 로그인하기"),
        "signInWithSeedPhrase": MessageLookupByLibrary.simpleMessage(
            "비밀번호를 까먹으셨나요? 지갑을 시드로부터 복구하세요"),
        "simple": MessageLookupByLibrary.simpleMessage("심플"),
        "simpleTradeActivate": MessageLookupByLibrary.simpleMessage("활성화"),
        "simpleTradeBuyHint": m100,
        "simpleTradeBuyTitle": MessageLookupByLibrary.simpleMessage("구매"),
        "simpleTradeClose": MessageLookupByLibrary.simpleMessage("거이"),
        "simpleTradeMaxActiveCoins": m101,
        "simpleTradeNotActive": m102,
        "simpleTradeRecieve": MessageLookupByLibrary.simpleMessage("받기"),
        "simpleTradeSellHint": m103,
        "simpleTradeSellTitle": MessageLookupByLibrary.simpleMessage("판매"),
        "simpleTradeSend": MessageLookupByLibrary.simpleMessage("보내기"),
        "simpleTradeShowLess": MessageLookupByLibrary.simpleMessage("덜 보기"),
        "simpleTradeShowMore": MessageLookupByLibrary.simpleMessage("더 보기"),
        "simpleTradeUnableActivate": m104,
        "skip": MessageLookupByLibrary.simpleMessage("스킵"),
        "snackbarDismiss": MessageLookupByLibrary.simpleMessage("해제"),
        "soundCantPlayThatMsg": m105,
        "soundPlayedWhen": m106,
        "soundSettingsLink": MessageLookupByLibrary.simpleMessage("소리"),
        "soundSettingsTitle": MessageLookupByLibrary.simpleMessage("소리 성정"),
        "soundsDialogTitle": MessageLookupByLibrary.simpleMessage("소리들"),
        "soundsDoNotShowAgain":
            MessageLookupByLibrary.simpleMessage("알겠습니다, 더 이상 보여주지 마세요"),
        "soundsExplanation": MessageLookupByLibrary.simpleMessage(
            "스왑 진행 중 및 활성 제조업체 주문이 있을 때 사운드 알림이 들립니다.\n아토믹 교환 프로토콜은 성공적인 거래를 위해 참여자들이 온라인에 있어야 하며, 사운드 알림은 이를 달성하는 데 도움이 됩니다."),
        "soundsNote": MessageLookupByLibrary.simpleMessage(
            "앱플리케이션 성정에서 커스텀 소리를 설정 할 수 있다는 것을 알아두세요."),
        "spanishLanguage": MessageLookupByLibrary.simpleMessage("스페인의"),
        "startDate": MessageLookupByLibrary.simpleMessage("시작일"),
        "startSwap": MessageLookupByLibrary.simpleMessage("스왑 시작"),
        "step": MessageLookupByLibrary.simpleMessage("방법"),
        "success": MessageLookupByLibrary.simpleMessage("성공!"),
        "support": MessageLookupByLibrary.simpleMessage("지원"),
        "supportLinksDesc": m107,
        "swap": MessageLookupByLibrary.simpleMessage("스왑"),
        "swapCurrent": MessageLookupByLibrary.simpleMessage("현재"),
        "swapDetailTitle": MessageLookupByLibrary.simpleMessage("변환 상세 확인"),
        "swapEstimated": MessageLookupByLibrary.simpleMessage("견적"),
        "swapFailed": MessageLookupByLibrary.simpleMessage("스왑 실패"),
        "swapGasActivate": m108,
        "swapGasAmount": m109,
        "swapGasAmountRequired": m110,
        "swapOngoing": MessageLookupByLibrary.simpleMessage("스왑이 진행되고 있습니다"),
        "swapProgress": MessageLookupByLibrary.simpleMessage("진행 상세"),
        "swapStarted": MessageLookupByLibrary.simpleMessage("시작됨"),
        "swapSucceful": MessageLookupByLibrary.simpleMessage("성공적으로 스왑"),
        "swapTotal": MessageLookupByLibrary.simpleMessage("전체"),
        "swapUUID": MessageLookupByLibrary.simpleMessage("UUID 스왑"),
        "switchTheme": MessageLookupByLibrary.simpleMessage("테마 전환"),
        "syncFromDate": MessageLookupByLibrary.simpleMessage("지정된 날짜부터 동기화"),
        "syncFromSaplingActivation":
            MessageLookupByLibrary.simpleMessage("묘목 활성화에서 동기화"),
        "syncNewTransactions": MessageLookupByLibrary.simpleMessage("새 거래 동기화"),
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
        "takerOrder": MessageLookupByLibrary.simpleMessage("테어커 주문"),
        "timeOut": MessageLookupByLibrary.simpleMessage("시간 초과"),
        "titleCreatePassword": MessageLookupByLibrary.simpleMessage("비밀번호 생성"),
        "titleCurrentAsk": MessageLookupByLibrary.simpleMessage("주문 선택됨"),
        "to": MessageLookupByLibrary.simpleMessage("에게"),
        "toAddress": MessageLookupByLibrary.simpleMessage("주소로:"),
        "tooManyAssetsEnabledSpan1":
            MessageLookupByLibrary.simpleMessage("당신의 소유"),
        "tooManyAssetsEnabledSpan2":
            MessageLookupByLibrary.simpleMessage("자산이 활성화 됬습니다. 활성화된 자산 최대치는"),
        "tooManyAssetsEnabledSpan3": MessageLookupByLibrary.simpleMessage(
            ". 새로운 것을 추가하기 전에 비활성화를 해주세요."),
        "tooManyAssetsEnabledTitle":
            MessageLookupByLibrary.simpleMessage("너무 많은 자산이 활성화 되어있습니다"),
        "totalFees": MessageLookupByLibrary.simpleMessage("총 수수료:"),
        "trade": MessageLookupByLibrary.simpleMessage("거래"),
        "tradeCompleted": MessageLookupByLibrary.simpleMessage("스왑 완료됨!"),
        "tradeDetail": MessageLookupByLibrary.simpleMessage("거래 상세"),
        "tradePreimageError":
            MessageLookupByLibrary.simpleMessage("거래 수수료 계산 실패"),
        "tradingFee": MessageLookupByLibrary.simpleMessage("거래 수수료:"),
        "tradingMode": MessageLookupByLibrary.simpleMessage("거래 모드:"),
        "transactionAddress": MessageLookupByLibrary.simpleMessage("거래 주소"),
        "transactionHidden": MessageLookupByLibrary.simpleMessage("숨겨진 거래"),
        "transactionHiddenPhishing": MessageLookupByLibrary.simpleMessage(
            "피싱 시도 가능성으로 인해 이 거래가 숨겨졌습니다."),
        "tryRestarting": MessageLookupByLibrary.simpleMessage(
            "그래도 일부 코인이 활성화되어 있지 않다면, 앱을 재부팅해 보세요."),
        "turkishLanguage": MessageLookupByLibrary.simpleMessage("터키어"),
        "txBlock": MessageLookupByLibrary.simpleMessage("블록"),
        "txConfirmations": MessageLookupByLibrary.simpleMessage("확인"),
        "txConfirmed": MessageLookupByLibrary.simpleMessage("확인됨"),
        "txFee": MessageLookupByLibrary.simpleMessage("수수료"),
        "txFeeTitle": MessageLookupByLibrary.simpleMessage("거래 수수료:"),
        "txHash": MessageLookupByLibrary.simpleMessage("거래 ID"),
        "txLimitExceeded": MessageLookupByLibrary.simpleMessage(
            "요청이 너무 많습니다.\n거래 이력 요구 제한을 초과했습니다.\n나중에 다시 시도해주세요."),
        "txNotConfirmed": MessageLookupByLibrary.simpleMessage("미확인"),
        "txleft": m112,
        "ukrainianLanguage": MessageLookupByLibrary.simpleMessage("우크라이나 인"),
        "unlock": MessageLookupByLibrary.simpleMessage("열기"),
        "unlockFunds": MessageLookupByLibrary.simpleMessage("펀드 열기"),
        "unlockSuccess": m113,
        "unspendable": MessageLookupByLibrary.simpleMessage("사용 불가능"),
        "updatesAvailable":
            MessageLookupByLibrary.simpleMessage("새로운 버전 사용 가능"),
        "updatesChecking": MessageLookupByLibrary.simpleMessage("업데이트 확인중..."),
        "updatesCurrentVersion": m114,
        "updatesNotifAvailable":
            MessageLookupByLibrary.simpleMessage("새로운 버전이 있습니다. 업데이트를 하세요."),
        "updatesNotifAvailableVersion": m115,
        "updatesNotifTitle": MessageLookupByLibrary.simpleMessage("업데이트가 있습니다"),
        "updatesSkip": MessageLookupByLibrary.simpleMessage("지금은 스킵"),
        "updatesTitle": m116,
        "updatesUpToDate":
            MessageLookupByLibrary.simpleMessage("벌서 업데이트 되어있습니다"),
        "updatesUpdate": MessageLookupByLibrary.simpleMessage("업데이트"),
        "uriInsufficientBalanceSpan1":
            MessageLookupByLibrary.simpleMessage("스캔된 것을 위한 잔고가 부족합니다"),
        "uriInsufficientBalanceSpan2":
            MessageLookupByLibrary.simpleMessage("지불 요청."),
        "uriInsufficientBalanceTitle":
            MessageLookupByLibrary.simpleMessage("부족한 잔고"),
        "value": MessageLookupByLibrary.simpleMessage("값:"),
        "version": MessageLookupByLibrary.simpleMessage("버전"),
        "viewInExplorerButton": MessageLookupByLibrary.simpleMessage("익스플로어"),
        "viewSeedAndKeys": MessageLookupByLibrary.simpleMessage("시드 & 개인 키"),
        "volumes": MessageLookupByLibrary.simpleMessage("볼륨"),
        "walletInUse":
            MessageLookupByLibrary.simpleMessage("지갑 이름이 벌서 사용 중 입니다"),
        "walletMaxChar":
            MessageLookupByLibrary.simpleMessage("지갑 이름은 최대 40자가 있어야 합니다"),
        "walletOnly": MessageLookupByLibrary.simpleMessage("오직 지갑만"),
        "warning": MessageLookupByLibrary.simpleMessage("경고!"),
        "warningOkBtn": MessageLookupByLibrary.simpleMessage("네"),
        "warningShareLogs": MessageLookupByLibrary.simpleMessage(
            "경고 - 특별한 경우 이 로그 데이터에는 스왑에 실패한 코인을 사용하는 데 사용할 수 있는 중요한 정보가 포함되어 있습니다!"),
        "weFailedTo": m117,
        "weFailedToActivate": m118,
        "welcomeInfo": m119,
        "welcomeLetSetUp": MessageLookupByLibrary.simpleMessage("이걸 준비해 봅시다!"),
        "welcomeTitle": MessageLookupByLibrary.simpleMessage("환영합니다"),
        "welcomeWallet": MessageLookupByLibrary.simpleMessage("지갑"),
        "willBeRedirected":
            MessageLookupByLibrary.simpleMessage("완료 후 포티폴리오 페이지로 리디렉트 됩니다."),
        "willTakeTime": MessageLookupByLibrary.simpleMessage(
            "이 작업은 시간이 걸리며 앱이 포그라운드에 유지되어야 합니다.\n활성화가 진행되는 동안 앱을 종료하면 문제가 발생할 수 있습니다."),
        "withdraw": MessageLookupByLibrary.simpleMessage("인출"),
        "withdrawCameraAccessText": m120,
        "withdrawCameraAccessTitle":
            MessageLookupByLibrary.simpleMessage("액세스 거부"),
        "withdrawConfirm": MessageLookupByLibrary.simpleMessage("인출 확인"),
        "withdrawConfirmError":
            MessageLookupByLibrary.simpleMessage("무언가 잘못 됬습니다. 나중에 다시 시도하세요."),
        "withdrawValue": m121,
        "wrongCoinSpan1":
            MessageLookupByLibrary.simpleMessage("당신은 지불 QR 코드를 스캔 할려고 합니다"),
        "wrongCoinSpan2": MessageLookupByLibrary.simpleMessage("하지만 당신은"),
        "wrongCoinSpan3": MessageLookupByLibrary.simpleMessage("인출 화면에 있습니다"),
        "wrongCoinTitle": MessageLookupByLibrary.simpleMessage("잘못된 코인"),
        "wrongPassword":
            MessageLookupByLibrary.simpleMessage("비밀번화가 일치하지 않습니다. 다시 시도해주세요."),
        "yes": MessageLookupByLibrary.simpleMessage("네"),
        "you have a fresh order that is trying to match with an existing order":
            MessageLookupByLibrary.simpleMessage(
                "당신은 이미 있는 주문과 일치한 새로운 주문을 찾고 있습니다"),
        "you have an active swap in progress":
            MessageLookupByLibrary.simpleMessage("당신은 진행되고 있는 활성화 스왑이 있습니다"),
        "you have an order that new orders can match with":
            MessageLookupByLibrary.simpleMessage("당신은 새로운 주문을 맞출수 있는 주문이 있습니다"),
        "youAreSending": MessageLookupByLibrary.simpleMessage("당신은 보냅니다:"),
        "youWillReceiveClaim": m122,
        "youWillReceived": MessageLookupByLibrary.simpleMessage("당신은 받습니다:"),
        "yourWallet": MessageLookupByLibrary.simpleMessage("당신의 지갑")
      };
}
