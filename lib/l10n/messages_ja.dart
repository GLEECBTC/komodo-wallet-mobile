// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ja locale. All the
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
  String get localeName => 'ja';

  static m0(protocolName) => "${protocolName} コインをアクティブにしますか?";

  static m1(coinName) => "${coinName}をアクティブ化しています";

  static m2(coinName) => "${coinName} のアクティベーション";

  static m3(protocolName) => "${protocolName} のアクティベーションが進行中です";

  static m4(name) => "${name} の有効化に成功しました!";

  static m5(title) => "${title} 住所の連絡先のみを表示";

  static m6(abbr) => "${abbr} が有効化されていないため、${abbr} アドレスに送金できません。ポートフォリオへどうぞ。";

  static m7(appName) =>
      "いいえ！ ${appName} は非親権者です。秘密鍵、シード フレーズ、PIN などの機密データを保存することはありません。このデータはユーザーのデバイスにのみ保存され、デバイスから離れることはありません。あなたは自分の資産を完全に管理しています。";

  static m8(appName) =>
      "${appName} は、モバイルでは Android と iPhone の両方で利用でき、デスクトップでは <a href=\"https://gleec.com/\">Windows、Mac、Linux オペレーティング システム</a> で利用できます。";

  static m9(appName) =>
      "他の DEX では通常、単一のブロックチェーン ネットワークに基づく資産の取引のみが許可され、プロキシ トークンが使用され、同じ資金で単一の注文のみが許可されます。 ${appName} を使用すると、プロキシ トークンを使用せずに、2 つの異なるブロックチェーン ネットワーク間でネイティブに取引できます。同じ資金で複数の注文を出すこともできます。たとえば、KMD、QTUM、または VRSC で 0.1 BTC を販売できます。最初に約定した注文は、他のすべての注文を自動的にキャンセルします。";

  static m10(appName) =>
      "各スワップの処理時間は、いくつかの要因によって決まります。取引された資産のブロック時間は、各ネットワークによって異なります (通常、ビットコインが最も遅いです)。さらに、ユーザーはセキュリティ設定をカスタマイズできます。たとえば、${appName} に、わずか 3 回の確認後に KMD トランザクションを最終と見なすように依頼できます。これにより、<a href=\"https://gleec.com/\">公証</a>。";

  static m11(appName) =>
      "${appName} で取引する際に考慮すべき 2 つの手数料カテゴリがあります。 1. ${appName} は、テイカー オーダーの取引手数料として約 0.13% (取引量の 1/777、ただし 0.0001 以上) を請求し、メイカー オーダーの手数料はゼロです。 2. メーカーとテイカーの両方が、アトミック スワップ トランザクションを行う際に、関連するブロックチェーンに通常のネットワーク料金を支払う必要があります。ネットワーク手数料は、選択した取引ペアによって大きく異なります。";

  static m12(name, link, appName, appCompanyShort) =>
      "はい！ ${appName} は、<a href=\"${link}\">${appCompanyShort} ${name}</a> を通じてサポートを提供しています。チームとコミュニティはいつでも喜んでお手伝いします!";

  static m13(appName) =>
      "いいえ！ ${appName} は完全に分散化されています。第三者によるユーザー アクセスを制限することはできません。";

  static m14(appName, appCompanyShort) =>
      "${appName} は ${appCompanyShort} チームによって開発されました。 ${appCompanyShort} は、アトミック スワップ、Delayed Proof of Work、相互運用可能なマルチチェーン アーキテクチャなどの革新的なソリューションに取り組んでいる、最も確立されたブロックチェーン プロジェクトの 1 つです。";

  static m15(appName) =>
      "絶対！詳細については、<a href=\"https://gleec.com/\">開発者向けドキュメント</a>をご覧いただくか、パートナーシップに関するお問い合わせでご連絡ください。特定の技術的な質問がありますか? ${appName} 開発者コミュニティはいつでもお手伝いいたします。";

  static m16(coinName1, coinName2) => "${coinName1}/${coinName2} に基づく";

  static m17(batteryLevelCritical) =>
      "交換を安全に行うには、バッテリーの充電が重要です (${batteryLevelCritical}%)。充電してからもう一度お試しください。";

  static m18(batteryLevelLow) =>
      "バッテリーの充電が ${batteryLevelLow}% 未満です。電話の充電を検討してください。";

  static m19(seconde) => "オーダーマッチが進行中です。${seconde} 秒お待ちください!";

  static m20(index) => "${index}単語を入力してください";

  static m21(index) => "シード フレーズの ${index} 単語は何ですか?";

  static m22(coin) => "${coin} のアクティベーションがキャンセルされました";

  static m23(coin) => "${coin} を正常にアクティブ化しました";

  static m24(protocolName) => "${protocolName} コインが有効化されました";

  static m25(protocolName) => "${protocolName} コインが正常に有効化されました";

  static m26(protocolName) => "${protocolName} コインは有効化されていません";

  static m27(name) => "連絡先 ${name} を削除してもよろしいですか?";

  static m28(iUnderstand) =>
      "カスタム シード フレーズは、生成された BIP39 準拠のシード フレーズまたは秘密鍵 (WIF) よりも安全性が低く、クラックされやすい可能性があります。リスクを理解し、自分が何をしているかを理解していることを確認するには、下のボックスに「${iUnderstand}」と入力してください。";

  static m29(coinName) => "${coinName} の取引手数料を受け取る";

  static m30(coinName) => "${coinName} の取引手数料を送信します";

  static m31(abbr) => "入力 ${abbr} アドレス";

  static m32(selected, remains) =>
      "${remains} を引き続き有効にすることができます。選択済み: ${selected}";

  static m33(gas) => "ガスが不足しています - 少なくとも ${gas} Gwei を使用してください";

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

  static m48(coinAbbr) => "${coinAbbr} のアクティベーションをキャンセルできませんでした";

  static m49(coin) => "${coin} フォーセットにリクエストを送信しています...";

  static m50(appCompanyShort) => "${appCompanyShort} ニュース";

  static m51(value) => "料金は ${value} までである必要があります";

  static m52(coin) => "${coin} 手数料";

  static m53(coin) => "${coin}をアクティベートしてください。";

  static m54(value) => "グウェイは ${value} までである必要があります";

  static m55(coinName) => "受信 ${coinName} txs 保護設定";

  static m56(abbr) => "${abbr} 取引手数料を支払うのに十分な残高がありません";

  static m57(coin) => "無効な ${coin} アドレスです";

  static m58(coinAbbr) => "${coinAbbr} は利用できません:(";

  static m59(coinName) => "❗注意！ ${coinName} の市場の 24 時間の取引高は 10,000 ドル未満です。";

  static m60(value) => "制限は最大 ${value} である必要があります";

  static m61(coinName, number) => "最低販売額は ${number} ${coinName} です";

  static m62(coinName, number) => "最低購入金額は ${number} ${coinName} です";

  static m63(buyCoin, buyAmount, sellCoin, sellAmount) =>
      "注文の最小額は ${buyAmount} ${buyCoin} (${sellAmount} ${sellCoin}) です";

  static m64(coinName, number) => "最低販売額は ${number} ${coinName} です";

  static m65(minValue, coin) => "${minValue} ${coin} より大きくなければなりません";

  static m66(appName) =>
      "現在、携帯データ ネットワークを使用しており、${appName} P2P ネットワークに参加すると、インターネット トラフィックが消費されることに注意してください。携帯電話のデータ プランが高額な場合は、WiFi ネットワークを使用することをお勧めします。";

  static m67(coin) => "最初に ${coin} を有効にして、残高をチャージしてください";

  static m68(number) => "${number} オーダーを作成:";

  static m69(coin) => "${coin} の残高が少なすぎます";

  static m70(coin, fee) =>
      "料金を支払うのに十分な ${coin} がありません。 MIN 残高は ${fee} ${coin} です";

  static m71(coinName) => "${coinName} の金額を入力してください。";

  static m72(coin) => "取引に十分な ${coin} がありません!";

  static m73(sell, buy) => "${sell}/${buy} スワップが正常に完了しました";

  static m74(sell, buy) => "${sell}/${buy} スワップに失敗しました";

  static m75(sell, buy) => "${sell}/${buy} スワップ開始";

  static m76(sell, buy) => "${sell}/${buy} スワップがタイムアウトしました";

  static m77(coin) => "${coin} のトランザクションを受け取りました!";

  static m78(assets) => "${assets} アセット";

  static m79(coin) => "${coin} の注文はすべてキャンセルされます。";

  static m80(delta) => "便宜: CEX +${delta}%";

  static m81(delta) => "高価: CEX ${delta}%";

  static m82(fill) => "${fill}% 埋められました";

  static m83(coin) => "金額 (${coin})";

  static m84(coin) => "価格 (${coin})";

  static m85(coin) => "合計 (${coin})";

  static m86(abbr) => "${abbr} はアクティブではありません。有効にしてからもう一度お試しください。";

  static m87(appName) => "${appName} を使用できるデバイスはどれですか?";

  static m88(appName) => "${appName} での取引は、他の DEX での取引とどう違うのですか?";

  static m89(appName) => "${appName} の料金はどのように計算されますか?";

  static m90(appName) => "${appName} の背後にいるのは誰ですか?";

  static m91(appName) => "${appName} で独自のホワイトラベル取引所を開発することは可能ですか?";

  static m92(amount) => "成功！ ${amount} KMD を受け取りました。";

  static m93(dd) => "${dd} 日";

  static m94(hh, minutes) => "${hh}時 ${minutes}分";

  static m95(mm) => "${mm}分";

  static m96(amount) => "クリックして ${amount} 件の注文を表示";

  static m97(coinName, address) => "私の ${coinName} アドレス: \n${address}";

  static m98(coin) => "過去の ${coin} 取引をスキャンしますか?";

  static m99(count, maxCount) => "${maxCount} 件中 ${count} 件の注文を表示しています。";

  static m100(coin) => "購入する${coin}の金額を入力してください";

  static m101(maxCoins) => "アクティブなコインの最大数は ${maxCoins} です。いくつか無効にしてください。";

  static m102(coin) => "${coin} はアクティブではありません!";

  static m103(coin) => "売却する${coin}の金額を入力してください";

  static m104(coin) => "${coin} をアクティベートできません";

  static m105(description) =>
      "mp3またはwavファイルを選択してください。 ${description} になったら再生します。";

  static m106(description) => "${description} の場合にプレイ";

  static m107(appName) =>
      "ご不明な点がある場合、または ${appName} アプリで技術的な問題を発見したと思われる場合は、報告してチームからサポートを受けることができます。";

  static m108(coin) => "最初に ${coin} を有効にして残高をチャージしてください";

  static m109(coin) => "${coin} の残高は、取引手数料を支払うのに十分ではありません。";

  static m110(coin, amount) =>
      "${coin} の残高は、取引手数料を支払うのに十分ではありません。${coin} ${amount} が必要です。";

  static m111(name) => "どの ${name} トランザクションを同期しますか?";

  static m112(left) => "残りのトランザクション: ${left}";

  static m113(amnt, hash) => "${amnt} 資金のロックを解除しました - TX: ${hash}";

  static m114(version) => "バージョン ${version} を使用しています";

  static m115(version) => "バージョン ${version} が利用可能です。更新してください。";

  static m116(appName) => "${appName} の更新";

  static m117(coinAbbr) => "${coinAbbr} をアクティベートできませんでした";

  static m118(coinAbbr) => "${coinAbbr} をアクティベートできませんでした。アプリを再起動してもう一度お試しください。";

  static m119(appName) =>
      "${appName} モバイルは、ネイティブの第 3 世代 DEX 機能などを備えた次世代のマルチコイン ウォレットです。";

  static m120(appName) =>
      "以前にカメラへの ${appName} アクセスを拒否しました。 QR コードのスキャンを続行するには、電話の設定でカメラの許可を手動で変更してください。";

  static m121(amount, coinName) => "WITHDRAW ${amount} ${coinName}";

  static m122(amount, coin) => "${amount} ${coin} を受け取ります";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "Active": MessageLookupByLibrary.simpleMessage("アクティブ"),
        "Applause": MessageLookupByLibrary.simpleMessage("拍手"),
        "Can\'t play that": MessageLookupByLibrary.simpleMessage("それは再生できません"),
        "Failed": MessageLookupByLibrary.simpleMessage("失敗した"),
        "Maker": MessageLookupByLibrary.simpleMessage("メーカー"),
        "Optional": MessageLookupByLibrary.simpleMessage("オプション"),
        "Play at full volume":
            MessageLookupByLibrary.simpleMessage("フルボリュームで再生"),
        "Sound": MessageLookupByLibrary.simpleMessage("音"),
        "Taker": MessageLookupByLibrary.simpleMessage("テイカー"),
        "a swap fails": MessageLookupByLibrary.simpleMessage("スワップが失敗する"),
        "a swap runs to completion":
            MessageLookupByLibrary.simpleMessage("スワップは完了するまで実行されます"),
        "accepteula": MessageLookupByLibrary.simpleMessage("EULA に同意する"),
        "accepttac": MessageLookupByLibrary.simpleMessage("利用規約に同意する"),
        "activateAccessBiometric":
            MessageLookupByLibrary.simpleMessage("生体認証保護を有効にする"),
        "activateAccessPin":
            MessageLookupByLibrary.simpleMessage("PIN 保護を有効にする"),
        "activateCoins": m0,
        "activating": m1,
        "activation": m2,
        "activationCancelled":
            MessageLookupByLibrary.simpleMessage("コインのアクティベーションがキャンセルされました"),
        "activationInProgress": m3,
        "addCoin": MessageLookupByLibrary.simpleMessage("コインを有効にする"),
        "addingCoinSuccess": m4,
        "addressAdd": MessageLookupByLibrary.simpleMessage("住所を追加"),
        "addressBook": MessageLookupByLibrary.simpleMessage("住所録"),
        "addressBookEmpty": MessageLookupByLibrary.simpleMessage("アドレス帳が空です"),
        "addressBookFilter": m5,
        "addressBookTitle": MessageLookupByLibrary.simpleMessage("住所録"),
        "addressCoinInactive": m6,
        "addressNotFound": MessageLookupByLibrary.simpleMessage("何も見つかりません"),
        "addressSelectCoin": MessageLookupByLibrary.simpleMessage("コインを選択"),
        "addressSend": MessageLookupByLibrary.simpleMessage("受取人住所"),
        "advanced": MessageLookupByLibrary.simpleMessage("高度"),
        "all": MessageLookupByLibrary.simpleMessage("全て"),
        "allPastTransactions": MessageLookupByLibrary.simpleMessage(
            "ウォレットには過去の取引が表示されます。すべてのブロックがダウンロードされてスキャンされるため、これにはかなりのストレージと時間がかかります。"),
        "allowCustomSeed":
            MessageLookupByLibrary.simpleMessage("カスタム シードを許可する"),
        "alreadyExists": MessageLookupByLibrary.simpleMessage("もう存在している"),
        "amount": MessageLookupByLibrary.simpleMessage("額"),
        "amountToSell": MessageLookupByLibrary.simpleMessage("売却金額"),
        "answer_1": m7,
        "answer_10": m8,
        "answer_2": m9,
        "answer_3": m10,
        "answer_4": MessageLookupByLibrary.simpleMessage(
            "はい。各アトミック スワップを正常に完了するには、インターネットへの接続を維持し、アプリを実行している必要があります (通常、接続が非常に短時間中断しても問題ありません)。そうしないと、Maker の場合は取引キャンセルのリスクがあり、Taker の場合は資金を失うリスクがあります。アトミック スワップ プロトコルでは、両方の参加者がオンライン状態を維持し、関与するブロックチェーンを監視して、プロセスがアトミック状態を維持する必要があります。"),
        "answer_5": m11,
        "answer_6": m12,
        "answer_7": m13,
        "answer_8": m14,
        "answer_9": m15,
        "areYouSure": MessageLookupByLibrary.simpleMessage("本気ですか？"),
        "authenticate": MessageLookupByLibrary.simpleMessage("認証する"),
        "automaticRedirected": MessageLookupByLibrary.simpleMessage(
            "アクティベーションの再試行プロセスが完了すると、ポートフォリオ ページに自動的にリダイレクトされます。"),
        "availableVolume": MessageLookupByLibrary.simpleMessage("最大ボリューム"),
        "back": MessageLookupByLibrary.simpleMessage("戻る"),
        "backupTitle": MessageLookupByLibrary.simpleMessage("バックアップ"),
        "basedOnCoinRatio": m16,
        "batteryCriticalError": m17,
        "batteryLowWarning": m18,
        "batterySavingWarning": MessageLookupByLibrary.simpleMessage(
            "お使いの携帯電話はバッテリー節約モードになっています。このモードを無効にするか、アプリケーションをバックグラウンドにしないでください。そうしないと、アプリが OS によって強制終了され、スワップが失敗する可能性があります。"),
        "bestAvailableRate": MessageLookupByLibrary.simpleMessage("為替レート"),
        "builtKomodo": MessageLookupByLibrary.simpleMessage("コモドに建てられた"),
        "builtOnKmd": MessageLookupByLibrary.simpleMessage("コモドに建てられた"),
        "buy": MessageLookupByLibrary.simpleMessage("買う"),
        "buyOrderType":
            MessageLookupByLibrary.simpleMessage("一致しない場合はMakerに変換"),
        "buySuccessWaiting":
            MessageLookupByLibrary.simpleMessage("スワップが発行されました。お待ちください!"),
        "buySuccessWaitingError": m19,
        "buyTestCoinWarning": MessageLookupByLibrary.simpleMessage(
            "警告、本当の価値のないテスト コインを購入しても構わないと思っています。"),
        "camoPinBioProtectionConflict": MessageLookupByLibrary.simpleMessage(
            "カモフラージュ PIN とバイオ プロテクションを同時に有効にすることはできません。"),
        "camoPinBioProtectionConflictTitle":
            MessageLookupByLibrary.simpleMessage("Camo PIN と Bio 保護の競合。"),
        "camoPinChange":
            MessageLookupByLibrary.simpleMessage("カモフラージュ PIN の変更"),
        "camoPinCreate":
            MessageLookupByLibrary.simpleMessage("カモフラージュ PIN の作成"),
        "camoPinDesc": MessageLookupByLibrary.simpleMessage(
            "カモフラージュ PIN でアプリのロックを解除すると、偽の LOW 残高が表示され、カモフラージュ PIN 構成オプションは設定に表示されません。"),
        "camoPinInvalid":
            MessageLookupByLibrary.simpleMessage("カモフラージュ PIN が無効です"),
        "camoPinLink": MessageLookupByLibrary.simpleMessage("カモフラージュ PIN"),
        "camoPinNotFound":
            MessageLookupByLibrary.simpleMessage("カモフラージュ PIN が見つかりません"),
        "camoPinOff": MessageLookupByLibrary.simpleMessage("オフ"),
        "camoPinOn": MessageLookupByLibrary.simpleMessage("の上"),
        "camoPinSaved":
            MessageLookupByLibrary.simpleMessage("カモフラージュ PIN を保存しました"),
        "camoPinTitle": MessageLookupByLibrary.simpleMessage("カモフラージュ PIN"),
        "camoSetupSubtitle":
            MessageLookupByLibrary.simpleMessage("新しいカモフラージュ PIN を入力してください"),
        "camoSetupTitle":
            MessageLookupByLibrary.simpleMessage("カモフラージュ PIN の設定"),
        "camouflageSetup":
            MessageLookupByLibrary.simpleMessage("カモフラージュ PIN の設定"),
        "cancel": MessageLookupByLibrary.simpleMessage("キャンセル"),
        "cancelActivation":
            MessageLookupByLibrary.simpleMessage("アクティベーションのキャンセル"),
        "cancelActivationQuestion":
            MessageLookupByLibrary.simpleMessage("アクティベーションをキャンセルしてもよろしいですか?"),
        "cancelButton": MessageLookupByLibrary.simpleMessage("キャンセル"),
        "cancelOrder": MessageLookupByLibrary.simpleMessage("注文をキャンセルする"),
        "candleChartError": MessageLookupByLibrary.simpleMessage(
            "エラーが発生しました。あとでもう一度試してみてください。"),
        "cantDeleteDefaultCoinOk": MessageLookupByLibrary.simpleMessage("Ok"),
        "cantDeleteDefaultCoinSpan": MessageLookupByLibrary.simpleMessage(
            "デフォルトのコインです。デフォルトのコインを無効にすることはできません。"),
        "cantDeleteDefaultCoinTitle":
            MessageLookupByLibrary.simpleMessage("無効にできません"),
        "cex": MessageLookupByLibrary.simpleMessage("CEX"),
        "cexChangeRate": MessageLookupByLibrary.simpleMessage("CEX為替レート"),
        "cexData": MessageLookupByLibrary.simpleMessage("CEXデータ"),
        "cexDataDesc": MessageLookupByLibrary.simpleMessage(
            "このアイコンでマークされた市場データ (価格、チャートなど) は、サードパーティのソース (<a href=\"https://www.coingecko.com/\">coingecko.com</a>、<a href=\" https://openrates.io/\">openrates.io</a>)。"),
        "cexRate": MessageLookupByLibrary.simpleMessage("CEXレート"),
        "changePin": MessageLookupByLibrary.simpleMessage("PIN コードの変更"),
        "checkForUpdates": MessageLookupByLibrary.simpleMessage("アップデートを確認"),
        "checkOut": MessageLookupByLibrary.simpleMessage("チェックアウト"),
        "checkSeedPhrase":
            MessageLookupByLibrary.simpleMessage("シード フレーズを確認する"),
        "checkSeedPhraseButton1": MessageLookupByLibrary.simpleMessage("継続する"),
        "checkSeedPhraseButton2":
            MessageLookupByLibrary.simpleMessage("戻ってもう一度確認する"),
        "checkSeedPhraseHint": m20,
        "checkSeedPhraseInfo": MessageLookupByLibrary.simpleMessage(
            "シード フレーズは重要です。そのため、正確であることを確認したいと考えています。いつでも簡単にウォレットを復元できるように、シード フレーズについて 3 つの異なる質問をします。"),
        "checkSeedPhraseSubtile": m21,
        "checkSeedPhraseTitle":
            MessageLookupByLibrary.simpleMessage("シードフレーズを再確認しましょう"),
        "chineseLanguage": MessageLookupByLibrary.simpleMessage("中国語"),
        "claim": MessageLookupByLibrary.simpleMessage("請求"),
        "claimTitle": MessageLookupByLibrary.simpleMessage("KMD 報酬を受け取りますか？"),
        "clickToSee": MessageLookupByLibrary.simpleMessage("クリックしてご覧ください"),
        "clipboard": MessageLookupByLibrary.simpleMessage("クリップボードにコピーしました"),
        "clipboardCopy": MessageLookupByLibrary.simpleMessage("クリップボードにコピー"),
        "close": MessageLookupByLibrary.simpleMessage("近い"),
        "closeMessage": MessageLookupByLibrary.simpleMessage("エラーメッセージを閉じる"),
        "closePreview": MessageLookupByLibrary.simpleMessage("プレビューを閉じる"),
        "code": MessageLookupByLibrary.simpleMessage("コード："),
        "cofirmCancelActivation":
            MessageLookupByLibrary.simpleMessage("アクティベーションをキャンセルしてもよろしいですか?"),
        "coinActivationCancelled": m22,
        "coinActivationSuccessfull": m23,
        "coinSelectClear": MessageLookupByLibrary.simpleMessage("クリア"),
        "coinSelectNotFound":
            MessageLookupByLibrary.simpleMessage("アクティブなコインはありません"),
        "coinSelectTitle": MessageLookupByLibrary.simpleMessage("コインを選択"),
        "coinsActivatedLimitReached":
            MessageLookupByLibrary.simpleMessage("アセットの最大数を選択しました"),
        "coinsAreActivated": m24,
        "coinsAreActivatedSuccessfully": m25,
        "coinsAreNotActivated": m26,
        "comingSoon": MessageLookupByLibrary.simpleMessage("近日公開..."),
        "commingsoon": MessageLookupByLibrary.simpleMessage("TXの詳細は近日公開！"),
        "commingsoonGeneral": MessageLookupByLibrary.simpleMessage("詳細は近日公開！"),
        "commissionFee": MessageLookupByLibrary.simpleMessage("手数料"),
        "comparedTo24hrCex":
            MessageLookupByLibrary.simpleMessage("平均と比較して。 24時間CEX価格"),
        "comparedToCex": MessageLookupByLibrary.simpleMessage("CEXとの比較"),
        "configureWallet":
            MessageLookupByLibrary.simpleMessage("ウォレットを設定しています。お待ちください..."),
        "confirm": MessageLookupByLibrary.simpleMessage("確認"),
        "confirmCamouflageSetup":
            MessageLookupByLibrary.simpleMessage("カモフラージュ PIN の確認"),
        "confirmCancel":
            MessageLookupByLibrary.simpleMessage("注文をキャンセルしてもよろしいですか"),
        "confirmPassword": MessageLookupByLibrary.simpleMessage("パスワードを認証する"),
        "confirmPin": MessageLookupByLibrary.simpleMessage("PIN コードの確認"),
        "confirmSeed": MessageLookupByLibrary.simpleMessage("シード フレーズの確認"),
        "confirmeula": MessageLookupByLibrary.simpleMessage(
            "下のボタンをクリックすることで、「EULA」と「利用規約」を読んだことを確認し、これらに同意したことになります"),
        "connecting": MessageLookupByLibrary.simpleMessage("接続中..."),
        "contactCancel": MessageLookupByLibrary.simpleMessage("キャンセル"),
        "contactDelete": MessageLookupByLibrary.simpleMessage("連絡先を削除"),
        "contactDeleteBtn": MessageLookupByLibrary.simpleMessage("消去"),
        "contactDeleteWarning": m27,
        "contactDiscardBtn": MessageLookupByLibrary.simpleMessage("破棄"),
        "contactEdit": MessageLookupByLibrary.simpleMessage("編集"),
        "contactExit": MessageLookupByLibrary.simpleMessage("出口"),
        "contactExitWarning":
            MessageLookupByLibrary.simpleMessage("変更を破棄しますか?"),
        "contactNotFound": MessageLookupByLibrary.simpleMessage("連絡先が見つかりません"),
        "contactSave": MessageLookupByLibrary.simpleMessage("保存"),
        "contactTitle": MessageLookupByLibrary.simpleMessage("連絡先の詳細"),
        "contactTitleName": MessageLookupByLibrary.simpleMessage("名前"),
        "contract": MessageLookupByLibrary.simpleMessage("契約"),
        "convert": MessageLookupByLibrary.simpleMessage("変換"),
        "couldNotLaunchUrl":
            MessageLookupByLibrary.simpleMessage("URLを起動できませんでした"),
        "couldntImportError":
            MessageLookupByLibrary.simpleMessage("インポートできませんでした:"),
        "create": MessageLookupByLibrary.simpleMessage("トレード"),
        "createAWallet": MessageLookupByLibrary.simpleMessage("ウォレットを作成する"),
        "createContact": MessageLookupByLibrary.simpleMessage("連絡先の作成"),
        "createPin": MessageLookupByLibrary.simpleMessage("PIN の作成"),
        "currency": MessageLookupByLibrary.simpleMessage("通貨"),
        "currencyDialogTitle": MessageLookupByLibrary.simpleMessage("通貨"),
        "currentValue": MessageLookupByLibrary.simpleMessage("現在の価値："),
        "customFee": MessageLookupByLibrary.simpleMessage("カスタム料金"),
        "customFeeWarning": MessageLookupByLibrary.simpleMessage(
            "あなたが何をしているのかを知っている場合にのみ、カスタム料金を使用してください!"),
        "customSeedWarning": m28,
        "dPow": MessageLookupByLibrary.simpleMessage("Gleec dPoW セキュリティ"),
        "date": MessageLookupByLibrary.simpleMessage("日にち"),
        "decryptingWallet": MessageLookupByLibrary.simpleMessage("ウォレットの復号化"),
        "delete": MessageLookupByLibrary.simpleMessage("消去"),
        "deleteConfirm": MessageLookupByLibrary.simpleMessage("非アクティブ化の確認"),
        "deleteSpan1": MessageLookupByLibrary.simpleMessage("削除しますか"),
        "deleteSpan2": MessageLookupByLibrary.simpleMessage(
            "ポートフォリオから？一致しない注文はすべてキャンセルされます。"),
        "deleteSpan3": MessageLookupByLibrary.simpleMessage(" も無効化されます"),
        "deleteWallet": MessageLookupByLibrary.simpleMessage("ウォレットの削除"),
        "deletingWallet":
            MessageLookupByLibrary.simpleMessage("ウォレットを削除しています..."),
        "detailedFeesReceiveCoinTransactionFee": m29,
        "detailedFeesSendCoinTransactionFee": m30,
        "detailedFeesSendTradingFeeTransactionFee":
            MessageLookupByLibrary.simpleMessage("送信取引手数料 取引手数料"),
        "detailedFeesTradingFee": MessageLookupByLibrary.simpleMessage("取引手数料"),
        "details": MessageLookupByLibrary.simpleMessage("詳細"),
        "deutscheLanguage": MessageLookupByLibrary.simpleMessage("ドイツ語"),
        "developerTitle": MessageLookupByLibrary.simpleMessage("デベロッパー"),
        "dex": MessageLookupByLibrary.simpleMessage("デックス"),
        "dexIsNotAvailable":
            MessageLookupByLibrary.simpleMessage("このコインではDEXは利用できません"),
        "disableScreenshots":
            MessageLookupByLibrary.simpleMessage("スクリーンショット/プレビューを無効にする"),
        "disclaimerAndTos": MessageLookupByLibrary.simpleMessage("免責事項と利用規約"),
        "doNotCloseTheAppTapForMoreInfo": MessageLookupByLibrary.simpleMessage(
            "アプリを閉じないでください。詳細についてはタップしてください..."),
        "done": MessageLookupByLibrary.simpleMessage("終わり"),
        "dontAskAgain": MessageLookupByLibrary.simpleMessage("二度と聞かない"),
        "dontWantPassword": MessageLookupByLibrary.simpleMessage("パスワードはいらない"),
        "duration": MessageLookupByLibrary.simpleMessage("間隔"),
        "editContact": MessageLookupByLibrary.simpleMessage("連絡先を編集"),
        "emptyCoin": m31,
        "emptyExportPass":
            MessageLookupByLibrary.simpleMessage("暗号化パスワードを空にすることはできません"),
        "emptyImportPass":
            MessageLookupByLibrary.simpleMessage("パスワードを空にすることはできません"),
        "emptyName":
            MessageLookupByLibrary.simpleMessage("連絡先の名前を空にすることはできません"),
        "emptyWallet":
            MessageLookupByLibrary.simpleMessage("ウォレット名を空にすることはできません"),
        "enable": m32,
        "enableNotificationsForActivationProgress":
            MessageLookupByLibrary.simpleMessage(
                "アクティベーションの進行状況に関する最新情報を取得するには、通知を有効にしてください。"),
        "enableTestCoins": MessageLookupByLibrary.simpleMessage("テストコインを有効にする"),
        "enablingTooManyAssetsSpan1":
            MessageLookupByLibrary.simpleMessage("あなたが持っている"),
        "enablingTooManyAssetsSpan2":
            MessageLookupByLibrary.simpleMessage("アセットが有効になっており、有効にしようとしています"),
        "enablingTooManyAssetsSpan3":
            MessageLookupByLibrary.simpleMessage("もっと。有効なアセットの上限は"),
        "enablingTooManyAssetsSpan4": MessageLookupByLibrary.simpleMessage(
            ".新しいものを追加する前に、いくつかを無効にしてください。"),
        "enablingTooManyAssetsTitle":
            MessageLookupByLibrary.simpleMessage("あまりにも多くのアセットを有効にしようとしています"),
        "encryptingWallet": MessageLookupByLibrary.simpleMessage("暗号化ウォレット"),
        "englishLanguage": MessageLookupByLibrary.simpleMessage("英語"),
        "enterNewPinCode":
            MessageLookupByLibrary.simpleMessage("新しい PIN を入力してください"),
        "enterOldPinCode":
            MessageLookupByLibrary.simpleMessage("古い PIN を入力してください"),
        "enterPinCode": MessageLookupByLibrary.simpleMessage("PINコードを入力してください"),
        "enterSeedPhrase":
            MessageLookupByLibrary.simpleMessage("シードフレーズを入力してください"),
        "enterSellAmount":
            MessageLookupByLibrary.simpleMessage("最初に販売金額を入力する必要があります"),
        "enterpassword":
            MessageLookupByLibrary.simpleMessage("続行するには、パスワードを入力してください。"),
        "errorAmountBalance": MessageLookupByLibrary.simpleMessage("バランスが足りない"),
        "errorNotAValidAddress":
            MessageLookupByLibrary.simpleMessage("有効な住所ではありません"),
        "errorNotAValidAddressSegWit": MessageLookupByLibrary.simpleMessage(
            "Segwit アドレスはサポートされていません (まだ)"),
        "errorNotEnoughGas": m33,
        "errorTryAgain":
            MessageLookupByLibrary.simpleMessage("エラーです。もう一度お試しください"),
        "errorTryLater":
            MessageLookupByLibrary.simpleMessage("エラーです。後で試してください"),
        "errorValueEmpty": MessageLookupByLibrary.simpleMessage("値が高すぎるか低すぎる"),
        "errorValueNotEmpty":
            MessageLookupByLibrary.simpleMessage("データを入力してください"),
        "estimateValue": MessageLookupByLibrary.simpleMessage("推定合計値"),
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
            MessageLookupByLibrary.simpleMessage("例: build case level ..."),
        "exchangeExpedient": MessageLookupByLibrary.simpleMessage("都合のよい"),
        "exchangeExpensive": MessageLookupByLibrary.simpleMessage("高い"),
        "exchangeIdentical": MessageLookupByLibrary.simpleMessage("CEXと同じ"),
        "exchangeRate": MessageLookupByLibrary.simpleMessage("為替レート："),
        "exchangeTitle": MessageLookupByLibrary.simpleMessage("両替"),
        "exportButton": MessageLookupByLibrary.simpleMessage("書き出す"),
        "exportContactsTitle": MessageLookupByLibrary.simpleMessage("連絡先"),
        "exportDesc": MessageLookupByLibrary.simpleMessage(
            "暗号化ファイルにエクスポートするアイテムを選択してください。"),
        "exportLink": MessageLookupByLibrary.simpleMessage("書き出す"),
        "exportNotesTitle": MessageLookupByLibrary.simpleMessage("ノート"),
        "exportSuccessTitle":
            MessageLookupByLibrary.simpleMessage("アイテムは正常にエクスポートされました:"),
        "exportSwapsTitle": MessageLookupByLibrary.simpleMessage("スワップ"),
        "exportTitle": MessageLookupByLibrary.simpleMessage("書き出す"),
        "failedToCancelActivation": m48,
        "fakeBalanceAmt": MessageLookupByLibrary.simpleMessage("偽の残高:"),
        "faqTitle": MessageLookupByLibrary.simpleMessage("よくある質問"),
        "faucetError": MessageLookupByLibrary.simpleMessage("エラー"),
        "faucetInProgress": m49,
        "faucetName": MessageLookupByLibrary.simpleMessage("蛇口"),
        "faucetSuccess": MessageLookupByLibrary.simpleMessage("成功"),
        "faucetTimedOut": MessageLookupByLibrary.simpleMessage("要求がタイムアウトしました"),
        "feedNewsTab": MessageLookupByLibrary.simpleMessage("ニュース"),
        "feedNotFound": MessageLookupByLibrary.simpleMessage("ここには何もない"),
        "feedNotifTitle": m50,
        "feedReadMore": MessageLookupByLibrary.simpleMessage("続きを読む..."),
        "feedTab": MessageLookupByLibrary.simpleMessage("餌"),
        "feedTitle": MessageLookupByLibrary.simpleMessage("ニュースフィード"),
        "feedUnableToProceed":
            MessageLookupByLibrary.simpleMessage("ニュースの更新を続行できません"),
        "feedUnableToUpdate":
            MessageLookupByLibrary.simpleMessage("ニュースの更新を取得できません"),
        "feedUpToDate": MessageLookupByLibrary.simpleMessage("すでに最新"),
        "feedUpdated": MessageLookupByLibrary.simpleMessage("ニュースフィードが更新されました"),
        "feedback": MessageLookupByLibrary.simpleMessage("ログファイルの共有"),
        "feesError": m51,
        "filtersAll": MessageLookupByLibrary.simpleMessage("全て"),
        "filtersButton": MessageLookupByLibrary.simpleMessage("フィルター"),
        "filtersClearAll":
            MessageLookupByLibrary.simpleMessage("すべてのフィルターをクリア"),
        "filtersFailed": MessageLookupByLibrary.simpleMessage("失敗した"),
        "filtersFrom": MessageLookupByLibrary.simpleMessage("開始日"),
        "filtersMaker": MessageLookupByLibrary.simpleMessage("メーカー"),
        "filtersReceive": MessageLookupByLibrary.simpleMessage("コインを受け取る"),
        "filtersSell": MessageLookupByLibrary.simpleMessage("コインを売る"),
        "filtersStatus": MessageLookupByLibrary.simpleMessage("状態"),
        "filtersSuccessful": MessageLookupByLibrary.simpleMessage("成功"),
        "filtersTaker": MessageLookupByLibrary.simpleMessage("テイカー"),
        "filtersTo": MessageLookupByLibrary.simpleMessage("現在まで"),
        "filtersType": MessageLookupByLibrary.simpleMessage("テイカー/メーカー"),
        "fingerprint": MessageLookupByLibrary.simpleMessage("指紋"),
        "finishingUp": MessageLookupByLibrary.simpleMessage("完了しました、お待ちください"),
        "foundQrCode": MessageLookupByLibrary.simpleMessage("QRコードが見つかりました"),
        "frenchLanguage": MessageLookupByLibrary.simpleMessage("フランス語"),
        "from": MessageLookupByLibrary.simpleMessage("から"),
        "futureTransactions": MessageLookupByLibrary.simpleMessage(
            "公開キーに関連付けられたアクティベーション後に行われる今後のトランザクションは同期されます。これは最も迅速なオプションであり、必要なストレージの量も最小限です。"),
        "gasFee": m52,
        "gasLimit": MessageLookupByLibrary.simpleMessage("ガスリミット"),
        "gasNotActive": m53,
        "gasPrice": MessageLookupByLibrary.simpleMessage("ガス料金"),
        "generalPinNotActive": MessageLookupByLibrary.simpleMessage(
            "一般的な PIN 保護はアクティブではありません。カモフラージュモードは利用できません。 PIN 保護を有効にしてください。"),
        "getBackupPhrase": MessageLookupByLibrary.simpleMessage(
            "重要: 続行する前に、シード フレーズをバックアップしてください。"),
        "gettingTxWait":
            MessageLookupByLibrary.simpleMessage("トランザクションを取得しています。お待ちください"),
        "goToPorfolio": MessageLookupByLibrary.simpleMessage("ポートフォリオに移動"),
        "gweiError": m54,
        "helpLink": MessageLookupByLibrary.simpleMessage("ヘルプ"),
        "helpTitle": MessageLookupByLibrary.simpleMessage("ヘルプとサポート"),
        "hideBalance": MessageLookupByLibrary.simpleMessage("残高を非表示"),
        "hintConfirmPassword":
            MessageLookupByLibrary.simpleMessage("パスワードを認証する"),
        "hintCreatePassword": MessageLookupByLibrary.simpleMessage("パスワードの作成"),
        "hintCurrentPassword": MessageLookupByLibrary.simpleMessage("現在のパスワード"),
        "hintEnterPassword":
            MessageLookupByLibrary.simpleMessage("パスワードを入力してください"),
        "hintEnterSeedPhrase":
            MessageLookupByLibrary.simpleMessage("シード フレーズを入力してください"),
        "hintNameYourWallet":
            MessageLookupByLibrary.simpleMessage("ウォレットに名前を付ける"),
        "hintPassword": MessageLookupByLibrary.simpleMessage("パスワード"),
        "history": MessageLookupByLibrary.simpleMessage("歴史"),
        "hours": MessageLookupByLibrary.simpleMessage("時間"),
        "hungarianLanguage": MessageLookupByLibrary.simpleMessage("ハンガリー語"),
        "iUnderstand": MessageLookupByLibrary.simpleMessage("理解します"),
        "importButton": MessageLookupByLibrary.simpleMessage("輸入"),
        "importDecryptError":
            MessageLookupByLibrary.simpleMessage("無効なパスワードまたは破損したデータ"),
        "importDesc": MessageLookupByLibrary.simpleMessage("輸入する品目:"),
        "importFileNotFound":
            MessageLookupByLibrary.simpleMessage("ファイルが見つかりません"),
        "importInvalidSwapData": MessageLookupByLibrary.simpleMessage(
            "無効なスワップ データです。有効なスワップ ステータス JSON ファイルを提供してください。"),
        "importLink": MessageLookupByLibrary.simpleMessage("輸入"),
        "importLoadDesc":
            MessageLookupByLibrary.simpleMessage("インポートする暗号化ファイルを選択してください。"),
        "importLoadSwapDesc": MessageLookupByLibrary.simpleMessage(
            "インポートするプレーン テキスト スワップ ファイルを選択してください。"),
        "importLoading": MessageLookupByLibrary.simpleMessage("開いています..."),
        "importPassCancel": MessageLookupByLibrary.simpleMessage("キャンセル"),
        "importPassOk": MessageLookupByLibrary.simpleMessage("Ok"),
        "importPassword": MessageLookupByLibrary.simpleMessage("パスワード"),
        "importSingleSwapLink":
            MessageLookupByLibrary.simpleMessage("シングル スワップのインポート"),
        "importSingleSwapTitle": MessageLookupByLibrary.simpleMessage("輸入スワップ"),
        "importSomeItemsSkippedWarning":
            MessageLookupByLibrary.simpleMessage("一部のアイテムがスキップされました"),
        "importSuccessTitle":
            MessageLookupByLibrary.simpleMessage("アイテムが正常にインポートされました:"),
        "importSwapFailed":
            MessageLookupByLibrary.simpleMessage("スワップのインポートに失敗しました"),
        "importSwapJsonDecodingError":
            MessageLookupByLibrary.simpleMessage("json ファイルのデコード中にエラーが発生しました"),
        "importTitle": MessageLookupByLibrary.simpleMessage("輸入"),
        "incomingTransactionsProtectionSettings": m55,
        "infoPasswordDialog": MessageLookupByLibrary.simpleMessage(
            "安全なパスワードを使用し、同じデバイスに保存しないでください"),
        "infoTrade1": MessageLookupByLibrary.simpleMessage(
            "スワップリクエストは元に戻すことができず、最終イベントです!"),
        "infoTrade2": MessageLookupByLibrary.simpleMessage(
            "スワップには最大 60 分かかる場合があります。このアプリケーションを閉じないでください！"),
        "infoWalletPassword": MessageLookupByLibrary.simpleMessage(
            "セキュリティ上の理由から、ウォレット暗号化用のパスワードを提供する必要があります。"),
        "insufficientBalanceToPay": m56,
        "insufficientText":
            MessageLookupByLibrary.simpleMessage("この注文に必要な最小ボリュームは"),
        "insufficientTitle": MessageLookupByLibrary.simpleMessage("ボリューム不足"),
        "internetRefreshButton": MessageLookupByLibrary.simpleMessage("リフレッシュ"),
        "internetRestored":
            MessageLookupByLibrary.simpleMessage("インターネット接続が回復しました"),
        "invalidCoinAddress": m57,
        "invalidSwap": MessageLookupByLibrary.simpleMessage("スワップを続行できません"),
        "invalidSwapDetailsLink": MessageLookupByLibrary.simpleMessage("詳細"),
        "isUnavailable": m58,
        "japaneseLanguage": MessageLookupByLibrary.simpleMessage("日本"),
        "koreanLanguage": MessageLookupByLibrary.simpleMessage("韓国語"),
        "language": MessageLookupByLibrary.simpleMessage("言語"),
        "latestTxs": MessageLookupByLibrary.simpleMessage("最新の取引"),
        "legalTitle": MessageLookupByLibrary.simpleMessage("法的"),
        "less": MessageLookupByLibrary.simpleMessage("以下"),
        "lessThanCaution": m59,
        "limitError": m60,
        "loading": MessageLookupByLibrary.simpleMessage("読み込んでいます..."),
        "loadingOrderbook":
            MessageLookupByLibrary.simpleMessage("オーダーブックを読み込んでいます..."),
        "lockScreen": MessageLookupByLibrary.simpleMessage("画面がロックされています"),
        "lockScreenAuth": MessageLookupByLibrary.simpleMessage("認証してください！"),
        "login": MessageLookupByLibrary.simpleMessage("ログインする"),
        "logout": MessageLookupByLibrary.simpleMessage("ログアウト"),
        "logoutOnExit": MessageLookupByLibrary.simpleMessage("終了時にログアウト"),
        "logoutWarning":
            MessageLookupByLibrary.simpleMessage("今すぐログアウトしてもよろしいですか?"),
        "logoutsettings": MessageLookupByLibrary.simpleMessage("ログアウト設定"),
        "longMinutes": MessageLookupByLibrary.simpleMessage("分"),
        "makeAorder": MessageLookupByLibrary.simpleMessage("注文する"),
        "makerDetailsCancel":
            MessageLookupByLibrary.simpleMessage("注文をキャンセルする"),
        "makerDetailsCreated": MessageLookupByLibrary.simpleMessage("で作成"),
        "makerDetailsFor": MessageLookupByLibrary.simpleMessage("受け取る"),
        "makerDetailsId": MessageLookupByLibrary.simpleMessage("オーダーID"),
        "makerDetailsNoSwaps":
            MessageLookupByLibrary.simpleMessage("この注文で開始されたスワップはありません"),
        "makerDetailsPrice": MessageLookupByLibrary.simpleMessage("価格"),
        "makerDetailsSell": MessageLookupByLibrary.simpleMessage("売る"),
        "makerDetailsSwaps":
            MessageLookupByLibrary.simpleMessage("この注文で開始されたスワップ"),
        "makerDetailsTitle": MessageLookupByLibrary.simpleMessage("メーカー注文内容"),
        "makerOrder": MessageLookupByLibrary.simpleMessage("メーカー注文"),
        "marketplace": MessageLookupByLibrary.simpleMessage("市場"),
        "marketsChart": MessageLookupByLibrary.simpleMessage("チャート"),
        "marketsDepth": MessageLookupByLibrary.simpleMessage("深さ"),
        "marketsNoAsks": MessageLookupByLibrary.simpleMessage("質問が見つかりません"),
        "marketsNoBids": MessageLookupByLibrary.simpleMessage("入札が見つかりませんでした"),
        "marketsOrderDetails": MessageLookupByLibrary.simpleMessage("注文詳細"),
        "marketsOrderbook": MessageLookupByLibrary.simpleMessage("オーダーブック"),
        "marketsPrice": MessageLookupByLibrary.simpleMessage("価格"),
        "marketsSelectCoins":
            MessageLookupByLibrary.simpleMessage("コインを選択してください"),
        "marketsTab": MessageLookupByLibrary.simpleMessage("マーケット"),
        "marketsTitle": MessageLookupByLibrary.simpleMessage("市場"),
        "matchExportPass":
            MessageLookupByLibrary.simpleMessage("パスワードが一致する必要があります"),
        "matchingCamoChange": MessageLookupByLibrary.simpleMessage("変化する"),
        "matchingCamoPinError": MessageLookupByLibrary.simpleMessage(
            "一般暗証番号とカモフラージュ暗証番号は同じです。カモフラージュモードは利用できません。カモフラージュ PIN を変更してください。"),
        "matchingCamoTitle": MessageLookupByLibrary.simpleMessage("無効な PIN"),
        "max": MessageLookupByLibrary.simpleMessage("最大"),
        "maxOrder": MessageLookupByLibrary.simpleMessage("最大注文量:"),
        "media": MessageLookupByLibrary.simpleMessage("ニュース"),
        "mediaBrowse": MessageLookupByLibrary.simpleMessage("ブラウズ"),
        "mediaBrowseFeed": MessageLookupByLibrary.simpleMessage("フィードを閲覧します"),
        "mediaBy": MessageLookupByLibrary.simpleMessage("に"),
        "mediaNotSavedDescription":
            MessageLookupByLibrary.simpleMessage("保存した記事はありません"),
        "mediaSaved": MessageLookupByLibrary.simpleMessage("保存しました"),
        "memo": MessageLookupByLibrary.simpleMessage("メモ"),
        "merge": MessageLookupByLibrary.simpleMessage("マージ"),
        "mergedValue": MessageLookupByLibrary.simpleMessage("マージされた値:"),
        "milliseconds": MessageLookupByLibrary.simpleMessage("MS"),
        "min": MessageLookupByLibrary.simpleMessage("最小"),
        "minOrder": MessageLookupByLibrary.simpleMessage("最小注文量:"),
        "minValue": m61,
        "minValueBuy": m62,
        "minValueOrder": m63,
        "minValueSell": m64,
        "minVolumeInput": m65,
        "minVolumeIsTDH":
            MessageLookupByLibrary.simpleMessage("販売額より低くなければなりません"),
        "minVolumeTitle": MessageLookupByLibrary.simpleMessage("必要な最小ボリューム"),
        "minVolumeToggle":
            MessageLookupByLibrary.simpleMessage("カスタム最小ボリュームを使用"),
        "minimizingWillTerminate": MessageLookupByLibrary.simpleMessage(
            "警告: iOS でアプリを最小化すると、アクティベーション プロセスが終了します。"),
        "minutes": MessageLookupByLibrary.simpleMessage("メートル"),
        "mobileDataWarning": m66,
        "moreInfo": MessageLookupByLibrary.simpleMessage("より詳しい情報"),
        "moreTab": MessageLookupByLibrary.simpleMessage("もっと"),
        "multiActivateGas": m67,
        "multiBaseAmtPlaceholder": MessageLookupByLibrary.simpleMessage("額"),
        "multiBasePlaceholder": MessageLookupByLibrary.simpleMessage("コイン"),
        "multiBaseSelectTitle": MessageLookupByLibrary.simpleMessage("売る"),
        "multiConfirmCancel": MessageLookupByLibrary.simpleMessage("キャンセル"),
        "multiConfirmConfirm": MessageLookupByLibrary.simpleMessage("確認"),
        "multiConfirmTitle": m68,
        "multiCreate": MessageLookupByLibrary.simpleMessage("作成"),
        "multiCreateOrder": MessageLookupByLibrary.simpleMessage("注文"),
        "multiCreateOrders": MessageLookupByLibrary.simpleMessage("注文"),
        "multiEthFee": MessageLookupByLibrary.simpleMessage("費用"),
        "multiFiatCancel": MessageLookupByLibrary.simpleMessage("キャンセル"),
        "multiFiatDesc":
            MessageLookupByLibrary.simpleMessage("受け取る金額を入力してください:"),
        "multiFiatFill": MessageLookupByLibrary.simpleMessage("オートフィル"),
        "multiFixErrors":
            MessageLookupByLibrary.simpleMessage("続行する前にすべてのエラーを修正してください"),
        "multiInvalidAmt": MessageLookupByLibrary.simpleMessage("金額が無効です"),
        "multiInvalidSellAmt":
            MessageLookupByLibrary.simpleMessage("販売金額が無効です"),
        "multiLowGas": m69,
        "multiLowerThanFee": m70,
        "multiMaxSellAmt": MessageLookupByLibrary.simpleMessage("最大販売額は"),
        "multiMinReceiveAmt": MessageLookupByLibrary.simpleMessage("最小受け取り金額は"),
        "multiMinSellAmt": MessageLookupByLibrary.simpleMessage("最小販売額は"),
        "multiReceiveTitle": MessageLookupByLibrary.simpleMessage("受け取る："),
        "multiSellTitle": MessageLookupByLibrary.simpleMessage("売る："),
        "multiTab": MessageLookupByLibrary.simpleMessage("マルチ"),
        "multiTableAmt": MessageLookupByLibrary.simpleMessage("金額を受け取ります。"),
        "multiTablePrice": MessageLookupByLibrary.simpleMessage("価格/CEX"),
        "networkFee": MessageLookupByLibrary.simpleMessage("ネットワーク料金"),
        "newAccount": MessageLookupByLibrary.simpleMessage("新しいアカウント"),
        "newAccountUpper": MessageLookupByLibrary.simpleMessage("新しいアカウント"),
        "newValue": MessageLookupByLibrary.simpleMessage("新しい値:"),
        "newsFeed": MessageLookupByLibrary.simpleMessage("ニュースフィード"),
        "next": MessageLookupByLibrary.simpleMessage("次"),
        "no": MessageLookupByLibrary.simpleMessage("いいえ"),
        "noArticles":
            MessageLookupByLibrary.simpleMessage("ニュースはありません。後でもう一度確認してください。"),
        "noCoinFound": MessageLookupByLibrary.simpleMessage("コインが見つかりません"),
        "noFunds": MessageLookupByLibrary.simpleMessage("資金がない"),
        "noFundsDetected":
            MessageLookupByLibrary.simpleMessage("資金がありません - 入金してください。"),
        "noInternet": MessageLookupByLibrary.simpleMessage("インターネット接続なし"),
        "noItemsToExport": MessageLookupByLibrary.simpleMessage("項目が選択されていません"),
        "noItemsToImport": MessageLookupByLibrary.simpleMessage("項目が選択されていません"),
        "noMatchingOrders":
            MessageLookupByLibrary.simpleMessage("一致する注文が見つかりません"),
        "noOrder": m71,
        "noOrderAvailable": MessageLookupByLibrary.simpleMessage("クリックして注文を作成"),
        "noOrders":
            MessageLookupByLibrary.simpleMessage("注文はありません。取引に行ってください。"),
        "noRewardYet": MessageLookupByLibrary.simpleMessage(
            "報酬は請求できません - 1 時間後にもう一度お試しください。"),
        "noRewards": MessageLookupByLibrary.simpleMessage("請求可能な報酬はありません"),
        "noSuchCoin": MessageLookupByLibrary.simpleMessage("そのようなコインはありません"),
        "noSwaps": MessageLookupByLibrary.simpleMessage("履歴はありません。"),
        "noTxs": MessageLookupByLibrary.simpleMessage("取引なし"),
        "nonNumericInput":
            MessageLookupByLibrary.simpleMessage("値は数値でなければなりません"),
        "none": MessageLookupByLibrary.simpleMessage("なし"),
        "notEnoughGas": m72,
        "notEnoughtBalanceForFee": MessageLookupByLibrary.simpleMessage(
            "手数料に十分な残高がありません - 少額で取引してください"),
        "noteOnOrder":
            MessageLookupByLibrary.simpleMessage("注: 一致した注文は再度キャンセルできません"),
        "notePlaceholder": MessageLookupByLibrary.simpleMessage("メモを追加"),
        "noteTitle": MessageLookupByLibrary.simpleMessage("ノート"),
        "nothingFound": MessageLookupByLibrary.simpleMessage("何も見つかりません"),
        "notifSwapCompletedText": m73,
        "notifSwapCompletedTitle":
            MessageLookupByLibrary.simpleMessage("スワップ完了"),
        "notifSwapFailedText": m74,
        "notifSwapFailedTitle":
            MessageLookupByLibrary.simpleMessage("スワップに失敗しました"),
        "notifSwapStartedText": m75,
        "notifSwapStartedTitle":
            MessageLookupByLibrary.simpleMessage("新しいスワップが開始されました"),
        "notifSwapStatusTitle":
            MessageLookupByLibrary.simpleMessage("スワップ ステータスが変更されました"),
        "notifSwapTimeoutText": m76,
        "notifSwapTimeoutTitle":
            MessageLookupByLibrary.simpleMessage("スワップ タイムアウト"),
        "notifTxText": m77,
        "notifTxTitle": MessageLookupByLibrary.simpleMessage("着信トランザクション"),
        "numberAssets": m78,
        "officialPressRelease":
            MessageLookupByLibrary.simpleMessage("公式プレスリリース"),
        "okButton": MessageLookupByLibrary.simpleMessage("Ok"),
        "oldLogsDelete": MessageLookupByLibrary.simpleMessage("消去"),
        "oldLogsTitle": MessageLookupByLibrary.simpleMessage("古いログ"),
        "oldLogsUsed": MessageLookupByLibrary.simpleMessage("使用スペース"),
        "openMessage": MessageLookupByLibrary.simpleMessage("エラーメッセージを開く"),
        "orderBookLess": MessageLookupByLibrary.simpleMessage("少ない"),
        "orderBookMore": MessageLookupByLibrary.simpleMessage("もっと"),
        "orderCancel": m79,
        "orderCreated": MessageLookupByLibrary.simpleMessage("オーダーが作成されました"),
        "orderCreatedInfo":
            MessageLookupByLibrary.simpleMessage("注文が正常に作成されました"),
        "orderDetailsAddress": MessageLookupByLibrary.simpleMessage("住所"),
        "orderDetailsCancel": MessageLookupByLibrary.simpleMessage("キャンセル"),
        "orderDetailsExpedient": m80,
        "orderDetailsExpensive": m81,
        "orderDetailsFor": MessageLookupByLibrary.simpleMessage("為に"),
        "orderDetailsIdentical": MessageLookupByLibrary.simpleMessage("CEXと同じ"),
        "orderDetailsMin": MessageLookupByLibrary.simpleMessage("分。"),
        "orderDetailsPrice": MessageLookupByLibrary.simpleMessage("価格"),
        "orderDetailsReceive": MessageLookupByLibrary.simpleMessage("受け取る"),
        "orderDetailsSelect": MessageLookupByLibrary.simpleMessage("選択する"),
        "orderDetailsSells": MessageLookupByLibrary.simpleMessage("売る"),
        "orderDetailsSettings": MessageLookupByLibrary.simpleMessage(
            "シングルタップで詳細を開き、ロングタップで注文を選択します"),
        "orderDetailsSpend": MessageLookupByLibrary.simpleMessage("費やす"),
        "orderDetailsTitle": MessageLookupByLibrary.simpleMessage("詳細"),
        "orderFilled": m82,
        "orderMatched": MessageLookupByLibrary.simpleMessage("一致した注文"),
        "orderMatching": MessageLookupByLibrary.simpleMessage("オーダーマッチング"),
        "orderTypePartial": MessageLookupByLibrary.simpleMessage("注文"),
        "orderTypeUnknown": MessageLookupByLibrary.simpleMessage("不明な型順"),
        "orders": MessageLookupByLibrary.simpleMessage("注文"),
        "ordersActive": MessageLookupByLibrary.simpleMessage("アクティブ"),
        "ordersHistory": MessageLookupByLibrary.simpleMessage("歴史"),
        "ordersTableAmount": m83,
        "ordersTablePrice": m84,
        "ordersTableTotal": m85,
        "overwrite": MessageLookupByLibrary.simpleMessage("上書き"),
        "ownOrder": MessageLookupByLibrary.simpleMessage("これはあなた自身の注文です！"),
        "paidFromBalance": MessageLookupByLibrary.simpleMessage("残高から支払われる:"),
        "paidFromVolume":
            MessageLookupByLibrary.simpleMessage("受け取ったボリュームから支払われる:"),
        "paidWith": MessageLookupByLibrary.simpleMessage("で支払った"),
        "passwordRequirement": MessageLookupByLibrary.simpleMessage(
            "パスワードには、小文字 1 つ、大文字 1 つ、特殊記号 1 つを含む 12 文字以上を含める必要があります。"),
        "pastTransactionsFromDate": MessageLookupByLibrary.simpleMessage(
            "ウォレットには、指定した日付以降に行われた過去の取引が表示されます。"),
        "paymentUriDetailsAccept": MessageLookupByLibrary.simpleMessage("支払い"),
        "paymentUriDetailsAcceptQuestion":
            MessageLookupByLibrary.simpleMessage("この取引を受け入れますか？"),
        "paymentUriDetailsAddressSpan":
            MessageLookupByLibrary.simpleMessage("住所へ"),
        "paymentUriDetailsAmountSpan":
            MessageLookupByLibrary.simpleMessage("額："),
        "paymentUriDetailsCoinSpan":
            MessageLookupByLibrary.simpleMessage("コイン："),
        "paymentUriDetailsDeny": MessageLookupByLibrary.simpleMessage("キャンセル"),
        "paymentUriDetailsTitle":
            MessageLookupByLibrary.simpleMessage("支払いが要求されました"),
        "paymentUriInactiveCoin": m86,
        "placeOrder": MessageLookupByLibrary.simpleMessage("ご注文"),
        "pleaseAcceptAllCoinActivationRequests":
            MessageLookupByLibrary.simpleMessage(
                "特別なコインの有効化リクエストをすべて受け入れるか、コインの選択を解除してください。"),
        "pleaseAddCoin": MessageLookupByLibrary.simpleMessage("コインを追加してください"),
        "pleaseRestart": MessageLookupByLibrary.simpleMessage(
            "アプリを再起動してもう一度試すか、下のボタンを押してください。"),
        "portfolio": MessageLookupByLibrary.simpleMessage("ポートフォリオ"),
        "poweredOnKmd": MessageLookupByLibrary.simpleMessage("コモドによって供給"),
        "price": MessageLookupByLibrary.simpleMessage("価格"),
        "privateKey": MessageLookupByLibrary.simpleMessage("秘密鍵"),
        "privateKeys": MessageLookupByLibrary.simpleMessage("秘密鍵"),
        "protectionCtrlConfirmations":
            MessageLookupByLibrary.simpleMessage("確認"),
        "protectionCtrlCustom":
            MessageLookupByLibrary.simpleMessage("カスタム保護設定を使用する"),
        "protectionCtrlOff": MessageLookupByLibrary.simpleMessage("オフ"),
        "protectionCtrlOn": MessageLookupByLibrary.simpleMessage("オン"),
        "protectionCtrlWarning": MessageLookupByLibrary.simpleMessage(
            "警告、このアトミック スワップは dPoW で保護されていません。"),
        "pubkey": MessageLookupByLibrary.simpleMessage("公開鍵"),
        "qrCodeScanner": MessageLookupByLibrary.simpleMessage("QRコードスキャナー"),
        "question_1": MessageLookupByLibrary.simpleMessage("私の秘密鍵を保管しますか?"),
        "question_10": m87,
        "question_2": m88,
        "question_3": MessageLookupByLibrary.simpleMessage(
            "各アトミック スワップにはどのくらいの時間がかかりますか?"),
        "question_4":
            MessageLookupByLibrary.simpleMessage("スワップ中はオンラインである必要がありますか?"),
        "question_5": m89,
        "question_6":
            MessageLookupByLibrary.simpleMessage("ユーザーサポートは提供していますか？"),
        "question_7": MessageLookupByLibrary.simpleMessage("国の制限はありますか？"),
        "question_8": m90,
        "question_9": m91,
        "rebrandingAnnouncement": MessageLookupByLibrary.simpleMessage(
            "新しい時代です！ 「AtomicDEX」から「Gleec Wallet」に正式に名前を変更しました"),
        "receive": MessageLookupByLibrary.simpleMessage("受け取る"),
        "receiveLower": MessageLookupByLibrary.simpleMessage("受け取る"),
        "recommendSeedMessage":
            MessageLookupByLibrary.simpleMessage("オフラインで保存することをお勧めします。"),
        "remove": MessageLookupByLibrary.simpleMessage("無効にする"),
        "requestedTrade": MessageLookupByLibrary.simpleMessage("依頼された取引"),
        "reset": MessageLookupByLibrary.simpleMessage("クリア"),
        "resetTitle": MessageLookupByLibrary.simpleMessage("フォームをリセット"),
        "restoreWallet": MessageLookupByLibrary.simpleMessage("戻す"),
        "retryActivating":
            MessageLookupByLibrary.simpleMessage("すべてのコインの有効化を再試行しています..."),
        "retryAll": MessageLookupByLibrary.simpleMessage("すべてのアクティブ化を再試行"),
        "rewardsButton": MessageLookupByLibrary.simpleMessage("報酬を受け取る"),
        "rewardsCancel": MessageLookupByLibrary.simpleMessage("キャンセル"),
        "rewardsError":
            MessageLookupByLibrary.simpleMessage("エラーが発生しました。後でもう一度やり直してください。"),
        "rewardsInProgressLong":
            MessageLookupByLibrary.simpleMessage("取引が進行中です"),
        "rewardsInProgressShort": MessageLookupByLibrary.simpleMessage("処理"),
        "rewardsLowAmountLong":
            MessageLookupByLibrary.simpleMessage("UTXOの金額が10KMD未満"),
        "rewardsLowAmountShort":
            MessageLookupByLibrary.simpleMessage("<10 KMD"),
        "rewardsOneHourLong":
            MessageLookupByLibrary.simpleMessage("まだ1時間が経過していない"),
        "rewardsOneHourShort": MessageLookupByLibrary.simpleMessage("<1時間"),
        "rewardsPopupOk": MessageLookupByLibrary.simpleMessage("Ok"),
        "rewardsPopupTitle": MessageLookupByLibrary.simpleMessage("報酬ステータス:"),
        "rewardsReadMore":
            MessageLookupByLibrary.simpleMessage("KMDアクティブユーザー特典について詳しく見る"),
        "rewardsReceive": MessageLookupByLibrary.simpleMessage("受け取る"),
        "rewardsSuccess": m92,
        "rewardsTableFiat": MessageLookupByLibrary.simpleMessage("フィアット"),
        "rewardsTableRewards": MessageLookupByLibrary.simpleMessage("リワード、KMD"),
        "rewardsTableStatus": MessageLookupByLibrary.simpleMessage("状態"),
        "rewardsTableTime": MessageLookupByLibrary.simpleMessage("残り時間"),
        "rewardsTableTitle": MessageLookupByLibrary.simpleMessage("特典情報:"),
        "rewardsTableUXTO": MessageLookupByLibrary.simpleMessage("UTXO金額、KMD"),
        "rewardsTimeDays": m93,
        "rewardsTimeHours": m94,
        "rewardsTimeMin": m95,
        "rewardsTitle": MessageLookupByLibrary.simpleMessage("特典情報"),
        "russianLanguage": MessageLookupByLibrary.simpleMessage("ロシア"),
        "saveMerged": MessageLookupByLibrary.simpleMessage("結合して保存"),
        "scrollToContinue":
            MessageLookupByLibrary.simpleMessage("続行するには一番下までスクロールします..."),
        "searchFilterCoin": MessageLookupByLibrary.simpleMessage("コインを探す"),
        "searchFilterSubtitleAVX":
            MessageLookupByLibrary.simpleMessage("すべての Avax トークンを選択"),
        "searchFilterSubtitleBEP":
            MessageLookupByLibrary.simpleMessage("すべての BEP トークンを選択"),
        "searchFilterSubtitleCosmos":
            MessageLookupByLibrary.simpleMessage("すべて選択 コスモネットワーク"),
        "searchFilterSubtitleERC":
            MessageLookupByLibrary.simpleMessage("すべてのERCトークンを選択"),
        "searchFilterSubtitleETC":
            MessageLookupByLibrary.simpleMessage("すべてのETCトークンを選択"),
        "searchFilterSubtitleFTM":
            MessageLookupByLibrary.simpleMessage("すべてのファントムトークンを選択"),
        "searchFilterSubtitleHCO":
            MessageLookupByLibrary.simpleMessage("すべての HecoChain トークンを選択"),
        "searchFilterSubtitleHRC":
            MessageLookupByLibrary.simpleMessage("すべてのハーモニートークンを選択"),
        "searchFilterSubtitleIris":
            MessageLookupByLibrary.simpleMessage("アイリスネットワークをすべて選択"),
        "searchFilterSubtitleKRC":
            MessageLookupByLibrary.simpleMessage("すべての Kucoin トークンを選択"),
        "searchFilterSubtitleMVR":
            MessageLookupByLibrary.simpleMessage("ムーンリバートークンをすべて選択"),
        "searchFilterSubtitlePLG":
            MessageLookupByLibrary.simpleMessage("すべてのポリゴン トークンを選択する"),
        "searchFilterSubtitleQRC":
            MessageLookupByLibrary.simpleMessage("すべての QRC トークンを選択"),
        "searchFilterSubtitleSBCH":
            MessageLookupByLibrary.simpleMessage("すべての SmartBCH トークンを選択"),
        "searchFilterSubtitleSLP":
            MessageLookupByLibrary.simpleMessage("すべての SLP トークンを選択します"),
        "searchFilterSubtitleSmartChain":
            MessageLookupByLibrary.simpleMessage("すべての SmartChain を選択"),
        "searchFilterSubtitleTestCoins":
            MessageLookupByLibrary.simpleMessage("すべてのテスト アセットを選択"),
        "searchFilterSubtitleUBQ":
            MessageLookupByLibrary.simpleMessage("すべての Ubiq コインを選択"),
        "searchFilterSubtitleZHTLC":
            MessageLookupByLibrary.simpleMessage("すべての ZHTLC コインを選択します"),
        "searchFilterSubtitleutxo":
            MessageLookupByLibrary.simpleMessage("すべてのUTXOコインを選択"),
        "searchForTicker": MessageLookupByLibrary.simpleMessage("ティッカーを検索"),
        "seconds": MessageLookupByLibrary.simpleMessage("s"),
        "security": MessageLookupByLibrary.simpleMessage("安全"),
        "seeOrders": m96,
        "seeTxHistory": MessageLookupByLibrary.simpleMessage("取引履歴を見る"),
        "seedPhrase": MessageLookupByLibrary.simpleMessage("シードフレーズ"),
        "seedPhraseTitle":
            MessageLookupByLibrary.simpleMessage("あなたの新しいシードフレーズ"),
        "selectCoin": MessageLookupByLibrary.simpleMessage("コインを選択"),
        "selectCoinInfo":
            MessageLookupByLibrary.simpleMessage("ポートフォリオに追加するコインを選択します。"),
        "selectCoinTitle": MessageLookupByLibrary.simpleMessage("コインを有効にする:"),
        "selectCoinToBuy": MessageLookupByLibrary.simpleMessage("購入したいコインを選択"),
        "selectCoinToSell": MessageLookupByLibrary.simpleMessage("売りたいコインを選択"),
        "selectDate": MessageLookupByLibrary.simpleMessage("日付を選択してください"),
        "selectFileImport": MessageLookupByLibrary.simpleMessage("ファイルを選ぶ"),
        "selectLanguage": MessageLookupByLibrary.simpleMessage("言語を選択する"),
        "selectPaymentMethod":
            MessageLookupByLibrary.simpleMessage("お支払い方法を選択してください"),
        "selectedOrder": MessageLookupByLibrary.simpleMessage("選択した注文:"),
        "sell": MessageLookupByLibrary.simpleMessage("売る"),
        "sellTestCoinWarning": MessageLookupByLibrary.simpleMessage(
            "警告、実際の価値のないテスト コインを販売しても構わないと思っています。"),
        "send": MessageLookupByLibrary.simpleMessage("送信"),
        "setUpPassword": MessageLookupByLibrary.simpleMessage("パスワードを設定する"),
        "settingDialogSpan1":
            MessageLookupByLibrary.simpleMessage("消去してもよろしいですか"),
        "settingDialogSpan2": MessageLookupByLibrary.simpleMessage("財布？"),
        "settingDialogSpan3":
            MessageLookupByLibrary.simpleMessage("もしそうなら、あなたを確認してください"),
        "settingDialogSpan4":
            MessageLookupByLibrary.simpleMessage("シード フレーズを記録します。"),
        "settingDialogSpan5":
            MessageLookupByLibrary.simpleMessage("将来的にウォレットを復元するため。"),
        "settingLanguageTitle": MessageLookupByLibrary.simpleMessage("言語"),
        "settings": MessageLookupByLibrary.simpleMessage("設定"),
        "share": MessageLookupByLibrary.simpleMessage("シェア"),
        "shareAddress": m97,
        "shouldScanPastTransaction": m98,
        "showAddress": MessageLookupByLibrary.simpleMessage("住所を表示"),
        "showDetails": MessageLookupByLibrary.simpleMessage("詳細を表示"),
        "showMyOrders": MessageLookupByLibrary.simpleMessage("私の注文を表示"),
        "showingOrders": m99,
        "signInWithPassword":
            MessageLookupByLibrary.simpleMessage("パスワードでサインイン"),
        "signInWithSeedPhrase": MessageLookupByLibrary.simpleMessage(
            "パスワードをお忘れですか？シードからウォレットを復元する"),
        "simple": MessageLookupByLibrary.simpleMessage("単純"),
        "simpleTradeActivate": MessageLookupByLibrary.simpleMessage("活性化"),
        "simpleTradeBuyHint": m100,
        "simpleTradeBuyTitle": MessageLookupByLibrary.simpleMessage("買う"),
        "simpleTradeClose": MessageLookupByLibrary.simpleMessage("近い"),
        "simpleTradeMaxActiveCoins": m101,
        "simpleTradeNotActive": m102,
        "simpleTradeRecieve": MessageLookupByLibrary.simpleMessage("受け取る"),
        "simpleTradeSellHint": m103,
        "simpleTradeSellTitle": MessageLookupByLibrary.simpleMessage("売る"),
        "simpleTradeSend": MessageLookupByLibrary.simpleMessage("送信"),
        "simpleTradeShowLess": MessageLookupByLibrary.simpleMessage("表示を減らす"),
        "simpleTradeShowMore": MessageLookupByLibrary.simpleMessage("もっと見せる"),
        "simpleTradeUnableActivate": m104,
        "skip": MessageLookupByLibrary.simpleMessage("スキップ"),
        "snackbarDismiss": MessageLookupByLibrary.simpleMessage("解散"),
        "soundCantPlayThatMsg": m105,
        "soundPlayedWhen": m106,
        "soundSettingsLink": MessageLookupByLibrary.simpleMessage("音"),
        "soundSettingsTitle": MessageLookupByLibrary.simpleMessage("サウンド設定"),
        "soundsDialogTitle": MessageLookupByLibrary.simpleMessage("サウンド"),
        "soundsDoNotShowAgain":
            MessageLookupByLibrary.simpleMessage("了解しました もう表示しないでください"),
        "soundsExplanation": MessageLookupByLibrary.simpleMessage(
            "スワップ プロセス中、およびアクティブなメーカー注文が行われると、サウンド通知が聞こえます。アトミック スワップ プロトコルでは、取引を成功させるには参加者がオンラインである必要があり、サウンド通知はそれを達成するのに役立ちます。"),
        "soundsNote": MessageLookupByLibrary.simpleMessage(
            "アプリケーション設定でカスタムサウンドを設定できることに注意してください。"),
        "spanishLanguage": MessageLookupByLibrary.simpleMessage("スペイン語"),
        "startDate": MessageLookupByLibrary.simpleMessage("開始日"),
        "startSwap": MessageLookupByLibrary.simpleMessage("スワップの開始"),
        "step": MessageLookupByLibrary.simpleMessage("ステップ"),
        "success": MessageLookupByLibrary.simpleMessage("成功！"),
        "support": MessageLookupByLibrary.simpleMessage("サポート"),
        "supportLinksDesc": m107,
        "swap": MessageLookupByLibrary.simpleMessage("スワップ"),
        "swapCurrent": MessageLookupByLibrary.simpleMessage("現時点の"),
        "swapDetailTitle": MessageLookupByLibrary.simpleMessage("交換の詳細を確認する"),
        "swapEstimated": MessageLookupByLibrary.simpleMessage("見積もり"),
        "swapFailed": MessageLookupByLibrary.simpleMessage("スワップに失敗しました"),
        "swapGasActivate": m108,
        "swapGasAmount": m109,
        "swapGasAmountRequired": m110,
        "swapOngoing": MessageLookupByLibrary.simpleMessage("スワップ進行中"),
        "swapProgress": MessageLookupByLibrary.simpleMessage("進捗詳細"),
        "swapStarted": MessageLookupByLibrary.simpleMessage("開始"),
        "swapSucceful": MessageLookupByLibrary.simpleMessage("スワップ成功"),
        "swapTotal": MessageLookupByLibrary.simpleMessage("合計"),
        "swapUUID": MessageLookupByLibrary.simpleMessage("UUIDを入れ替える"),
        "switchTheme": MessageLookupByLibrary.simpleMessage("テーマを切り替える"),
        "syncFromDate": MessageLookupByLibrary.simpleMessage("指定した日付から同期"),
        "syncFromSaplingActivation":
            MessageLookupByLibrary.simpleMessage("苗木アクティベーションからの同期"),
        "syncNewTransactions":
            MessageLookupByLibrary.simpleMessage("新しいトランザクションを同期する"),
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
        "takerOrder": MessageLookupByLibrary.simpleMessage("テイカーオーダー"),
        "timeOut": MessageLookupByLibrary.simpleMessage("タイムアウト"),
        "titleCreatePassword": MessageLookupByLibrary.simpleMessage("パスワードを作成"),
        "titleCurrentAsk": MessageLookupByLibrary.simpleMessage("注文が選択されました"),
        "to": MessageLookupByLibrary.simpleMessage("に"),
        "toAddress": MessageLookupByLibrary.simpleMessage("対処するには:"),
        "tooManyAssetsEnabledSpan1":
            MessageLookupByLibrary.simpleMessage("あなたが持っている"),
        "tooManyAssetsEnabledSpan2":
            MessageLookupByLibrary.simpleMessage("アセットが有効になっています。有効なアセットの上限は"),
        "tooManyAssetsEnabledSpan3": MessageLookupByLibrary.simpleMessage(
            ".新しいものを追加する前に、いくつかを無効にしてください。"),
        "tooManyAssetsEnabledTitle":
            MessageLookupByLibrary.simpleMessage("有効なアセットが多すぎます"),
        "totalFees": MessageLookupByLibrary.simpleMessage("合計料金:"),
        "trade": MessageLookupByLibrary.simpleMessage("トレード"),
        "tradeCompleted": MessageLookupByLibrary.simpleMessage("スワップ完了！"),
        "tradeDetail": MessageLookupByLibrary.simpleMessage("取引詳細"),
        "tradePreimageError":
            MessageLookupByLibrary.simpleMessage("取引手数料の計算に失敗しました"),
        "tradingFee": MessageLookupByLibrary.simpleMessage("取引手数料:"),
        "tradingMode": MessageLookupByLibrary.simpleMessage("取引モード:"),
        "transactionAddress": MessageLookupByLibrary.simpleMessage("取引アドレス"),
        "transactionHidden":
            MessageLookupByLibrary.simpleMessage("非表示のトランザクション"),
        "transactionHiddenPhishing": MessageLookupByLibrary.simpleMessage(
            "このトランザクションはフィッシングの可能性があるため非表示になりました。"),
        "tryRestarting": MessageLookupByLibrary.simpleMessage(
            "それでも一部のコインが有効化されない場合は、アプリを再起動してみてください。"),
        "turkishLanguage": MessageLookupByLibrary.simpleMessage("トルコ語"),
        "txBlock": MessageLookupByLibrary.simpleMessage("ブロック"),
        "txConfirmations": MessageLookupByLibrary.simpleMessage("確認"),
        "txConfirmed": MessageLookupByLibrary.simpleMessage("確認済み"),
        "txFee": MessageLookupByLibrary.simpleMessage("費用"),
        "txFeeTitle": MessageLookupByLibrary.simpleMessage("取引手数料："),
        "txHash": MessageLookupByLibrary.simpleMessage("取引ID"),
        "txLimitExceeded": MessageLookupByLibrary.simpleMessage(
            "リクエストが多すぎます。トランザクション履歴リクエストの制限を超えました。後でもう一度やり直してください。"),
        "txNotConfirmed": MessageLookupByLibrary.simpleMessage("未確認"),
        "txleft": m112,
        "ukrainianLanguage": MessageLookupByLibrary.simpleMessage("ウクライナ語"),
        "unlock": MessageLookupByLibrary.simpleMessage("ロックを解除"),
        "unlockFunds": MessageLookupByLibrary.simpleMessage("資金のロックを解除"),
        "unlockSuccess": m113,
        "unspendable": MessageLookupByLibrary.simpleMessage("使えない"),
        "updatesAvailable":
            MessageLookupByLibrary.simpleMessage("新しいバージョンが利用可能"),
        "updatesChecking": MessageLookupByLibrary.simpleMessage("アップデートの確認..."),
        "updatesCurrentVersion": m114,
        "updatesNotifAvailable":
            MessageLookupByLibrary.simpleMessage("新しいバージョンが利用可能です。更新してください。"),
        "updatesNotifAvailableVersion": m115,
        "updatesNotifTitle":
            MessageLookupByLibrary.simpleMessage("利用可能なアップデート"),
        "updatesSkip": MessageLookupByLibrary.simpleMessage("今のところスキップ"),
        "updatesTitle": m116,
        "updatesUpToDate": MessageLookupByLibrary.simpleMessage("すでに最新"),
        "updatesUpdate": MessageLookupByLibrary.simpleMessage("アップデート"),
        "uriInsufficientBalanceSpan1":
            MessageLookupByLibrary.simpleMessage("スキャンするのに十分な残高がありません"),
        "uriInsufficientBalanceSpan2":
            MessageLookupByLibrary.simpleMessage("支払い要求。"),
        "uriInsufficientBalanceTitle":
            MessageLookupByLibrary.simpleMessage("残高不足"),
        "value": MessageLookupByLibrary.simpleMessage("価値："),
        "version": MessageLookupByLibrary.simpleMessage("バージョン"),
        "viewInExplorerButton": MessageLookupByLibrary.simpleMessage("冒険者"),
        "viewSeedAndKeys": MessageLookupByLibrary.simpleMessage("シードと秘密鍵"),
        "volumes": MessageLookupByLibrary.simpleMessage("ボリューム"),
        "walletInUse":
            MessageLookupByLibrary.simpleMessage("ウォレット名はすでに使用されています"),
        "walletMaxChar":
            MessageLookupByLibrary.simpleMessage("ウォレット名は最大 40 文字にする必要があります"),
        "walletOnly": MessageLookupByLibrary.simpleMessage("ウォレットのみ"),
        "warning": MessageLookupByLibrary.simpleMessage("警告！"),
        "warningOkBtn": MessageLookupByLibrary.simpleMessage("Ok"),
        "warningShareLogs": MessageLookupByLibrary.simpleMessage(
            "警告 - 特殊なケースでは、このログ データには機密情報が含まれており、失敗したスワップからのコインの使用に使用できる可能性があります。"),
        "weFailedTo": m117,
        "weFailedToActivate": m118,
        "welcomeInfo": m119,
        "welcomeLetSetUp": MessageLookupByLibrary.simpleMessage("セットアップしましょう！"),
        "welcomeTitle": MessageLookupByLibrary.simpleMessage("ようこそ"),
        "welcomeWallet": MessageLookupByLibrary.simpleMessage("財布"),
        "willBeRedirected": MessageLookupByLibrary.simpleMessage(
            "完了すると、ポートフォリオ ページにリダイレクトされます。"),
        "willTakeTime": MessageLookupByLibrary.simpleMessage(
            "これには時間がかかるため、アプリをフォアグラウンドに維持する必要があります。\nアクティベーションの進行中にアプリを終了すると、問題が発生する可能性があります。"),
        "withdraw": MessageLookupByLibrary.simpleMessage("撤退"),
        "withdrawCameraAccessText": m120,
        "withdrawCameraAccessTitle":
            MessageLookupByLibrary.simpleMessage("アクセスが拒否されました"),
        "withdrawConfirm": MessageLookupByLibrary.simpleMessage("出金確認"),
        "withdrawConfirmError": MessageLookupByLibrary.simpleMessage(
            "エラーが発生しました。あとでもう一度試してみてください。"),
        "withdrawValue": m121,
        "wrongCoinSpan1":
            MessageLookupByLibrary.simpleMessage("の支払い QR コードをスキャンしようとしています"),
        "wrongCoinSpan2": MessageLookupByLibrary.simpleMessage("しかし、あなたは上にいます"),
        "wrongCoinSpan3": MessageLookupByLibrary.simpleMessage("画面を撤回"),
        "wrongCoinTitle": MessageLookupByLibrary.simpleMessage("間違ったコイン"),
        "wrongPassword":
            MessageLookupByLibrary.simpleMessage("パスワードが一致しません。もう一度やり直してください。"),
        "yes": MessageLookupByLibrary.simpleMessage("はい"),
        "you have a fresh order that is trying to match with an existing order":
            MessageLookupByLibrary.simpleMessage("既存の注文と一致させようとしている新しい注文があります"),
        "you have an active swap in progress":
            MessageLookupByLibrary.simpleMessage("アクティブなスワップが進行中です"),
        "you have an order that new orders can match with":
            MessageLookupByLibrary.simpleMessage("新しい注文と一致する注文があります"),
        "youAreSending": MessageLookupByLibrary.simpleMessage("あなたが送っているもの:"),
        "youWillReceiveClaim": m122,
        "youWillReceived": MessageLookupByLibrary.simpleMessage("受け取るもの:"),
        "yourWallet": MessageLookupByLibrary.simpleMessage("あなたの財布")
      };
}
