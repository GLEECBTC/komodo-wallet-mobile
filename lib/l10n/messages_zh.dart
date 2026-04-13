// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
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
  String get localeName => 'zh';

  static m0(protocolName) => "激活 ${protocolName} 币？";

  static m1(coinName) => "激活${coinName}";

  static m2(coinName) => "${coinName} 激活";

  static m3(protocolName) => "${protocolName} 激活正在进行中";

  static m4(name) => "成功新增 ${name}!";

  static m5(title) => "仅显示具有${title}地址的联系人";

  static m6(abbr) => "您无法将基金发送到${abbr}地址，因为${abbr}未激活。请转到投资组合页面";

  static m7(appName) =>
      "不${appName}是非托管应用。我们不会存储任何敏感数据，包括您的私钥、助记词或PIN。此数据仅存储在用户的设备上，不会转移。您的资产只由您掌控。";

  static m8(appName) =>
      "${appName} 适用于 Android 和 iPhone 上的移动设备，以及 <a href=\"https://gleec.com/\">Windows、Mac 和 Linux 操作系统</a> 上的桌面设备。";

  static m9(appName) =>
      "其他DEX（去中心化交易所）通常只允许您使用代理代币交易基于单个区块链网络的资产，并且只能用一个基金下一个订单。\n但用${appName}您可以在两个不同的区块链网络之间进行交易，且无需代理代币。您还可以用一个基金下多个订单。例如，您可以用KMD、QTUM或VRSC兑0.1 BTC，第一个订单成交后自动取消其他所有订单";

  static m10(appName) =>
      "几个因素决定了每次交易的处理时间。交易资产的区块时间取决于各自的网络（比特币通常是最慢的）。此外，用户可以自定义安全偏好。例如，您可以要求${appName}在确认KMD交易为最终交易前确认3次，这使得交易时间短于等待公证的<a href=\"https://gleec.com/\">时间</a>.";

  static m11(appName) =>
      "在｛appName｝上进行交易时，需要考虑两种费用。\n1.｛appName｝收取约0.13%（交易量的1/777，但不低于0.0001）作为吃单交易的交易费用，挂单交易不收费。\n2.在进行原子交换交易时，无论挂单还是吃单，都需要向相关区块链支付常规的网络费用\n网络费用具体取决于你选择的交易对，不同交易对费用可能大大不同。";

  static m12(name, link, appName, appCompanyShort) =>
      "是的 ${appName} 通过 <a href=\"${link}\">${appCompanyShort} ${name}</a>提供支持。团队和社区总是乐于提供帮助！";

  static m13(appName) => "不是${appName} 是完全去中心化的。不会限制任何第三方用户访问。";

  static m14(appName, appCompanyShort) =>
      "${appName} 由${appCompanyShort}团队开发。${appCompanyShort}是最成熟的区块链项目之一，致力于开发创新解决方案，如原子交换、延迟工作量证明和可互操作的多链架构。";

  static m15(appName) =>
      "绝对地！您可以阅读我们的<a href=\"https://gleec.com/\">开发者文档</a>了解更多详细信息，或者联系我们咨询您的合作伙伴关系。有具体的技术问题吗？ ${appName} 开发者社区随时准备提供帮助！";

  static m16(coinName1, coinName2) => "基于${coinName1}/${coinName2}";

  static m17(batteryLevelCritical) =>
      "您的电池电量过低 (${batteryLevelCritical}%) ，无法安全地进行交换。请先充电，然后重试。";

  static m18(batteryLevelLow) => "您的电池电量低于 ${batteryLevelLow}%。请充电。";

  static m19(seconde) => "正在进行交易匹配，请等待 ${seconde} 秒!";

  static m20(index) => "请输入第 ${index}个单词";

  static m21(index) => "您的助記詞的第 ${index}個单词是什麼？";

  static m22(coin) => "${coin}激活已取消";

  static m23(coin) => "成功激活${coin}";

  static m24(protocolName) => "${protocolName} 币已激活";

  static m25(protocolName) => "${protocolName}币激活成功";

  static m26(protocolName) => "${protocolName} 代币未激活";

  static m27(name) => "确认删除该联系人${name}？";

  static m28(iUnderstand) =>
      "自定义助记词的安全性可能比自动生成的符合BIP39规范的助记词或私钥（WIF）低，更容易被破解。如您已了解风险并知道您正在做什么，请在下面的框中输入\"${iUnderstand}\"。";

  static m29(coinName) => "接收${coinName}交易费";

  static m30(coinName) => "发送 ${coinName} 交易费";

  static m31(abbr) => "输入${abbr}地址";

  static m32(selected, remains) => "您仍然可以启用${remains}，已选择：${selected}";

  static m33(gas) => "燃料不足-至少使用｛gas｝Gwei";

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

  static m48(coinAbbr) => "无法取消激活 ${coinAbbr}";

  static m49(coin) => "正在向 ${coin} 水龙头发送请求";

  static m50(appCompanyShort) => "${appCompanyShort} 新闻";

  static m51(value) => "费用必须高达 ${value}";

  static m52(coin) => "${coin} 费用";

  static m53(coin) => "请激活${coin}.";

  static m54(value) => "Gwei 必须达到 ${value}";

  static m55(coinName) => "传入 ${coinName} 交易保护设置";

  static m56(abbr) => "${abbr}余额不足以支付交易费";

  static m57(coin) => "${coin} 地址无效";

  static m58(coinAbbr) => "${coinAbbr} 不可用:(";

  static m59(coinName) => "❗注意！ ${coinName} 市场的 24 小时交易量不到 1 万美元！";

  static m60(value) => "限制必须达到 ${value}";

  static m61(coinName, number) => "最低售出量为${number} ${coinName}";

  static m62(coinName, number) => "最低买入量为${number} ${coinName}";

  static m63(buyCoin, buyAmount, sellCoin, sellAmount) =>
      "最小交易量为 ${buyAmount} ${buyCoin}\n(${sellAmount} ${sellCoin})";

  static m64(coinName, number) => "最低售出量为 ${number} ${coinName}";

  static m65(minValue, coin) => "必须大于${minValue} ${coin}";

  static m66(appName) =>
      "请注意，您现在正在使用流量，使用${appName} P2P网络会消耗互联网流量。如果您的手机流量很贵，最好连接WIFI。";

  static m67(coin) => "先激活${coin}并充值余额";

  static m68(number) => "创建${number}订单：";

  static m69(coin) => "${coin}余额过低";

  static m70(coin, fee) => "${coin}不足支付。最低余额为 ${fee} ${coin}";

  static m71(coinName) => "请输入 ${coinName} 量";

  static m72(coin) => "没有足够的${coin} 用于交易！";

  static m73(sell, buy) => "${sell}/${buy} 已成功完成交换";

  static m74(sell, buy) => "${sell}/${buy}交换失败";

  static m75(sell, buy) => "${sell}/${buy}交换开始";

  static m76(sell, buy) => "${sell}/${buy}交换超时";

  static m77(coin) => "您已收到｛coin｝交易！";

  static m78(assets) => "${assets} 资产";

  static m79(coin) => "所有${coin}订单将被取消。";

  static m80(delta) => "划算的: CEX +${delta}%";

  static m81(delta) => "昂贵的: CEX ${delta}%";

  static m82(fill) => "${fill}%已填充";

  static m83(coin) => "数量(${coin})";

  static m84(coin) => "价格 (${coin})";

  static m85(coin) => "总计 (${coin})";

  static m86(abbr) => "${abbr} 未激活。请激活后重试。";

  static m87(appName) => "我可以在哪些设备上使用${appName} ？";

  static m88(appName) => "在${appName} 上交易与在其他DEX上交易有何不同？";

  static m89(appName) => "${appName} 的费用如何计算？";

  static m90(appName) => "${appName} 的背后是谁？";

  static m91(appName) => "是否可以在${appName} 上开发我个人的白标交换？";

  static m92(amount) => "成功！收到 ${amount}KMD";

  static m93(dd) => "${dd} 天";

  static m94(hh, minutes) => "${hh}小时 ${minutes}分钟";

  static m95(mm) => "${mm}分钟";

  static m96(amount) => "点击查看${amount} 交易";

  static m97(coinName, address) => "我的${coinName} 地址:\n${address}";

  static m98(coin) => "扫描过去的 ${coin} 交易？";

  static m99(count, maxCount) => "显示 ${count} 个订单（共 ${maxCount} 个）。";

  static m100(coin) => "请输入要买入的 ${coin} 数量";

  static m101(maxCoins) => "货币最大活跃量为${maxCoins}。请停用一些。";

  static m102(coin) => "${coin}未激活！";

  static m103(coin) => "请输入要卖出的${coin}数量";

  static m104(coin) => "无法激活${coin}";

  static m105(description) => "请选择mp3或wav文件。我们将在${description}时播放它。";

  static m106(description) => "当${description}播放";

  static m107(appName) =>
      "如果您有任何问题，或者认为您发现${appName} 应用程序存在技术问题，请联系我们获取我们团队的支持。";

  static m108(coin) => "请先激活 ${coin} 并充值余额";

  static m109(coin) => "${coin} 余额不足以支付交易费用。";

  static m110(coin, amount) => "${coin} 余额不足以支付交易费用。需要 ${coin} ${amount}";

  static m111(name) => "您想要同步哪些${name}交易？";

  static m112(left) => "剩余交易: ${left}";

  static m113(amnt, hash) => "成功解锁 ${amnt} 基金 - 交易: ${hash}";

  static m114(version) => "您正在使用版本${version}";

  static m115(version) => "版本${version}可用。请更新。";

  static m116(appName) => "更新${appName}";

  static m117(coinAbbr) => "我们无法激活 ${coinAbbr}";

  static m118(coinAbbr) => "我们无法激活${coinAbbr}.\n请重启应用程序后重试";

  static m119(appName) => "${appName} 应用程序是新一代多币钱包，具有原生第三代DEX功能和更多功能。";

  static m120(appName) => "您之前禁止${appName} 使用相机。请手动更改手机设置中的相机权限，以便继续二维码扫描";

  static m121(amount, coinName) => "提取 ${amount} ${coinName}";

  static m122(amount, coin) => "您将获得 ${amount} ${coin}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "Active": MessageLookupByLibrary.simpleMessage("活跃"),
        "Applause": MessageLookupByLibrary.simpleMessage("掌声"),
        "Can\'t play that": MessageLookupByLibrary.simpleMessage("不能播放"),
        "Failed": MessageLookupByLibrary.simpleMessage("失败"),
        "Maker": MessageLookupByLibrary.simpleMessage("挂单"),
        "Optional": MessageLookupByLibrary.simpleMessage("选修的"),
        "Play at full volume": MessageLookupByLibrary.simpleMessage("音量开到最大"),
        "Sound": MessageLookupByLibrary.simpleMessage("声音"),
        "Taker": MessageLookupByLibrary.simpleMessage("吃单"),
        "a swap fails": MessageLookupByLibrary.simpleMessage("交换失败"),
        "a swap runs to completion":
            MessageLookupByLibrary.simpleMessage("交换完成"),
        "accepteula":
            MessageLookupByLibrary.simpleMessage("同意接受终端使用者授权协议 (EULA)"),
        "accepttac": MessageLookupByLibrary.simpleMessage("接受条款与条件"),
        "activateAccessBiometric":
            MessageLookupByLibrary.simpleMessage("启动生物识别功能"),
        "activateAccessPin": MessageLookupByLibrary.simpleMessage("启动PIN码保护"),
        "activateCoins": m0,
        "activating": m1,
        "activation": m2,
        "activationCancelled": MessageLookupByLibrary.simpleMessage("硬币激活已取消"),
        "activationInProgress": m3,
        "addCoin": MessageLookupByLibrary.simpleMessage("新增货币"),
        "addingCoinSuccess": m4,
        "addressAdd": MessageLookupByLibrary.simpleMessage("添加地址"),
        "addressBook": MessageLookupByLibrary.simpleMessage("地址簿"),
        "addressBookEmpty": MessageLookupByLibrary.simpleMessage("地址簿为空"),
        "addressBookFilter": m5,
        "addressBookTitle": MessageLookupByLibrary.simpleMessage("地址簿"),
        "addressCoinInactive": m6,
        "addressNotFound": MessageLookupByLibrary.simpleMessage("未找到任何内容"),
        "addressSelectCoin": MessageLookupByLibrary.simpleMessage("选择货币"),
        "addressSend": MessageLookupByLibrary.simpleMessage("收款人钱包地址"),
        "advanced": MessageLookupByLibrary.simpleMessage("高级"),
        "all": MessageLookupByLibrary.simpleMessage("全部"),
        "allPastTransactions": MessageLookupByLibrary.simpleMessage(
            "您的钱包将显示任何过去的交易。这将占用大量存储空间和时间，因为所有块都将被下载和扫描。"),
        "allowCustomSeed": MessageLookupByLibrary.simpleMessage("允许自定义助记词"),
        "alreadyExists": MessageLookupByLibrary.simpleMessage("已存在"),
        "amount": MessageLookupByLibrary.simpleMessage("数量"),
        "amountToSell": MessageLookupByLibrary.simpleMessage("卖出量"),
        "answer_1": m7,
        "answer_10": m8,
        "answer_2": m9,
        "answer_3": m10,
        "answer_4": MessageLookupByLibrary.simpleMessage(
            "是的，必须保持互联网连接，并确保您的应用程序在运行，才能成功完成原子交换（网络短暂中断通常是可以的）。否则，如果是挂单，会有交易取消的风险，如果是吃单，会有资金损失的风险。原子交换协议要求双方参与者保持在线，并监控所涉及的区块链，确保该过程保持原子性。"),
        "answer_5": m11,
        "answer_6": m12,
        "answer_7": m13,
        "answer_8": m14,
        "answer_9": m15,
        "areYouSure": MessageLookupByLibrary.simpleMessage("您确定吗？"),
        "authenticate": MessageLookupByLibrary.simpleMessage("身份验证"),
        "automaticRedirected":
            MessageLookupByLibrary.simpleMessage("重新激活后，您将自动跳转至投资组合页面。"),
        "availableVolume": MessageLookupByLibrary.simpleMessage("最大交易量"),
        "back": MessageLookupByLibrary.simpleMessage("上一步"),
        "backupTitle": MessageLookupByLibrary.simpleMessage("备份"),
        "basedOnCoinRatio": m16,
        "batteryCriticalError": m17,
        "batteryLowWarning": m18,
        "batterySavingWarning": MessageLookupByLibrary.simpleMessage(
            "您的手机处于省电模式。请停用此模式或不要将应用程序置于后台，否则，应用程序可能会被系统自动清除，导致交换失败。"),
        "bestAvailableRate": MessageLookupByLibrary.simpleMessage("兑换率"),
        "builtKomodo": MessageLookupByLibrary.simpleMessage("基于Komodo"),
        "builtOnKmd": MessageLookupByLibrary.simpleMessage("基于Komodo"),
        "buy": MessageLookupByLibrary.simpleMessage("买入"),
        "buyOrderType": MessageLookupByLibrary.simpleMessage("如果不匹配，则转为挂单"),
        "buySuccessWaiting": MessageLookupByLibrary.simpleMessage("交换已发起，请等待!"),
        "buySuccessWaitingError": m19,
        "buyTestCoinWarning":
            MessageLookupByLibrary.simpleMessage("警告，你正在购买没有实际价值的测试币!"),
        "camoPinBioProtectionConflict":
            MessageLookupByLibrary.simpleMessage("不能同时启用伪装PIN和生物识别保护"),
        "camoPinBioProtectionConflictTitle":
            MessageLookupByLibrary.simpleMessage("伪装PIN和生物识别保护冲突"),
        "camoPinChange": MessageLookupByLibrary.simpleMessage("更改伪装PIN"),
        "camoPinCreate": MessageLookupByLibrary.simpleMessage("创建伪装PIN"),
        "camoPinDesc": MessageLookupByLibrary.simpleMessage(
            "如果您用伪装PIN解锁应用程序，将显示一个虚假的低余额，并且设置中不会显示伪装PIN配置选项。"),
        "camoPinInvalid": MessageLookupByLibrary.simpleMessage("无效的伪装PIN"),
        "camoPinLink": MessageLookupByLibrary.simpleMessage("伪装PIN"),
        "camoPinNotFound": MessageLookupByLibrary.simpleMessage("未找到伪装PIN"),
        "camoPinOff": MessageLookupByLibrary.simpleMessage("关闭"),
        "camoPinOn": MessageLookupByLibrary.simpleMessage("开启"),
        "camoPinSaved": MessageLookupByLibrary.simpleMessage("已保存的伪装PIN"),
        "camoPinTitle": MessageLookupByLibrary.simpleMessage("伪装PIN"),
        "camoSetupSubtitle": MessageLookupByLibrary.simpleMessage("输入新的伪装PIN"),
        "camoSetupTitle": MessageLookupByLibrary.simpleMessage("伪装PIN设置"),
        "camouflageSetup": MessageLookupByLibrary.simpleMessage("伪装PIN设置"),
        "cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "cancelActivation": MessageLookupByLibrary.simpleMessage("取消激活"),
        "cancelActivationQuestion":
            MessageLookupByLibrary.simpleMessage("您确定要取消激活吗？"),
        "cancelButton": MessageLookupByLibrary.simpleMessage("取消"),
        "cancelOrder": MessageLookupByLibrary.simpleMessage("取消交易"),
        "candleChartError": MessageLookupByLibrary.simpleMessage("出现错误，稍后重试"),
        "cantDeleteDefaultCoinOk": MessageLookupByLibrary.simpleMessage("好的"),
        "cantDeleteDefaultCoinSpan":
            MessageLookupByLibrary.simpleMessage("是默认币。无法停用默认币。"),
        "cantDeleteDefaultCoinTitle":
            MessageLookupByLibrary.simpleMessage("无法停用"),
        "cex": MessageLookupByLibrary.simpleMessage("CEX(中心化交易所)"),
        "cexChangeRate": MessageLookupByLibrary.simpleMessage("CEX兑换率"),
        "cexData": MessageLookupByLibrary.simpleMessage("CEX 数据"),
        "cexDataDesc": MessageLookupByLibrary.simpleMessage(
            "带有此图标的市场数据（价格、图表等）来源于第三方(<a href=\"https://www.coingecko.com/\">coingecko.com</a>, <a href=\"https://openrates.io/\">openrates.io</a>)."),
        "cexRate": MessageLookupByLibrary.simpleMessage("CEX 汇率"),
        "changePin": MessageLookupByLibrary.simpleMessage("更改PIN"),
        "checkForUpdates": MessageLookupByLibrary.simpleMessage("检查更新"),
        "checkOut": MessageLookupByLibrary.simpleMessage("退出"),
        "checkSeedPhrase": MessageLookupByLibrary.simpleMessage("检查助记词"),
        "checkSeedPhraseButton1": MessageLookupByLibrary.simpleMessage("继续"),
        "checkSeedPhraseButton2":
            MessageLookupByLibrary.simpleMessage("返回並再次檢查"),
        "checkSeedPhraseHint": m20,
        "checkSeedPhraseInfo": MessageLookupByLibrary.simpleMessage(
            "您的助记词很重要——因此我们要确保它是正确的。我们将问您三个关于您的助记词的问题，以确保您可以随时轻松地恢复钱包。"),
        "checkSeedPhraseSubtile": m21,
        "checkSeedPhraseTitle":
            MessageLookupByLibrary.simpleMessage("请再次确认助记词"),
        "chineseLanguage": MessageLookupByLibrary.simpleMessage("中文"),
        "claim": MessageLookupByLibrary.simpleMessage("领取"),
        "claimTitle": MessageLookupByLibrary.simpleMessage("领取您的KMD奖励？"),
        "clickToSee": MessageLookupByLibrary.simpleMessage("点击查看"),
        "clipboard": MessageLookupByLibrary.simpleMessage("复制到剪贴板"),
        "clipboardCopy": MessageLookupByLibrary.simpleMessage("复制到剪贴板"),
        "close": MessageLookupByLibrary.simpleMessage("关闭"),
        "closeMessage": MessageLookupByLibrary.simpleMessage("关闭错误信息"),
        "closePreview": MessageLookupByLibrary.simpleMessage("关闭预览"),
        "code": MessageLookupByLibrary.simpleMessage("代码"),
        "cofirmCancelActivation":
            MessageLookupByLibrary.simpleMessage("您确定要取消激活吗？"),
        "coinActivationCancelled": m22,
        "coinActivationSuccessfull": m23,
        "coinSelectClear": MessageLookupByLibrary.simpleMessage("清除"),
        "coinSelectNotFound": MessageLookupByLibrary.simpleMessage("没有活跃币"),
        "coinSelectTitle": MessageLookupByLibrary.simpleMessage("选择货币"),
        "coinsActivatedLimitReached":
            MessageLookupByLibrary.simpleMessage("您已选择最大资产数量"),
        "coinsAreActivated": m24,
        "coinsAreActivatedSuccessfully": m25,
        "coinsAreNotActivated": m26,
        "comingSoon": MessageLookupByLibrary.simpleMessage("即将上线，敬请期待。。。"),
        "commingsoon": MessageLookupByLibrary.simpleMessage("交易明细加载中！"),
        "commingsoonGeneral": MessageLookupByLibrary.simpleMessage("详情载入中！"),
        "commissionFee": MessageLookupByLibrary.simpleMessage("手续费"),
        "comparedTo24hrCex":
            MessageLookupByLibrary.simpleMessage("与平均值相比24小时CEX价格"),
        "comparedToCex": MessageLookupByLibrary.simpleMessage("与CEX比较"),
        "configureWallet":
            MessageLookupByLibrary.simpleMessage("正在配置您的钱包，请稍候。。。"),
        "confirm": MessageLookupByLibrary.simpleMessage("确认"),
        "confirmCamouflageSetup":
            MessageLookupByLibrary.simpleMessage("确认伪装PIN"),
        "confirmCancel": MessageLookupByLibrary.simpleMessage("您确定要取消交易吗"),
        "confirmPassword": MessageLookupByLibrary.simpleMessage("确认密码"),
        "confirmPin": MessageLookupByLibrary.simpleMessage("确认PIN"),
        "confirmSeed": MessageLookupByLibrary.simpleMessage("确认助记词"),
        "confirmeula": MessageLookupByLibrary.simpleMessage(
            "我已了解点击以下的按钮即代表我已阅读并接受终端使用者授权协议(EULA) & 使用条款与条件"),
        "connecting": MessageLookupByLibrary.simpleMessage("连接中"),
        "contactCancel": MessageLookupByLibrary.simpleMessage("取消"),
        "contactDelete": MessageLookupByLibrary.simpleMessage("删除联系人"),
        "contactDeleteBtn": MessageLookupByLibrary.simpleMessage("删除"),
        "contactDeleteWarning": m27,
        "contactDiscardBtn": MessageLookupByLibrary.simpleMessage("放弃"),
        "contactEdit": MessageLookupByLibrary.simpleMessage("编辑"),
        "contactExit": MessageLookupByLibrary.simpleMessage("退出"),
        "contactExitWarning": MessageLookupByLibrary.simpleMessage("放弃更改？"),
        "contactNotFound": MessageLookupByLibrary.simpleMessage("未找到联系人"),
        "contactSave": MessageLookupByLibrary.simpleMessage("保存"),
        "contactTitle": MessageLookupByLibrary.simpleMessage("联系人详细信息"),
        "contactTitleName": MessageLookupByLibrary.simpleMessage("名称"),
        "contract": MessageLookupByLibrary.simpleMessage("合同"),
        "convert": MessageLookupByLibrary.simpleMessage("转换"),
        "couldNotLaunchUrl": MessageLookupByLibrary.simpleMessage("无法启动 URL"),
        "couldntImportError": MessageLookupByLibrary.simpleMessage("无法导入："),
        "create": MessageLookupByLibrary.simpleMessage("交易"),
        "createAWallet": MessageLookupByLibrary.simpleMessage("创建钱包"),
        "createContact": MessageLookupByLibrary.simpleMessage("创建联系人"),
        "createPin": MessageLookupByLibrary.simpleMessage("创建PIN码"),
        "currency": MessageLookupByLibrary.simpleMessage("货币"),
        "currencyDialogTitle": MessageLookupByLibrary.simpleMessage("货币"),
        "currentValue": MessageLookupByLibrary.simpleMessage("当前值"),
        "customFee": MessageLookupByLibrary.simpleMessage("定制费用"),
        "customFeeWarning":
            MessageLookupByLibrary.simpleMessage("选择定制费用前务必明确知晓自己的行为"),
        "customSeedWarning": m28,
        "dPow": MessageLookupByLibrary.simpleMessage("Gleec dPoW安全"),
        "date": MessageLookupByLibrary.simpleMessage("日期"),
        "decryptingWallet": MessageLookupByLibrary.simpleMessage("钱包解密中"),
        "delete": MessageLookupByLibrary.simpleMessage("删除"),
        "deleteConfirm": MessageLookupByLibrary.simpleMessage("确认停用"),
        "deleteSpan1": MessageLookupByLibrary.simpleMessage("是否要"),
        "deleteSpan2":
            MessageLookupByLibrary.simpleMessage("从投资组合中删除？所有不匹配的订单将被取消。"),
        "deleteSpan3": MessageLookupByLibrary.simpleMessage(" 也将被停用"),
        "deleteWallet": MessageLookupByLibrary.simpleMessage("删除钱包"),
        "deletingWallet": MessageLookupByLibrary.simpleMessage("删除钱包中"),
        "detailedFeesReceiveCoinTransactionFee": m29,
        "detailedFeesSendCoinTransactionFee": m30,
        "detailedFeesSendTradingFeeTransactionFee":
            MessageLookupByLibrary.simpleMessage("发送交易费 交易费"),
        "detailedFeesTradingFee": MessageLookupByLibrary.simpleMessage("交易费"),
        "details": MessageLookupByLibrary.simpleMessage("详细信息"),
        "deutscheLanguage": MessageLookupByLibrary.simpleMessage("德语"),
        "developerTitle": MessageLookupByLibrary.simpleMessage("开发者"),
        "dex": MessageLookupByLibrary.simpleMessage("DEX"),
        "dexIsNotAvailable": MessageLookupByLibrary.simpleMessage("DEX不适合该货币"),
        "disableScreenshots": MessageLookupByLibrary.simpleMessage("禁用屏幕截图/预览"),
        "disclaimerAndTos": MessageLookupByLibrary.simpleMessage("免责声明 & 使用条款"),
        "doNotCloseTheAppTapForMoreInfo":
            MessageLookupByLibrary.simpleMessage("不要关闭应用程序。点按了解更多信息..."),
        "done": MessageLookupByLibrary.simpleMessage("完成"),
        "dontAskAgain": MessageLookupByLibrary.simpleMessage("不再询问"),
        "dontWantPassword": MessageLookupByLibrary.simpleMessage("我不想要使用密碼"),
        "duration": MessageLookupByLibrary.simpleMessage("有效期"),
        "editContact": MessageLookupByLibrary.simpleMessage("编辑联系人"),
        "emptyCoin": m31,
        "emptyExportPass": MessageLookupByLibrary.simpleMessage("加密密码不能为空"),
        "emptyImportPass": MessageLookupByLibrary.simpleMessage("密码不能为空"),
        "emptyName": MessageLookupByLibrary.simpleMessage("联系人名称不能为空"),
        "emptyWallet": MessageLookupByLibrary.simpleMessage("钱包名称不能为空"),
        "enable": m32,
        "enableNotificationsForActivationProgress":
            MessageLookupByLibrary.simpleMessage("请启用通知以获取有关激活进度的更新。"),
        "enableTestCoins": MessageLookupByLibrary.simpleMessage("启用测试币"),
        "enablingTooManyAssetsSpan1":
            MessageLookupByLibrary.simpleMessage("您已启用"),
        "enablingTooManyAssetsSpan2":
            MessageLookupByLibrary.simpleMessage("资产并尝试启用"),
        "enablingTooManyAssetsSpan3":
            MessageLookupByLibrary.simpleMessage("更多。最多启用"),
        "enablingTooManyAssetsSpan4":
            MessageLookupByLibrary.simpleMessage("请在添加新资产前停用一些资产。"),
        "enablingTooManyAssetsTitle":
            MessageLookupByLibrary.simpleMessage("试图启用太多资产"),
        "encryptingWallet": MessageLookupByLibrary.simpleMessage("錢包加密中"),
        "englishLanguage": MessageLookupByLibrary.simpleMessage("英文"),
        "enterNewPinCode": MessageLookupByLibrary.simpleMessage("输入您的新PIN"),
        "enterOldPinCode": MessageLookupByLibrary.simpleMessage("输入您的旧PIN"),
        "enterPinCode": MessageLookupByLibrary.simpleMessage("输入您的PIN码"),
        "enterSeedPhrase": MessageLookupByLibrary.simpleMessage("输入您的助记词"),
        "enterSellAmount": MessageLookupByLibrary.simpleMessage("您必须先输入卖出数量"),
        "enterpassword": MessageLookupByLibrary.simpleMessage("继续前请输入密码"),
        "errorAmountBalance": MessageLookupByLibrary.simpleMessage("余额不足"),
        "errorNotAValidAddress": MessageLookupByLibrary.simpleMessage("钱包地址错误"),
        "errorNotAValidAddressSegWit":
            MessageLookupByLibrary.simpleMessage("尚不支持Segwit地址"),
        "errorNotEnoughGas": m33,
        "errorTryAgain": MessageLookupByLibrary.simpleMessage("出现错误, 請重试"),
        "errorTryLater": MessageLookupByLibrary.simpleMessage("出现错误，請稍後重试"),
        "errorValueEmpty": MessageLookupByLibrary.simpleMessage("价值太高或太低"),
        "errorValueNotEmpty": MessageLookupByLibrary.simpleMessage("请输入数据"),
        "estimateValue": MessageLookupByLibrary.simpleMessage("预估总价"),
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
            MessageLookupByLibrary.simpleMessage("例如：build case level ..."),
        "exchangeExpedient": MessageLookupByLibrary.simpleMessage("划算的"),
        "exchangeExpensive": MessageLookupByLibrary.simpleMessage("昂贵的"),
        "exchangeIdentical": MessageLookupByLibrary.simpleMessage("与CEX相同"),
        "exchangeRate": MessageLookupByLibrary.simpleMessage("兑换率"),
        "exchangeTitle": MessageLookupByLibrary.simpleMessage("兑换"),
        "exportButton": MessageLookupByLibrary.simpleMessage("导出"),
        "exportContactsTitle": MessageLookupByLibrary.simpleMessage("联系人"),
        "exportDesc": MessageLookupByLibrary.simpleMessage("请选择要导出到加密文件中的项目。"),
        "exportLink": MessageLookupByLibrary.simpleMessage("导出"),
        "exportNotesTitle": MessageLookupByLibrary.simpleMessage("备注"),
        "exportSuccessTitle": MessageLookupByLibrary.simpleMessage("项目成功导出"),
        "exportSwapsTitle": MessageLookupByLibrary.simpleMessage("交换"),
        "exportTitle": MessageLookupByLibrary.simpleMessage("导出"),
        "failedToCancelActivation": m48,
        "fakeBalanceAmt": MessageLookupByLibrary.simpleMessage("虚假余额"),
        "faqTitle": MessageLookupByLibrary.simpleMessage("常见问题"),
        "faucetError": MessageLookupByLibrary.simpleMessage("错误"),
        "faucetInProgress": m49,
        "faucetName": MessageLookupByLibrary.simpleMessage("水龙头"),
        "faucetSuccess": MessageLookupByLibrary.simpleMessage("成功"),
        "faucetTimedOut": MessageLookupByLibrary.simpleMessage("请求超时"),
        "feedNewsTab": MessageLookupByLibrary.simpleMessage("新闻"),
        "feedNotFound": MessageLookupByLibrary.simpleMessage("无内容"),
        "feedNotifTitle": m50,
        "feedReadMore": MessageLookupByLibrary.simpleMessage("阅读更多"),
        "feedTab": MessageLookupByLibrary.simpleMessage("Feed"),
        "feedTitle": MessageLookupByLibrary.simpleMessage("Feed新闻"),
        "feedUnableToProceed": MessageLookupByLibrary.simpleMessage("无法继续更新新闻"),
        "feedUnableToUpdate": MessageLookupByLibrary.simpleMessage("无法获取新闻更新"),
        "feedUpToDate": MessageLookupByLibrary.simpleMessage("已更新"),
        "feedUpdated": MessageLookupByLibrary.simpleMessage("Feed新闻已更新"),
        "feedback": MessageLookupByLibrary.simpleMessage("共享日志文件"),
        "feesError": m51,
        "filtersAll": MessageLookupByLibrary.simpleMessage("全部"),
        "filtersButton": MessageLookupByLibrary.simpleMessage("过滤器"),
        "filtersClearAll": MessageLookupByLibrary.simpleMessage("清除所有过滤器"),
        "filtersFailed": MessageLookupByLibrary.simpleMessage("失败"),
        "filtersFrom": MessageLookupByLibrary.simpleMessage("起始日期"),
        "filtersMaker": MessageLookupByLibrary.simpleMessage("挂单"),
        "filtersReceive": MessageLookupByLibrary.simpleMessage("接收货币"),
        "filtersSell": MessageLookupByLibrary.simpleMessage("出售货币"),
        "filtersStatus": MessageLookupByLibrary.simpleMessage("状态"),
        "filtersSuccessful": MessageLookupByLibrary.simpleMessage("成功"),
        "filtersTaker": MessageLookupByLibrary.simpleMessage("吃单"),
        "filtersTo": MessageLookupByLibrary.simpleMessage("截止日期"),
        "filtersType": MessageLookupByLibrary.simpleMessage("吃单/挂单"),
        "fingerprint": MessageLookupByLibrary.simpleMessage("指纹"),
        "finishingUp": MessageLookupByLibrary.simpleMessage("已完成，请稍候"),
        "foundQrCode": MessageLookupByLibrary.simpleMessage("找到二维码"),
        "frenchLanguage": MessageLookupByLibrary.simpleMessage("法语"),
        "from": MessageLookupByLibrary.simpleMessage("起始日期"),
        "futureTransactions": MessageLookupByLibrary.simpleMessage(
            "我们将同步与您的公钥关联的激活后进行的未来交易。这是最快的选项，占用的存储空间最少。"),
        "gasFee": m52,
        "gasLimit": MessageLookupByLibrary.simpleMessage("燃料上限"),
        "gasNotActive": m53,
        "gasPrice": MessageLookupByLibrary.simpleMessage("燃料价格"),
        "generalPinNotActive": MessageLookupByLibrary.simpleMessage(
            "常规PIN保护未激活。\n伪装模式将失效\n请激活PIN保护"),
        "getBackupPhrase":
            MessageLookupByLibrary.simpleMessage("重要提醒: 請在繼續之前備份助記詞 !"),
        "gettingTxWait": MessageLookupByLibrary.simpleMessage("正在获取交易，请稍候"),
        "goToPorfolio": MessageLookupByLibrary.simpleMessage("前往投资组合"),
        "gweiError": m54,
        "helpLink": MessageLookupByLibrary.simpleMessage("帮助"),
        "helpTitle": MessageLookupByLibrary.simpleMessage("帮助和支持"),
        "hideBalance": MessageLookupByLibrary.simpleMessage("隐藏余额"),
        "hintConfirmPassword": MessageLookupByLibrary.simpleMessage("确认密码"),
        "hintCreatePassword": MessageLookupByLibrary.simpleMessage("创建密码"),
        "hintCurrentPassword": MessageLookupByLibrary.simpleMessage("当前密码"),
        "hintEnterPassword": MessageLookupByLibrary.simpleMessage("请输入您的密码"),
        "hintEnterSeedPhrase": MessageLookupByLibrary.simpleMessage("请输入您的助记词"),
        "hintNameYourWallet": MessageLookupByLibrary.simpleMessage("命名您的钱包"),
        "hintPassword": MessageLookupByLibrary.simpleMessage("密码"),
        "history": MessageLookupByLibrary.simpleMessage("历史记录"),
        "hours": MessageLookupByLibrary.simpleMessage("小时"),
        "hungarianLanguage": MessageLookupByLibrary.simpleMessage("匈牙利语"),
        "iUnderstand": MessageLookupByLibrary.simpleMessage("我已了解"),
        "importButton": MessageLookupByLibrary.simpleMessage("导入"),
        "importDecryptError": MessageLookupByLibrary.simpleMessage("密码无效或数据损坏"),
        "importDesc": MessageLookupByLibrary.simpleMessage("要导入的项目："),
        "importFileNotFound": MessageLookupByLibrary.simpleMessage("找不到文件"),
        "importInvalidSwapData":
            MessageLookupByLibrary.simpleMessage("交换数据无效。请提供有效的交换状态JSON文件。"),
        "importLink": MessageLookupByLibrary.simpleMessage("导入"),
        "importLoadDesc": MessageLookupByLibrary.simpleMessage("请选择要导入的加密文件。"),
        "importLoadSwapDesc":
            MessageLookupByLibrary.simpleMessage("请选择要导入的纯文本交换文件。"),
        "importLoading": MessageLookupByLibrary.simpleMessage("开始"),
        "importPassCancel": MessageLookupByLibrary.simpleMessage("取消"),
        "importPassOk": MessageLookupByLibrary.simpleMessage("好的"),
        "importPassword": MessageLookupByLibrary.simpleMessage("密码"),
        "importSingleSwapLink": MessageLookupByLibrary.simpleMessage("导入单个交换"),
        "importSingleSwapTitle": MessageLookupByLibrary.simpleMessage("导入交换"),
        "importSomeItemsSkippedWarning":
            MessageLookupByLibrary.simpleMessage("已跳过某些项目"),
        "importSuccessTitle": MessageLookupByLibrary.simpleMessage("已成功导入项目："),
        "importSwapFailed": MessageLookupByLibrary.simpleMessage("无法导入交换"),
        "importSwapJsonDecodingError":
            MessageLookupByLibrary.simpleMessage("解码json文件时出错"),
        "importTitle": MessageLookupByLibrary.simpleMessage("导入"),
        "incomingTransactionsProtectionSettings": m55,
        "infoPasswordDialog":
            MessageLookupByLibrary.simpleMessage("使用安全密码，不要将其存储在同一设备上"),
        "infoTrade1": MessageLookupByLibrary.simpleMessage("無法撤銷交换请求！"),
        "infoTrade2":
            MessageLookupByLibrary.simpleMessage("交换最长需要60分钟。不要关闭此应用程序！"),
        "infoWalletPassword":
            MessageLookupByLibrary.simpleMessage("安全起见，您必须为加密钱包设置密码。"),
        "insufficientBalanceToPay": m56,
        "insufficientText": MessageLookupByLibrary.simpleMessage("此订单最小交易量为"),
        "insufficientTitle": MessageLookupByLibrary.simpleMessage("交易量不足"),
        "internetRefreshButton": MessageLookupByLibrary.simpleMessage("刷新"),
        "internetRestored": MessageLookupByLibrary.simpleMessage("已重新连接互联网"),
        "invalidCoinAddress": m57,
        "invalidSwap": MessageLookupByLibrary.simpleMessage("无法继续交换"),
        "invalidSwapDetailsLink": MessageLookupByLibrary.simpleMessage("详细信息"),
        "isUnavailable": m58,
        "japaneseLanguage": MessageLookupByLibrary.simpleMessage("日文"),
        "koreanLanguage": MessageLookupByLibrary.simpleMessage("韩国人"),
        "language": MessageLookupByLibrary.simpleMessage("语言"),
        "latestTxs": MessageLookupByLibrary.simpleMessage("最新交易"),
        "legalTitle": MessageLookupByLibrary.simpleMessage("合法的"),
        "less": MessageLookupByLibrary.simpleMessage("较少"),
        "lessThanCaution": m59,
        "limitError": m60,
        "loading": MessageLookupByLibrary.simpleMessage("載入中"),
        "loadingOrderbook": MessageLookupByLibrary.simpleMessage("正在加载订单记录"),
        "lockScreen": MessageLookupByLibrary.simpleMessage("屏幕已锁定"),
        "lockScreenAuth": MessageLookupByLibrary.simpleMessage("请验证！"),
        "login": MessageLookupByLibrary.simpleMessage("登录"),
        "logout": MessageLookupByLibrary.simpleMessage("注销"),
        "logoutOnExit": MessageLookupByLibrary.simpleMessage("退出时注销"),
        "logoutWarning": MessageLookupByLibrary.simpleMessage("您确定要立即注销吗？"),
        "logoutsettings": MessageLookupByLibrary.simpleMessage("注销设置"),
        "longMinutes": MessageLookupByLibrary.simpleMessage("分钟"),
        "makeAorder": MessageLookupByLibrary.simpleMessage("下订单"),
        "makerDetailsCancel": MessageLookupByLibrary.simpleMessage("取消订单"),
        "makerDetailsCreated": MessageLookupByLibrary.simpleMessage("创建"),
        "makerDetailsFor": MessageLookupByLibrary.simpleMessage("接收"),
        "makerDetailsId": MessageLookupByLibrary.simpleMessage("订单ID"),
        "makerDetailsNoSwaps": MessageLookupByLibrary.simpleMessage("此订单未启动交换"),
        "makerDetailsPrice": MessageLookupByLibrary.simpleMessage("价格"),
        "makerDetailsSell": MessageLookupByLibrary.simpleMessage("卖出"),
        "makerDetailsSwaps": MessageLookupByLibrary.simpleMessage("此订单开始交换"),
        "makerDetailsTitle": MessageLookupByLibrary.simpleMessage("挂单交易详细信息"),
        "makerOrder": MessageLookupByLibrary.simpleMessage("挂单交易"),
        "marketplace": MessageLookupByLibrary.simpleMessage("市场"),
        "marketsChart": MessageLookupByLibrary.simpleMessage("图表"),
        "marketsDepth": MessageLookupByLibrary.simpleMessage("交易深度"),
        "marketsNoAsks": MessageLookupByLibrary.simpleMessage("未找到问题"),
        "marketsNoBids": MessageLookupByLibrary.simpleMessage("未找到出价"),
        "marketsOrderDetails": MessageLookupByLibrary.simpleMessage("订单详细信息"),
        "marketsOrderbook": MessageLookupByLibrary.simpleMessage("订单记录"),
        "marketsPrice": MessageLookupByLibrary.simpleMessage("价格"),
        "marketsSelectCoins": MessageLookupByLibrary.simpleMessage("请选择货币"),
        "marketsTab": MessageLookupByLibrary.simpleMessage("市场"),
        "marketsTitle": MessageLookupByLibrary.simpleMessage("市场"),
        "matchExportPass": MessageLookupByLibrary.simpleMessage("密码必须匹配"),
        "matchingCamoChange": MessageLookupByLibrary.simpleMessage("改变"),
        "matchingCamoPinError": MessageLookupByLibrary.simpleMessage(
            "您的通用PIN码和伪装PIN码相同。伪装模式将不可用。请更改伪装PIN"),
        "matchingCamoTitle": MessageLookupByLibrary.simpleMessage("无效PIN"),
        "max": MessageLookupByLibrary.simpleMessage("最大"),
        "maxOrder": MessageLookupByLibrary.simpleMessage("最大交易量"),
        "media": MessageLookupByLibrary.simpleMessage("消息"),
        "mediaBrowse": MessageLookupByLibrary.simpleMessage("浏览"),
        "mediaBrowseFeed": MessageLookupByLibrary.simpleMessage("浏览Feed"),
        "mediaBy": MessageLookupByLibrary.simpleMessage("通过"),
        "mediaNotSavedDescription":
            MessageLookupByLibrary.simpleMessage("您没有收藏的文章"),
        "mediaSaved": MessageLookupByLibrary.simpleMessage("已收藏"),
        "memo": MessageLookupByLibrary.simpleMessage("备忘录"),
        "merge": MessageLookupByLibrary.simpleMessage("合并"),
        "mergedValue": MessageLookupByLibrary.simpleMessage("合并值"),
        "milliseconds": MessageLookupByLibrary.simpleMessage("毫秒"),
        "min": MessageLookupByLibrary.simpleMessage("最小"),
        "minOrder": MessageLookupByLibrary.simpleMessage("最小交易量"),
        "minValue": m61,
        "minValueBuy": m62,
        "minValueOrder": m63,
        "minValueSell": m64,
        "minVolumeInput": m65,
        "minVolumeIsTDH": MessageLookupByLibrary.simpleMessage("必须低于售出量"),
        "minVolumeTitle": MessageLookupByLibrary.simpleMessage("所需最小量"),
        "minVolumeToggle": MessageLookupByLibrary.simpleMessage("使用自定义最小量"),
        "minimizingWillTerminate":
            MessageLookupByLibrary.simpleMessage("警告：最小化 iOS 上的应用程序将终止激活过程。"),
        "minutes": MessageLookupByLibrary.simpleMessage("分钟"),
        "mobileDataWarning": m66,
        "moreInfo": MessageLookupByLibrary.simpleMessage("更多信息"),
        "moreTab": MessageLookupByLibrary.simpleMessage("更多"),
        "multiActivateGas": m67,
        "multiBaseAmtPlaceholder": MessageLookupByLibrary.simpleMessage("数量"),
        "multiBasePlaceholder": MessageLookupByLibrary.simpleMessage("货币"),
        "multiBaseSelectTitle": MessageLookupByLibrary.simpleMessage("卖出"),
        "multiConfirmCancel": MessageLookupByLibrary.simpleMessage("取消"),
        "multiConfirmConfirm": MessageLookupByLibrary.simpleMessage("确认"),
        "multiConfirmTitle": m68,
        "multiCreate": MessageLookupByLibrary.simpleMessage("创建"),
        "multiCreateOrder": MessageLookupByLibrary.simpleMessage("订单"),
        "multiCreateOrders": MessageLookupByLibrary.simpleMessage("订单"),
        "multiEthFee": MessageLookupByLibrary.simpleMessage("费用"),
        "multiFiatCancel": MessageLookupByLibrary.simpleMessage("取消"),
        "multiFiatDesc": MessageLookupByLibrary.simpleMessage("请输入要接收的法币数量"),
        "multiFiatFill": MessageLookupByLibrary.simpleMessage("自动填充"),
        "multiFixErrors": MessageLookupByLibrary.simpleMessage("请在继续之前修复所有错误"),
        "multiInvalidAmt": MessageLookupByLibrary.simpleMessage("数量无效"),
        "multiInvalidSellAmt": MessageLookupByLibrary.simpleMessage("售出量无效"),
        "multiLowGas": m69,
        "multiLowerThanFee": m70,
        "multiMaxSellAmt": MessageLookupByLibrary.simpleMessage("最大售出量为"),
        "multiMinReceiveAmt": MessageLookupByLibrary.simpleMessage("最小接收量为"),
        "multiMinSellAmt": MessageLookupByLibrary.simpleMessage("最小售出量为"),
        "multiReceiveTitle": MessageLookupByLibrary.simpleMessage("接收："),
        "multiSellTitle": MessageLookupByLibrary.simpleMessage("卖出"),
        "multiTab": MessageLookupByLibrary.simpleMessage("多个"),
        "multiTableAmt": MessageLookupByLibrary.simpleMessage("接收量"),
        "multiTablePrice": MessageLookupByLibrary.simpleMessage("价格/CEX"),
        "networkFee": MessageLookupByLibrary.simpleMessage("网络费用"),
        "newAccount": MessageLookupByLibrary.simpleMessage("新帳戶"),
        "newAccountUpper": MessageLookupByLibrary.simpleMessage("新帳戶"),
        "newValue": MessageLookupByLibrary.simpleMessage("新价值"),
        "newsFeed": MessageLookupByLibrary.simpleMessage("Feed新闻"),
        "next": MessageLookupByLibrary.simpleMessage("继续"),
        "no": MessageLookupByLibrary.simpleMessage("不"),
        "noArticles": MessageLookupByLibrary.simpleMessage("没有新闻-请稍后再查看"),
        "noCoinFound": MessageLookupByLibrary.simpleMessage("未找到货币"),
        "noFunds": MessageLookupByLibrary.simpleMessage("无基金"),
        "noFundsDetected": MessageLookupByLibrary.simpleMessage("没有可用基金-请先存入"),
        "noInternet": MessageLookupByLibrary.simpleMessage("无互联网连接"),
        "noItemsToExport": MessageLookupByLibrary.simpleMessage("未选择项目"),
        "noItemsToImport": MessageLookupByLibrary.simpleMessage("未选择项目"),
        "noMatchingOrders": MessageLookupByLibrary.simpleMessage("无匹配订单"),
        "noOrder": m71,
        "noOrderAvailable": MessageLookupByLibrary.simpleMessage("点击创建订单"),
        "noOrders": MessageLookupByLibrary.simpleMessage("没有订单，请先交易"),
        "noRewardYet": MessageLookupByLibrary.simpleMessage("没有奖励可领取-请一小时后重试"),
        "noRewards": MessageLookupByLibrary.simpleMessage("没有奖励可领取"),
        "noSuchCoin": MessageLookupByLibrary.simpleMessage("没有该货币"),
        "noSwaps": MessageLookupByLibrary.simpleMessage("没有历史记录"),
        "noTxs": MessageLookupByLibrary.simpleMessage("没有交易"),
        "nonNumericInput": MessageLookupByLibrary.simpleMessage("该值必须是数字"),
        "none": MessageLookupByLibrary.simpleMessage("没有任何"),
        "notEnoughGas": m72,
        "notEnoughtBalanceForFee":
            MessageLookupByLibrary.simpleMessage("手续费余额不足-减少交易量"),
        "noteOnOrder": MessageLookupByLibrary.simpleMessage("备注：不能取消已匹配的订单"),
        "notePlaceholder": MessageLookupByLibrary.simpleMessage("添加备注"),
        "noteTitle": MessageLookupByLibrary.simpleMessage("备注"),
        "nothingFound": MessageLookupByLibrary.simpleMessage("无内容"),
        "notifSwapCompletedText": m73,
        "notifSwapCompletedTitle":
            MessageLookupByLibrary.simpleMessage("交换已完成"),
        "notifSwapFailedText": m74,
        "notifSwapFailedTitle": MessageLookupByLibrary.simpleMessage("交换失败"),
        "notifSwapStartedText": m75,
        "notifSwapStartedTitle": MessageLookupByLibrary.simpleMessage("已开始新交换"),
        "notifSwapStatusTitle": MessageLookupByLibrary.simpleMessage("交换状态已更改"),
        "notifSwapTimeoutText": m76,
        "notifSwapTimeoutTitle": MessageLookupByLibrary.simpleMessage("交换超时"),
        "notifTxText": m77,
        "notifTxTitle": MessageLookupByLibrary.simpleMessage("应记交易"),
        "numberAssets": m78,
        "officialPressRelease": MessageLookupByLibrary.simpleMessage("官方新闻稿"),
        "okButton": MessageLookupByLibrary.simpleMessage("好的"),
        "oldLogsDelete": MessageLookupByLibrary.simpleMessage("删除"),
        "oldLogsTitle": MessageLookupByLibrary.simpleMessage("历史记录"),
        "oldLogsUsed": MessageLookupByLibrary.simpleMessage("占用的空间"),
        "openMessage": MessageLookupByLibrary.simpleMessage("打开错误消息"),
        "orderBookLess": MessageLookupByLibrary.simpleMessage("较少的"),
        "orderBookMore": MessageLookupByLibrary.simpleMessage("更多的"),
        "orderCancel": m79,
        "orderCreated": MessageLookupByLibrary.simpleMessage("订单已创建"),
        "orderCreatedInfo": MessageLookupByLibrary.simpleMessage("订单已成功创建"),
        "orderDetailsAddress": MessageLookupByLibrary.simpleMessage("地址"),
        "orderDetailsCancel": MessageLookupByLibrary.simpleMessage("取消"),
        "orderDetailsExpedient": m80,
        "orderDetailsExpensive": m81,
        "orderDetailsFor": MessageLookupByLibrary.simpleMessage("与"),
        "orderDetailsIdentical": MessageLookupByLibrary.simpleMessage("CEX相同"),
        "orderDetailsMin": MessageLookupByLibrary.simpleMessage("最小量"),
        "orderDetailsPrice": MessageLookupByLibrary.simpleMessage("价格"),
        "orderDetailsReceive": MessageLookupByLibrary.simpleMessage("接收"),
        "orderDetailsSelect": MessageLookupByLibrary.simpleMessage("选择"),
        "orderDetailsSells": MessageLookupByLibrary.simpleMessage("卖出"),
        "orderDetailsSettings":
            MessageLookupByLibrary.simpleMessage("单击打开详细信息，然后长按选择订购"),
        "orderDetailsSpend": MessageLookupByLibrary.simpleMessage("花费"),
        "orderDetailsTitle": MessageLookupByLibrary.simpleMessage("详细信息"),
        "orderFilled": m82,
        "orderMatched": MessageLookupByLibrary.simpleMessage("已匹配订单"),
        "orderMatching": MessageLookupByLibrary.simpleMessage("订单匹配中"),
        "orderTypePartial": MessageLookupByLibrary.simpleMessage("订单"),
        "orderTypeUnknown": MessageLookupByLibrary.simpleMessage("未知类型订单"),
        "orders": MessageLookupByLibrary.simpleMessage("订单"),
        "ordersActive": MessageLookupByLibrary.simpleMessage("活跃"),
        "ordersHistory": MessageLookupByLibrary.simpleMessage("历史记录"),
        "ordersTableAmount": m83,
        "ordersTablePrice": m84,
        "ordersTableTotal": m85,
        "overwrite": MessageLookupByLibrary.simpleMessage("覆盖"),
        "ownOrder": MessageLookupByLibrary.simpleMessage("这是您个人的订单"),
        "paidFromBalance": MessageLookupByLibrary.simpleMessage("用余额支付："),
        "paidFromVolume": MessageLookupByLibrary.simpleMessage("用已接收的交易量支付"),
        "paidWith": MessageLookupByLibrary.simpleMessage("支付方式："),
        "passwordRequirement": MessageLookupByLibrary.simpleMessage(
            "密码必须至少包含12个字符，包括一个小写、一个大写和一个特殊符号"),
        "pastTransactionsFromDate":
            MessageLookupByLibrary.simpleMessage("您的钱包将显示您过去在指定日期之后进行的交易。"),
        "paymentUriDetailsAccept": MessageLookupByLibrary.simpleMessage("支付"),
        "paymentUriDetailsAcceptQuestion":
            MessageLookupByLibrary.simpleMessage("您接受这笔交易吗？"),
        "paymentUriDetailsAddressSpan":
            MessageLookupByLibrary.simpleMessage("接收方地址"),
        "paymentUriDetailsAmountSpan":
            MessageLookupByLibrary.simpleMessage("数量："),
        "paymentUriDetailsCoinSpan":
            MessageLookupByLibrary.simpleMessage("货币："),
        "paymentUriDetailsDeny": MessageLookupByLibrary.simpleMessage("取消"),
        "paymentUriDetailsTitle":
            MessageLookupByLibrary.simpleMessage("已请求的付款"),
        "paymentUriInactiveCoin": m86,
        "placeOrder": MessageLookupByLibrary.simpleMessage("下单"),
        "pleaseAcceptAllCoinActivationRequests":
            MessageLookupByLibrary.simpleMessage("请接受所有特殊硬币激活请求或取消选择硬币。"),
        "pleaseAddCoin": MessageLookupByLibrary.simpleMessage("请添加货币"),
        "pleaseRestart":
            MessageLookupByLibrary.simpleMessage("请重启应用程序后重试，或按下面的按钮。"),
        "portfolio": MessageLookupByLibrary.simpleMessage("投资组合"),
        "poweredOnKmd": MessageLookupByLibrary.simpleMessage("由Komodo支持"),
        "price": MessageLookupByLibrary.simpleMessage("价格"),
        "privateKey": MessageLookupByLibrary.simpleMessage("私钥"),
        "privateKeys": MessageLookupByLibrary.simpleMessage("私钥"),
        "protectionCtrlConfirmations":
            MessageLookupByLibrary.simpleMessage("确认"),
        "protectionCtrlCustom":
            MessageLookupByLibrary.simpleMessage("使用自定义保护设置"),
        "protectionCtrlOff": MessageLookupByLibrary.simpleMessage("关闭"),
        "protectionCtrlOn": MessageLookupByLibrary.simpleMessage("开启"),
        "protectionCtrlWarning":
            MessageLookupByLibrary.simpleMessage("警告，此原子交换不受dPoW保护。"),
        "pubkey": MessageLookupByLibrary.simpleMessage("公钥"),
        "qrCodeScanner": MessageLookupByLibrary.simpleMessage("二维码扫描仪"),
        "question_1": MessageLookupByLibrary.simpleMessage("你们会保存我的私钥吗？"),
        "question_10": m87,
        "question_2": m88,
        "question_3": MessageLookupByLibrary.simpleMessage("每次原子交换需要多长时间？"),
        "question_4": MessageLookupByLibrary.simpleMessage("在交换期间我要保持在线吗"),
        "question_5": m89,
        "question_6": MessageLookupByLibrary.simpleMessage("你们会提供用户支持吗？"),
        "question_7": MessageLookupByLibrary.simpleMessage("你们有地区限制吗？"),
        "question_8": m90,
        "question_9": m91,
        "rebrandingAnnouncement": MessageLookupByLibrary.simpleMessage(
            "这是一个新时代！我们已正式将名称从“AtomicDEX”更改为“Gleec Wallet”"),
        "receive": MessageLookupByLibrary.simpleMessage("接收"),
        "receiveLower": MessageLookupByLibrary.simpleMessage("接收"),
        "recommendSeedMessage":
            MessageLookupByLibrary.simpleMessage("我们建议在线下存档。"),
        "remove": MessageLookupByLibrary.simpleMessage("停用"),
        "requestedTrade": MessageLookupByLibrary.simpleMessage("已请求的交易"),
        "reset": MessageLookupByLibrary.simpleMessage("清除"),
        "resetTitle": MessageLookupByLibrary.simpleMessage("重置表格"),
        "restoreWallet": MessageLookupByLibrary.simpleMessage("恢复"),
        "retryActivating": MessageLookupByLibrary.simpleMessage("正在重试激活所有货币"),
        "retryAll": MessageLookupByLibrary.simpleMessage("重试激活所有"),
        "rewardsButton": MessageLookupByLibrary.simpleMessage("领取奖励"),
        "rewardsCancel": MessageLookupByLibrary.simpleMessage("取消"),
        "rewardsError": MessageLookupByLibrary.simpleMessage("出现错误。请稍后再试。"),
        "rewardsInProgressLong": MessageLookupByLibrary.simpleMessage("交易正在进行"),
        "rewardsInProgressShort": MessageLookupByLibrary.simpleMessage("处理"),
        "rewardsLowAmountLong":
            MessageLookupByLibrary.simpleMessage("UTXO金额小于10 KMD"),
        "rewardsLowAmountShort": MessageLookupByLibrary.simpleMessage("<10KMD"),
        "rewardsOneHourLong": MessageLookupByLibrary.simpleMessage("还未过去一小时"),
        "rewardsOneHourShort": MessageLookupByLibrary.simpleMessage("<1小时"),
        "rewardsPopupOk": MessageLookupByLibrary.simpleMessage("好的"),
        "rewardsPopupTitle": MessageLookupByLibrary.simpleMessage("奖励状态："),
        "rewardsReadMore":
            MessageLookupByLibrary.simpleMessage("阅读有关KMD活跃用户奖励的更多信息"),
        "rewardsReceive": MessageLookupByLibrary.simpleMessage("接收"),
        "rewardsSuccess": m92,
        "rewardsTableFiat": MessageLookupByLibrary.simpleMessage("法币"),
        "rewardsTableRewards": MessageLookupByLibrary.simpleMessage("奖励，KMD"),
        "rewardsTableStatus": MessageLookupByLibrary.simpleMessage("状态"),
        "rewardsTableTime": MessageLookupByLibrary.simpleMessage("剩余时间"),
        "rewardsTableTitle": MessageLookupByLibrary.simpleMessage("奖励信息"),
        "rewardsTableUXTO":
            MessageLookupByLibrary.simpleMessage("UTXO 数量\nKMD"),
        "rewardsTimeDays": m93,
        "rewardsTimeHours": m94,
        "rewardsTimeMin": m95,
        "rewardsTitle": MessageLookupByLibrary.simpleMessage("奖励信息"),
        "russianLanguage": MessageLookupByLibrary.simpleMessage("俄语"),
        "saveMerged": MessageLookupByLibrary.simpleMessage("保存合并"),
        "scrollToContinue": MessageLookupByLibrary.simpleMessage("滚动到底部继续..."),
        "searchFilterCoin": MessageLookupByLibrary.simpleMessage("搜索货币"),
        "searchFilterSubtitleAVX":
            MessageLookupByLibrary.simpleMessage("选择所有Avax代币"),
        "searchFilterSubtitleBEP":
            MessageLookupByLibrary.simpleMessage("选择所有BEP代币"),
        "searchFilterSubtitleCosmos":
            MessageLookupByLibrary.simpleMessage("选择所有 Cosmos 网络"),
        "searchFilterSubtitleERC":
            MessageLookupByLibrary.simpleMessage("选择所有ERC代币"),
        "searchFilterSubtitleETC":
            MessageLookupByLibrary.simpleMessage("选择所有ETC代币"),
        "searchFilterSubtitleFTM":
            MessageLookupByLibrary.simpleMessage("选择所有Fantom代币"),
        "searchFilterSubtitleHCO":
            MessageLookupByLibrary.simpleMessage("选择所有HecoChain代币"),
        "searchFilterSubtitleHRC":
            MessageLookupByLibrary.simpleMessage("选择所有Harmony代币"),
        "searchFilterSubtitleIris":
            MessageLookupByLibrary.simpleMessage("选择所有虹膜网络"),
        "searchFilterSubtitleKRC":
            MessageLookupByLibrary.simpleMessage("选择所有Kucoin代币"),
        "searchFilterSubtitleMVR":
            MessageLookupByLibrary.simpleMessage("选择所有Moonriver代币"),
        "searchFilterSubtitlePLG":
            MessageLookupByLibrary.simpleMessage("选择所有Polygon代币"),
        "searchFilterSubtitleQRC":
            MessageLookupByLibrary.simpleMessage("选择所有QRC代币"),
        "searchFilterSubtitleSBCH":
            MessageLookupByLibrary.simpleMessage("选择所有SmartBCH代币"),
        "searchFilterSubtitleSLP":
            MessageLookupByLibrary.simpleMessage("选择所有 SLP 代币"),
        "searchFilterSubtitleSmartChain":
            MessageLookupByLibrary.simpleMessage("选择所有智能链"),
        "searchFilterSubtitleTestCoins":
            MessageLookupByLibrary.simpleMessage("选择所有测试资产"),
        "searchFilterSubtitleUBQ":
            MessageLookupByLibrary.simpleMessage("选择所有Ubiq货币"),
        "searchFilterSubtitleZHTLC":
            MessageLookupByLibrary.simpleMessage("选择所有ZHTLC币"),
        "searchFilterSubtitleutxo":
            MessageLookupByLibrary.simpleMessage("选择所有UTXO货币"),
        "searchForTicker": MessageLookupByLibrary.simpleMessage("搜索货币代码"),
        "seconds": MessageLookupByLibrary.simpleMessage("秒"),
        "security": MessageLookupByLibrary.simpleMessage("证券"),
        "seeOrders": m96,
        "seeTxHistory": MessageLookupByLibrary.simpleMessage("查看交易记录"),
        "seedPhrase": MessageLookupByLibrary.simpleMessage("助记词"),
        "seedPhraseTitle": MessageLookupByLibrary.simpleMessage("您的新助記詞"),
        "selectCoin": MessageLookupByLibrary.simpleMessage("选择货币"),
        "selectCoinInfo":
            MessageLookupByLibrary.simpleMessage("选择您想要添加到投资组合的货币"),
        "selectCoinTitle": MessageLookupByLibrary.simpleMessage("激活货币："),
        "selectCoinToBuy": MessageLookupByLibrary.simpleMessage("选择您想买入的货币"),
        "selectCoinToSell": MessageLookupByLibrary.simpleMessage("选择您想卖出的货币"),
        "selectDate": MessageLookupByLibrary.simpleMessage("选择日期"),
        "selectFileImport": MessageLookupByLibrary.simpleMessage("选择文件"),
        "selectLanguage": MessageLookupByLibrary.simpleMessage("选择语言"),
        "selectPaymentMethod": MessageLookupByLibrary.simpleMessage("选择您的支付方式"),
        "selectedOrder": MessageLookupByLibrary.simpleMessage("选择订单"),
        "sell": MessageLookupByLibrary.simpleMessage("卖出"),
        "sellTestCoinWarning":
            MessageLookupByLibrary.simpleMessage("警告，您正在卖出没有实际价值的测试币!"),
        "send": MessageLookupByLibrary.simpleMessage("发送"),
        "setUpPassword": MessageLookupByLibrary.simpleMessage("创建密码"),
        "settingDialogSpan1": MessageLookupByLibrary.simpleMessage("您确定要删除"),
        "settingDialogSpan2": MessageLookupByLibrary.simpleMessage("钱包吗"),
        "settingDialogSpan3": MessageLookupByLibrary.simpleMessage("如果是，请确认您已"),
        "settingDialogSpan4": MessageLookupByLibrary.simpleMessage("记下助记词"),
        "settingDialogSpan5":
            MessageLookupByLibrary.simpleMessage("以便在将来恢复您的钱包"),
        "settingLanguageTitle": MessageLookupByLibrary.simpleMessage("语言"),
        "settings": MessageLookupByLibrary.simpleMessage("设置"),
        "share": MessageLookupByLibrary.simpleMessage("分享"),
        "shareAddress": m97,
        "shouldScanPastTransaction": m98,
        "showAddress": MessageLookupByLibrary.simpleMessage("显示地址"),
        "showDetails": MessageLookupByLibrary.simpleMessage("显示详细信息"),
        "showMyOrders": MessageLookupByLibrary.simpleMessage("显示我的订单"),
        "showingOrders": m99,
        "signInWithPassword": MessageLookupByLibrary.simpleMessage("使用密码登录"),
        "signInWithSeedPhrase":
            MessageLookupByLibrary.simpleMessage("忘记密码？用助记词恢复钱包"),
        "simple": MessageLookupByLibrary.simpleMessage("简单"),
        "simpleTradeActivate": MessageLookupByLibrary.simpleMessage("激活"),
        "simpleTradeBuyHint": m100,
        "simpleTradeBuyTitle": MessageLookupByLibrary.simpleMessage("买入"),
        "simpleTradeClose": MessageLookupByLibrary.simpleMessage("关闭"),
        "simpleTradeMaxActiveCoins": m101,
        "simpleTradeNotActive": m102,
        "simpleTradeRecieve": MessageLookupByLibrary.simpleMessage("接收"),
        "simpleTradeSellHint": m103,
        "simpleTradeSellTitle": MessageLookupByLibrary.simpleMessage("卖出"),
        "simpleTradeSend": MessageLookupByLibrary.simpleMessage("发送"),
        "simpleTradeShowLess": MessageLookupByLibrary.simpleMessage("收起"),
        "simpleTradeShowMore": MessageLookupByLibrary.simpleMessage("显示更多"),
        "simpleTradeUnableActivate": m104,
        "skip": MessageLookupByLibrary.simpleMessage("跳过"),
        "snackbarDismiss": MessageLookupByLibrary.simpleMessage("不予考虑"),
        "soundCantPlayThatMsg": m105,
        "soundPlayedWhen": m106,
        "soundSettingsLink": MessageLookupByLibrary.simpleMessage("声音"),
        "soundSettingsTitle": MessageLookupByLibrary.simpleMessage("声音设置"),
        "soundsDialogTitle": MessageLookupByLibrary.simpleMessage("声音"),
        "soundsDoNotShowAgain":
            MessageLookupByLibrary.simpleMessage("已知晓，不再显示"),
        "soundsExplanation": MessageLookupByLibrary.simpleMessage(
            "交换时，如果您有一个活跃的挂单交易，会收到声音提醒。\n原子交换协议要求参与者在线才能成功交易，声音通知可以帮助实现这一点。"),
        "soundsNote":
            MessageLookupByLibrary.simpleMessage("请注意，您可以在应用程序设置中设置自定义声音。"),
        "spanishLanguage": MessageLookupByLibrary.simpleMessage("西班牙语"),
        "startDate": MessageLookupByLibrary.simpleMessage("开始日期"),
        "startSwap": MessageLookupByLibrary.simpleMessage("开始交换"),
        "step": MessageLookupByLibrary.simpleMessage("步骤"),
        "success": MessageLookupByLibrary.simpleMessage("成功"),
        "support": MessageLookupByLibrary.simpleMessage("支持"),
        "supportLinksDesc": m107,
        "swap": MessageLookupByLibrary.simpleMessage("交换"),
        "swapCurrent": MessageLookupByLibrary.simpleMessage("现状"),
        "swapDetailTitle": MessageLookupByLibrary.simpleMessage("确认兑换细节"),
        "swapEstimated": MessageLookupByLibrary.simpleMessage("预估"),
        "swapFailed": MessageLookupByLibrary.simpleMessage("交换失败"),
        "swapGasActivate": m108,
        "swapGasAmount": m109,
        "swapGasAmountRequired": m110,
        "swapOngoing": MessageLookupByLibrary.simpleMessage("正在交换"),
        "swapProgress": MessageLookupByLibrary.simpleMessage("进度详情"),
        "swapStarted": MessageLookupByLibrary.simpleMessage("已开始"),
        "swapSucceful": MessageLookupByLibrary.simpleMessage("交换成功"),
        "swapTotal": MessageLookupByLibrary.simpleMessage("总共"),
        "swapUUID": MessageLookupByLibrary.simpleMessage("UUID交换"),
        "switchTheme": MessageLookupByLibrary.simpleMessage("切换主题"),
        "syncFromDate": MessageLookupByLibrary.simpleMessage("从指定日期同步"),
        "syncFromSaplingActivation":
            MessageLookupByLibrary.simpleMessage("从树苗激活同步"),
        "syncNewTransactions": MessageLookupByLibrary.simpleMessage("同步新交易"),
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
        "takerOrder": MessageLookupByLibrary.simpleMessage("吃单交易"),
        "timeOut": MessageLookupByLibrary.simpleMessage("超时"),
        "titleCreatePassword": MessageLookupByLibrary.simpleMessage("创建密码"),
        "titleCurrentAsk": MessageLookupByLibrary.simpleMessage("选择订单"),
        "to": MessageLookupByLibrary.simpleMessage("至"),
        "toAddress": MessageLookupByLibrary.simpleMessage("接收地址"),
        "tooManyAssetsEnabledSpan1": MessageLookupByLibrary.simpleMessage("您已"),
        "tooManyAssetsEnabledSpan2":
            MessageLookupByLibrary.simpleMessage("启用资产。启用资产上限为"),
        "tooManyAssetsEnabledSpan3":
            MessageLookupByLibrary.simpleMessage("请在启用新资产前停用一些资产"),
        "tooManyAssetsEnabledTitle":
            MessageLookupByLibrary.simpleMessage("已启用的资产太多"),
        "totalFees": MessageLookupByLibrary.simpleMessage("总费用"),
        "trade": MessageLookupByLibrary.simpleMessage("交易"),
        "tradeCompleted": MessageLookupByLibrary.simpleMessage("交换完成！"),
        "tradeDetail": MessageLookupByLibrary.simpleMessage("交易详情"),
        "tradePreimageError": MessageLookupByLibrary.simpleMessage("无法计算交易费用"),
        "tradingFee": MessageLookupByLibrary.simpleMessage("交易费用："),
        "tradingMode": MessageLookupByLibrary.simpleMessage("交易模式："),
        "transactionAddress": MessageLookupByLibrary.simpleMessage("交易地址"),
        "transactionHidden": MessageLookupByLibrary.simpleMessage("交易隐藏"),
        "transactionHiddenPhishing":
            MessageLookupByLibrary.simpleMessage("由于可能存在网络钓鱼尝试，该交易被隐藏。"),
        "tryRestarting":
            MessageLookupByLibrary.simpleMessage("如果还是有一些货币未被激活，请尝试重启应用程序。"),
        "turkishLanguage": MessageLookupByLibrary.simpleMessage("土耳其语"),
        "txBlock": MessageLookupByLibrary.simpleMessage("区块"),
        "txConfirmations": MessageLookupByLibrary.simpleMessage("确认"),
        "txConfirmed": MessageLookupByLibrary.simpleMessage("已确认"),
        "txFee": MessageLookupByLibrary.simpleMessage("费用"),
        "txFeeTitle": MessageLookupByLibrary.simpleMessage("交易费用"),
        "txHash": MessageLookupByLibrary.simpleMessage("交易ID"),
        "txLimitExceeded":
            MessageLookupByLibrary.simpleMessage("请求过多。超出交易历史请求限制。请稍后重试"),
        "txNotConfirmed": MessageLookupByLibrary.simpleMessage("未确认"),
        "txleft": m112,
        "ukrainianLanguage": MessageLookupByLibrary.simpleMessage("乌克兰"),
        "unlock": MessageLookupByLibrary.simpleMessage("解锁"),
        "unlockFunds": MessageLookupByLibrary.simpleMessage("解锁基金"),
        "unlockSuccess": m113,
        "unspendable": MessageLookupByLibrary.simpleMessage("不可交易"),
        "updatesAvailable": MessageLookupByLibrary.simpleMessage("已有新版本"),
        "updatesChecking": MessageLookupByLibrary.simpleMessage("正在检查更新"),
        "updatesCurrentVersion": m114,
        "updatesNotifAvailable":
            MessageLookupByLibrary.simpleMessage("已有新版本。请更新。"),
        "updatesNotifAvailableVersion": m115,
        "updatesNotifTitle": MessageLookupByLibrary.simpleMessage("可更新"),
        "updatesSkip": MessageLookupByLibrary.simpleMessage("暂时跳过"),
        "updatesTitle": m116,
        "updatesUpToDate": MessageLookupByLibrary.simpleMessage("准备更新"),
        "updatesUpdate": MessageLookupByLibrary.simpleMessage("已更新"),
        "uriInsufficientBalanceSpan1":
            MessageLookupByLibrary.simpleMessage("余额不足，无法扫描"),
        "uriInsufficientBalanceSpan2":
            MessageLookupByLibrary.simpleMessage("付款请求。"),
        "uriInsufficientBalanceTitle":
            MessageLookupByLibrary.simpleMessage("余额不足"),
        "value": MessageLookupByLibrary.simpleMessage("价值"),
        "version": MessageLookupByLibrary.simpleMessage("版本"),
        "viewInExplorerButton": MessageLookupByLibrary.simpleMessage("资源管理器"),
        "viewSeedAndKeys": MessageLookupByLibrary.simpleMessage("助记词和私钥"),
        "volumes": MessageLookupByLibrary.simpleMessage("交易量"),
        "walletInUse": MessageLookupByLibrary.simpleMessage("钱包名称已被使用"),
        "walletMaxChar": MessageLookupByLibrary.simpleMessage("钱包名称最多40个字符"),
        "walletOnly": MessageLookupByLibrary.simpleMessage("仅钱包"),
        "warning": MessageLookupByLibrary.simpleMessage("警告"),
        "warningOkBtn": MessageLookupByLibrary.simpleMessage("好的"),
        "warningShareLogs": MessageLookupByLibrary.simpleMessage(
            "警告-在特殊情况下，此登录数据包含敏感信息，可用于消费交换失败的货币！"),
        "weFailedTo": m117,
        "weFailedToActivate": m118,
        "welcomeInfo": m119,
        "welcomeLetSetUp": MessageLookupByLibrary.simpleMessage("让我们开始吧"),
        "welcomeTitle": MessageLookupByLibrary.simpleMessage("欢迎"),
        "welcomeWallet": MessageLookupByLibrary.simpleMessage("钱包"),
        "willBeRedirected":
            MessageLookupByLibrary.simpleMessage("完成后，您将跳转至投资组合页面"),
        "willTakeTime": MessageLookupByLibrary.simpleMessage(
            "这将需要一段时间，并且应用程序必须保持在前台。\n在激活过程中终止应用程序可能会导致问题。"),
        "withdraw": MessageLookupByLibrary.simpleMessage("提取"),
        "withdrawCameraAccessText": m120,
        "withdrawCameraAccessTitle":
            MessageLookupByLibrary.simpleMessage("被拒绝使用"),
        "withdrawConfirm": MessageLookupByLibrary.simpleMessage("确认提取"),
        "withdrawConfirmError":
            MessageLookupByLibrary.simpleMessage("出现错误。请稍后重试。"),
        "withdrawValue": m121,
        "wrongCoinSpan1": MessageLookupByLibrary.simpleMessage("您正在尝试扫描付款二维码"),
        "wrongCoinSpan2": MessageLookupByLibrary.simpleMessage("但您在"),
        "wrongCoinSpan3": MessageLookupByLibrary.simpleMessage("提取页面"),
        "wrongCoinTitle": MessageLookupByLibrary.simpleMessage("错误货币"),
        "wrongPassword": MessageLookupByLibrary.simpleMessage("密码不匹配。请重试"),
        "yes": MessageLookupByLibrary.simpleMessage("对"),
        "you have a fresh order that is trying to match with an existing order":
            MessageLookupByLibrary.simpleMessage("您有一个新订单正在尝试与现有订单匹配"),
        "you have an active swap in progress":
            MessageLookupByLibrary.simpleMessage("您有一个正在进行的活跃交换"),
        "you have an order that new orders can match with":
            MessageLookupByLibrary.simpleMessage("你有一个新订单可以匹配的订单"),
        "youAreSending": MessageLookupByLibrary.simpleMessage("您正在发送："),
        "youWillReceiveClaim": m122,
        "youWillReceived": MessageLookupByLibrary.simpleMessage("您将收到："),
        "yourWallet": MessageLookupByLibrary.simpleMessage("您的钱包")
      };
}
