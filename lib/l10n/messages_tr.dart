// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a tr locale. All the
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
  String get localeName => 'tr';

  static m0(protocolName) => "${protocolName} paraları etkinleştirilsin mi?";

  static m1(coinName) => "${coinName} etkinleştiriliyor";

  static m2(coinName) => "${coinName} Aktivasyonu";

  static m3(protocolName) => "${protocolName} Etkinleştirme Devam Ediyor";

  static m4(name) => "${name} başarıyla etkinleştirildi !";

  static m5(title) => "Yalnızca ${title} adresli kişiler gösteriliyor";

  static m6(abbr) =>
      "${abbr} etkinleştirilmediği için ${abbr} adresine para gönderemezsiniz. Lütfen portföye gidiniz.";

  static m7(appName) =>
      "Hayır ! Gleec Wallet, gözetimsiz bir cüzdandır. Özel kelimeleriniz, gizli kelimeleriniz ve PIN kodunuz dahil hiçbir hassas bilgiyi kaydetmiyoruz. Bu bilgiler sadece kullanıcının cihazında tutulmaktadır ve başka bir yere gitmez. Bu sayede koin ve tokenlerinizin tüm kontrolü sizdedir.";

  static m8(appName) =>
      "${appName}, hem Android hem de iPhone\'da mobil cihazlar için ve <a href=\"https://gleec.com/\">Windows, Mac ve Linux işletim sistemlerinde</a> masaüstü için kullanılabilir.";

  static m9(appName) =>
      "Diğer DEX cüzdanlar genellikle aynı miktar koin ile tek bir alım satım emri vermeye izin verir, ara token kullanır, en önemlisi de tek bir blokzincirin koinlerinin alım satımına olanak sağlar.\n\n${appName} ise birbirinden farklı iki blokzincir ağı arasında ara token kullanmadan doğrudan takas yapmaya imkân sağlar. ${appName} \'te aynı miktar koin ile birden fazla alım satım emri verebilirsiniz. Mesela 0.1 BTC ile KMD, QTUM ve VRSC için ayrı ayrı alım emirleri verebilirsiniz ve bunlardan birinin tamamlanması halinde diğerleri kendiliğinden iptal olmuş olurlar.";

  static m10(appName) =>
      "Her bir takasın tamamlanma sürecini etkileyen birkaç etken vardır. Takas edilen koinlerin bağlı olduğu blokzincirlerin blok çıkarım zamanları (Bitcoin en yavaşıdır) bunda etkilidir. Bunun yanında kullanıcılar, takas öncesinde güvenlik seçeneklerini özelleştirebilir. Mesela bir KMD takasına başlamadan evvel Gleec Wallet\'da işlem için 3 onayın yeterli olduğu seçeneği işaretlediğinizde takas süresi <a href=\"https://gleec.com/\">noterizasyon</a> eklenmeyeceğinden kısalacaktır.";

  static m11(appName) =>
      "${appName}\'te alım satım yaparken bilinmesi gereken iki tür işlem ücreti vardır.\n\n1. ${appName}, alıcı emirlerinden işlem başına yaklaşık olarak %0.13 (takriben 777\'nin 1\'i kadar, fakat bu da 0.0001\'den az olmamak kaydıyla) işlem ücreti alırken, yapıcı emirlerinden herhangi bir ücret alınmamaktadır.\n\n2. Hem yapıcı hem de alıcı emir sahiplerinin ödemesi gerekli olan ve takasın gerçekleştiği blokzincirlerin standart ağ işlem ücretleri.\n\nAğ işlem ücretleri, takas yapmak istediğiniz paritelerin kendi işleyişlerine göre değişiklik göstermektedir.";

  static m12(name, link, appName, appCompanyShort) =>
      "Evet! ${appName}, <a href=\"${link}\">${appCompanyShort} ${name}</a> aracılığıyla destek sunar. Ekip ve topluluk her zaman yardımcı olmaktan mutluluk duyar!";

  static m13(appName) =>
      "Hayır ! ${appName} tamamıyla merkeziyetsizdir ve kullanıcıların uygulamaya erişimi başkaları tarafından sınırlandırılamaz.";

  static m14(appName, appCompanyShort) =>
      "${appName}, ${appCompanyShort} takımı tarafından geliştirilmiştir. ${appCompanyShort}, koin takası, Geciktirilmiş İş Kanıtı (dPoW), birlikte çalışabilen çoklu zincir mimarisi gibi yenilikçi blokzincir çözümleri geliştiren köklü bir platformdur.";

  static m15(appName) =>
      "Kesinlikle! Daha fazla ayrıntı için <a href=\"https://gleec.com/\">geliştirici belgelerimizi</a> okuyabilir veya ortaklık sorularınız için bizimle iletişime geçebilirsiniz. Belirli bir teknik sorunuz mu var? ${appName} geliştirici topluluğu her zaman yardıma hazır!";

  static m16(coinName1, coinName2) =>
      "${coinName1}/${coinName2} temel alınarak";

  static m17(batteryLevelCritical) =>
      "Telefonunuzun bataryası güvenli bir takası tamamlayamayacak (${batteryLevelCritical}%) kadar düşük. Lütfen önce şarja takıp sonra tekrar deneyiniz.";

  static m18(batteryLevelLow) =>
      "Telefonunuzun bataryası %${batteryLevelLow}\'den daha az. Lütfen telefonunuzu şarj ediniz.";

  static m19(seconde) =>
      "Emir eşleşmesi devam ediyor, lütfen ${seconde} saniye kadar bekleyiniz.";

  static m20(index) => "${index} kelimesini giriniz.";

  static m21(index) =>
      "Gizli kelimeleriniz arasından ${index} olanı hangisidir ?";

  static m22(coin) => "${coin} aktivasyonu iptal edildi";

  static m23(coin) => "${coin} başarıyla etkinleştirildi";

  static m24(protocolName) => "${protocolName} parası etkinleştirildi";

  static m25(protocolName) =>
      "${protocolName} parası başarıyla etkinleştirildi";

  static m26(protocolName) => "${protocolName} parası etkinleştirilmedi";

  static m27(name) => "${name} kişisini silmek istediğinizden emin misiniz ?";

  static m28(iUnderstand) =>
      "Özelleştirilmiş gizli kelime kullanımı yeterince güvenli olmayabilir ve uygulama tarafından oluşturulan BIP39 uyumlu gizli kelimeler ya da özel anahtara (WIF) kıyasla daha kolay kırılabilmektedir. Riskleri kabul edip ne yaptığınızdan emin olduğunuzu tasdiklemek için aşağıdaki kutucuğa \"${iUnderstand}\" yazınız.";

  static m29(coinName) => "${coinName} işlem ücretini alın";

  static m30(coinName) => "${coinName} işlem ücretini gönder";

  static m31(abbr) => "${abbr} adresini girin";

  static m33(gas) => "Yeteri kadar gaz ücreti yok, en az ${gas} Gwei gerekli";

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
      "This disclaimer applies to the contents and services of the app ${appName} and is valid for all users of the “Application” (\'Software\', “Mobile Application”, “Application” or “App”).\n\nThe Application is owned by ${appCompanyLong}.\n\nWe reserve the right to amend the following Terms and Conditions (governing the use of the application “${appName} mobile”) at any time without prior notice and at our sole discretion. It is your responsibility to periodically check this Terms and Conditions for any updates to these Terms, which shall come into force once published.\nYour continued use of the application shall be deemed as acceptance of the following Terms.\nWe are a company incorporated in Vietnam and these Terms and Conditions are governed by and subject to the laws of Vietnam.\nIf You do not agree with these Terms and Conditions, You must not use or access this software.\n";

  static m45(appName) =>
      "You are not allowed to decompile, decode, disassemble, rent, lease, loan, sell, sublicense, or create derivative works from the ${appName} mobile application or the user content. Nor are You allowed to use any network monitoring or detection software to determine the software architecture, or extract information about usage or individuals’ or users’ identities. \nYou are not allowed to copy, modify, reproduce, republish, distribute, display, or transmit for commercial, non-profit or public purposes all or any portion of the application or the user content without our prior written authorization.";

  static m46(appName, appCompanyLong) =>
      "If you create an account in the Mobile Application, you are responsible for maintaining the security of your account and you are fully responsible for all activities that occur under the account and any other actions taken in connection with it. We will not be liable for any acts or omissions by you, including any damages of any kind incurred as a result of such acts or omissions. \n\n${appName} mobile is a non-custodial wallet implementation and thus ${appCompanyLong} can not access nor restore your account in case of (data) loss.";

  static m47(appName) =>
      "End-User License Agreement (EULA) of ${appName} mobile:";

  static m48(coinAbbr) => "${coinAbbr} aktivasyonu iptal edilemedi";

  static m49(coin) => "${coin} musluğuna talep gönderiliyor..";

  static m50(appCompanyShort) => "${appCompanyShort} haberleri";

  static m51(value) => "Ücretler en fazla ${value} olmalıdır";

  static m52(coin) => "${coin} gideri";

  static m53(coin) => "Lütfen ${coin} koinini aktifleştirin.";

  static m54(value) => "Gwei en fazla ${value} olmalıdır";

  static m55(coinName) => "Gelen ${coinName} txs koruma ayarları";

  static m56(abbr) =>
      "${abbr} bakiyesi, alım satım işlem ücretlerini karşılamaya yetmiyor.";

  static m57(coin) => "Geçersiz ${coin} adresi";

  static m58(coinAbbr) => "${coinAbbr} mevcut değil :(";

  static m59(coinName) =>
      "❗Dikkat! ${coinName} piyasasının 24 saatlik işlem hacmi 10 bin dolardan az!";

  static m60(value) => "Sınır en fazla ${value} olmalıdır";

  static m61(coinName, number) =>
      "${coinName} için yapılabilecek en düşük satış hacmi: ${number}";

  static m62(coinName, number) =>
      "${coinName} için yapılabilecek en düşük alım hacmi: ${number}";

  static m63(buyCoin, buyAmount, sellCoin, sellAmount) =>
      "En düşük emir için: ${buyCoin} ${buyAmount}\n(${sellCoin} ${sellAmount})";

  static m64(coinName, number) =>
      "${coinName} için en düşük satım miktarı: ${number}";

  static m65(minValue, coin) => "${minValue} ${coin}\'den büyük olmalı";

  static m66(appName) =>
      "Lütfen artık hücresel veri kullandığınızı ve ${appName} P2P ağına katılımınızın internet trafiğini tükettiğini unutmayın. Hücresel veri planınız maliyetliyse bir WiFi ağı kullanmak daha iyidir.";

  static m67(coin) => "Önce ${coin}\'i etkinleştirin ve bakiyeyi tamamlayın";

  static m68(number) => "${number} Sipariş oluştur:";

  static m69(coin) => "${coin} bakiyesi yetersiz";

  static m70(coin, fee) =>
      "İşlem masrafını ödemeye yetecek ${coin} yok. En az ${fee} ${coin} olmalı.";

  static m71(coinName) =>
      "Uygun bir ${coinName} emri bulunmuyor - bir emir girmeyi deneyin veya daha sonra yeniden kontrol edin.";

  static m72(coin) => "İşlem için yeteri kadar ${coin} yok !";

  static m73(sell, buy) => "${sell}/${buy} takası başarıyla tamamlandı";

  static m74(sell, buy) => "${sell}/${buy} takası başarısız oldu";

  static m75(sell, buy) => "${sell}/${buy} takası başladı";

  static m76(sell, buy) => "${sell}/${buy} takas zaman aşımına uğradı";

  static m77(coin) => "${coin} işlemi aldınız!";

  static m78(assets) => "${assets} Varlıklar";

  static m79(coin) => "Tüm ${coin} emirleri iptal edilecek";

  static m80(delta) => "Ucuz: CEX + %${delta}";

  static m81(delta) => "Pahalı: CEX + %${delta}";

  static m82(fill) => "${fill}% tamamlandı";

  static m83(coin) => "(${coin}) miktarı";

  static m84(coin) => "(${coin}) fiyatı";

  static m85(coin) => "Toplam (${coin})";

  static m86(abbr) =>
      "${abbr} aktif değil. Lütfen aktifleştirip öyle deneyiniz.";

  static m87(appName) => "Gleec Wallet\'ı hangi cihazlarda kullanabilirim ?";

  static m88(appName) =>
      "${appName}\'te alım satım yapmanın diğer DEX\'lerdekinden ne gibi farkları vardır ?";

  static m89(appName) =>
      "${appName}\'te işlem ücretleri nasıl hesaplanmaktadır ?";

  static m90(appName) => "Gleec Wallet\'ın arkasında kimler var ?";

  static m91(appName) =>
      "${appName} üzerinde kendi beyaz etiketli değişimimi geliştirmem mümkün mü?";

  static m92(amount) => "Başarılı ! ${amount} KMD geldi.";

  static m93(dd) => "${dd} gün";

  static m94(hh, minutes) => "${hh}sa ${minutes}dk";

  static m95(mm) => "${mm}dk";

  static m96(amount) => "${amount} adet emri görmek için tıklayın";

  static m97(coinName, address) => "${coinName} adresim:\n${address}";

  static m98(coin) => "Geçmişteki ${coin} işlemleri taransın mı?";

  static m99(count, maxCount) =>
      "${maxCount} siparişten ${count} tanesi gösteriliyor.";

  static m100(coin) => "Lütfen alınacak ${coin} adetini girin";

  static m101(maxCoins) =>
      "Maksimum aktif jeton sayısı ${maxCoins}\'dir. Lütfen bazılarını devre dışı bırakın.";

  static m102(coin) => "${coin} koini aktif değil !";

  static m103(coin) => "Lütfen satmak için ${coin} miktarı girin";

  static m104(coin) => "${coin} aktifleştirilemedi";

  static m105(description) =>
      "Lütfen bir mp3 ya da waw dosyası seçin. ${description}\'de ses dosyalarını oynatacağız.";

  static m106(description) => "${description}\'de oynatıldı.";

  static m107(appName) =>
      "Herhangi bir sorunuz varsa veyahut ${appName} uygulamasıyla ile ilgili teknik bir hata bulduğunuzu düşünüyorsanız bunu ekibimize bildirebilir ve destek alabilirsiniz.";

  static m108(coin) => "Lütfen önce ${coin} ve kontör bakiyesini etkinleştirin";

  static m109(coin) =>
      "${coin} bakiyesi, işlem ücretlerini karşılayamayacak kadar düşük.";

  static m110(coin, amount) =>
      "${coin} bakiyesi, işlem ücretlerini karşılayamayacak kadar düşük. ${amount} ${coin} gerekli.";

  static m111(name) =>
      "Hangi ${name} işlemlerini senkronize etmek istiyorsunuz?";

  static m112(left) => "Kalan işlem: ${left}";

  static m113(amnt, hash) =>
      "${amnt} fonun kilidi başarıyla kaldırıldı - TX: ${hash}";

  static m114(version) => "${version} sürümünü kullanmaktasınız.";

  static m115(version) =>
      "Güncel ${version} sürümü mevcut. Lütfen güncelleyiniz.";

  static m116(appName) => "Gleec Wallet güncellemeleri";

  static m117(coinAbbr) => "${coinAbbr} koinini etkinleştiremedik.";

  static m118(coinAbbr) =>
      "${coinAbbr} koinini etkinleştiremedik.\nLütfen uygulamayı yeniden başlatıp tekrar deneyiniz.";

  static m119(appName) =>
      "Gleec Wallet mobil yerleşik üçüncü nesil DEX işlevselliği ve daha fazla özellikleri ile yeni nesil bir çoklu koin cüzdanıdır.";

  static m120(appName) =>
      "${appName}\'in kameraya erişimi engellenmiş.\nQR kod taramasını yapabilmek için lütfen telefon ayarlarınızdan kamera erişimine izin veriniz.";

  static m121(amount, coinName) => "${amount} adet ${coinName} ÇEK";

  static m122(amount, coin) => "${amount} adet ${coin} alacaksınız";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "Active": MessageLookupByLibrary.simpleMessage("Aktif"),
        "Applause": MessageLookupByLibrary.simpleMessage("Alkış"),
        "Can\'t play that":
            MessageLookupByLibrary.simpleMessage("Bu oynatılamıyor"),
        "Failed": MessageLookupByLibrary.simpleMessage("Başarısız"),
        "Maker": MessageLookupByLibrary.simpleMessage("Yapıcı Emri"),
        "Optional": MessageLookupByLibrary.simpleMessage("İsteğe bağlı"),
        "Play at full volume":
            MessageLookupByLibrary.simpleMessage("Tam seste oynat"),
        "Sound": MessageLookupByLibrary.simpleMessage("Ses"),
        "Taker": MessageLookupByLibrary.simpleMessage("Alıcı Emri"),
        "a swap fails":
            MessageLookupByLibrary.simpleMessage("Takas başarısız oldu"),
        "a swap runs to completion":
            MessageLookupByLibrary.simpleMessage("takas tamamlanmak üzere"),
        "accepteula": MessageLookupByLibrary.simpleMessage("EULA\'yı Kabul Et"),
        "accepttac": MessageLookupByLibrary.simpleMessage(
            "ŞARTLARI ve KOŞULLARI Kabul Et"),
        "activateAccessBiometric": MessageLookupByLibrary.simpleMessage(
            "Biyometrik korumayı etkinleştir"),
        "activateAccessPin":
            MessageLookupByLibrary.simpleMessage("PIN korumasını etkinleştir"),
        "activateCoins": m0,
        "activating": m1,
        "activation": m2,
        "activationCancelled": MessageLookupByLibrary.simpleMessage(
            "Coin aktivasyonu iptal edildi"),
        "activationInProgress": m3,
        "addCoin": MessageLookupByLibrary.simpleMessage("Koin etkinleştir"),
        "addingCoinSuccess": m4,
        "addressAdd": MessageLookupByLibrary.simpleMessage("Adres Ekle"),
        "addressBook": MessageLookupByLibrary.simpleMessage("Adres defteri"),
        "addressBookEmpty":
            MessageLookupByLibrary.simpleMessage("Adres defteri boş"),
        "addressBookFilter": m5,
        "addressBookTitle":
            MessageLookupByLibrary.simpleMessage("Adres Defteri"),
        "addressCoinInactive": m6,
        "addressNotFound":
            MessageLookupByLibrary.simpleMessage("Bir şey bulunamadı"),
        "addressSelectCoin": MessageLookupByLibrary.simpleMessage("Koin Seçin"),
        "addressSend": MessageLookupByLibrary.simpleMessage("Alıcı adresi"),
        "advanced": MessageLookupByLibrary.simpleMessage("Gelişmiş"),
        "all": MessageLookupByLibrary.simpleMessage("Hepsi"),
        "allPastTransactions": MessageLookupByLibrary.simpleMessage(
            "Cüzdanınız geçmiş işlemleri gösterecektir. Tüm bloklar indirilip taranacağından bu, önemli miktarda depolama alanı ve zaman alacaktır."),
        "allowCustomSeed":
            MessageLookupByLibrary.simpleMessage("Kişisel kelimeleri kullan"),
        "alreadyExists": MessageLookupByLibrary.simpleMessage("Zaten mevcut"),
        "amount": MessageLookupByLibrary.simpleMessage("Tutar"),
        "amountToSell": MessageLookupByLibrary.simpleMessage("Satılacak Tutar"),
        "answer_1": m7,
        "answer_10": m8,
        "answer_2": m9,
        "answer_3": m10,
        "answer_4": MessageLookupByLibrary.simpleMessage(
            "Evet, takas boyunca uygulamanız açık ve internetinizin de (anlık kesintilerde bir sıkıntı yoktur) bağlı olması gerekmektedir. Aksi halde; eğer yapıcı emri (maker) veren siz iseniz takasın iptal olma durumu, alıcı emri (taker) veren iseniz de koinlerinizi kaybetme riski ortaya çıkar. Gleec Wallet protokolünde takası yapan her iki tarafın da işlem boyunca çevrimiçi olması ve takasın başarılı olması için gereklidir."),
        "answer_5": m11,
        "answer_6": m12,
        "answer_7": m13,
        "answer_8": m14,
        "answer_9": m15,
        "areYouSure": MessageLookupByLibrary.simpleMessage("EMİN MİSİNİZ?"),
        "authenticate": MessageLookupByLibrary.simpleMessage("Doğrula"),
        "automaticRedirected": MessageLookupByLibrary.simpleMessage(
            "Tekrar aktivasyon işlemi bittiğinde doğrudan portföy sayfasına yönlendirileceksiniz."),
        "availableVolume":
            MessageLookupByLibrary.simpleMessage("maksimum hacim"),
        "back": MessageLookupByLibrary.simpleMessage("geri"),
        "backupTitle": MessageLookupByLibrary.simpleMessage("Yedekle"),
        "basedOnCoinRatio": m16,
        "batteryCriticalError": m17,
        "batteryLowWarning": m18,
        "batterySavingWarning": MessageLookupByLibrary.simpleMessage(
            "Telefonunuz batarya tasarruf modunda. Lütfen bu modu devre dışı bırakın ya da başvuru uygulamasını arka plana KOYMAYIN. Aksi halde uygulama, işletim sisteminiz tarafından kapatılabilir ve devam etmekte olan takasınız varsa başarısız olabilir."),
        "bestAvailableRate":
            MessageLookupByLibrary.simpleMessage("Mevcut en iyi fiyat"),
        "builtKomodo":
            MessageLookupByLibrary.simpleMessage("Gleec Üzerinde Yapılmıştır"),
        "builtOnKmd":
            MessageLookupByLibrary.simpleMessage("Gleec Üzerinde Yapılmıştır"),
        "buy": MessageLookupByLibrary.simpleMessage("Al"),
        "buyOrderType": MessageLookupByLibrary.simpleMessage(
            "Eşleşme olmazsa Yapıcı Emrine çevir"),
        "buySuccessWaiting": MessageLookupByLibrary.simpleMessage(
            "Takas işlendi, lütfen bekleyiniz."),
        "buySuccessWaitingError": m19,
        "buyTestCoinWarning": MessageLookupByLibrary.simpleMessage(
            "Dikkat ! Test koinlerini herhangi bir değer olmadan almak üzeresiniz."),
        "camoPinBioProtectionConflict": MessageLookupByLibrary.simpleMessage(
            "Kamuflajlı PIN ve Biyometrik koruma aynı anda etkinleştirilemez."),
        "camoPinBioProtectionConflictTitle":
            MessageLookupByLibrary.simpleMessage(
                "Kamuflajlı PIN ve Biyometrik Koruma Çakışması"),
        "camoPinChange": MessageLookupByLibrary.simpleMessage(
            "Kamuflajlı PIN kodunuzu değiştirin"),
        "camoPinCreate": MessageLookupByLibrary.simpleMessage(
            "Kamuflajlı PIN kodu oluşturun"),
        "camoPinDesc": MessageLookupByLibrary.simpleMessage(
            "Uygulamanın kilidini Kamuflaj PIN\'i ile açarsanız, sahte bir DÜŞÜK bakiye gösterilecek ve Kamuflaj PIN\'i yapılandırma seçeneği ayarlarda GÖRÜNMEYECEK"),
        "camoPinInvalid":
            MessageLookupByLibrary.simpleMessage("Geçersiz Kamuflajlı PIN"),
        "camoPinLink": MessageLookupByLibrary.simpleMessage("Kamuflajlı PIN"),
        "camoPinNotFound":
            MessageLookupByLibrary.simpleMessage("Kamuflajlı PIN bulunamadı"),
        "camoPinOff": MessageLookupByLibrary.simpleMessage("Kapalı"),
        "camoPinOn": MessageLookupByLibrary.simpleMessage("Açık"),
        "camoPinSaved":
            MessageLookupByLibrary.simpleMessage("Kamuflajlı PIN kaydedildi"),
        "camoPinTitle": MessageLookupByLibrary.simpleMessage("Kamuflajlı PIN"),
        "camoSetupSubtitle": MessageLookupByLibrary.simpleMessage(
            "Yeni bir kamuflajlı PIN girin"),
        "camoSetupTitle":
            MessageLookupByLibrary.simpleMessage("Kamuflajlı PIN Kurulumu"),
        "camouflageSetup":
            MessageLookupByLibrary.simpleMessage("Kamuflajlı PIN Kurulumu"),
        "cancel": MessageLookupByLibrary.simpleMessage("İptal"),
        "cancelActivation":
            MessageLookupByLibrary.simpleMessage("Etkinleştirmeyi İptal Et"),
        "cancelActivationQuestion": MessageLookupByLibrary.simpleMessage(
            "Etkinleştirmeyi iptal etmek istediğinizden emin misiniz?"),
        "cancelButton": MessageLookupByLibrary.simpleMessage("İptal"),
        "cancelOrder": MessageLookupByLibrary.simpleMessage("Emri İptal Et"),
        "candleChartError": MessageLookupByLibrary.simpleMessage(
            "Bir hata oluştu, lütfen daha sonra tekrar deneyiniz."),
        "cantDeleteDefaultCoinOk":
            MessageLookupByLibrary.simpleMessage("Tamam"),
        "cantDeleteDefaultCoinSpan": MessageLookupByLibrary.simpleMessage(
            "Ön tanımlı bir koindir. Ön tanımlı koinler kaldırılamaz"),
        "cantDeleteDefaultCoinTitle":
            MessageLookupByLibrary.simpleMessage("Kaldırılamaz"),
        "cex": MessageLookupByLibrary.simpleMessage("CEX"),
        "cexChangeRate": MessageLookupByLibrary.simpleMessage("CEX rasyosu"),
        "cexData": MessageLookupByLibrary.simpleMessage("CEX verisi"),
        "cexDataDesc": MessageLookupByLibrary.simpleMessage(
            "Bu simgeyle işaretlenen piyasa verileri (fiyatlar, çizelgeler vb.) üçüncü taraf kaynaklardan (<a href=\"https://www.coingecko.com/\">coingecko.com</a>, <a href=\" https://openrates.io/\">openrates.io</a>)."),
        "cexRate": MessageLookupByLibrary.simpleMessage("CEX Oranı"),
        "changePin":
            MessageLookupByLibrary.simpleMessage("PIN kodunu değiştir"),
        "checkForUpdates":
            MessageLookupByLibrary.simpleMessage("Güncellemeleri kontrol et"),
        "checkOut": MessageLookupByLibrary.simpleMessage("Ödeme"),
        "checkSeedPhrase": MessageLookupByLibrary.simpleMessage(
            "Gizli kelimeleri kontrol edin"),
        "checkSeedPhraseButton1": MessageLookupByLibrary.simpleMessage("DEVAM"),
        "checkSeedPhraseButton2":
            MessageLookupByLibrary.simpleMessage("GERİ DÖN VE KONTROL ET"),
        "checkSeedPhraseHint": m20,
        "checkSeedPhraseInfo": MessageLookupByLibrary.simpleMessage(
            "Gizli kelimeleriniz çok önemlidir, bu yüzden onları doğru kaydettiğinizden emin olmak istiyoruz. Cüzdanınızı istediğiniz zaman kolayca geri yükleyebilmeniz için gizli kelimeleriniz hakkında size şimdi üç farklı soru soracağız."),
        "checkSeedPhraseSubtile": m21,
        "checkSeedPhraseTitle": MessageLookupByLibrary.simpleMessage(
            "GİZLİ KELİMELERİZİ BİR KEZ DAHA KONTROL EDİNİZ"),
        "chineseLanguage": MessageLookupByLibrary.simpleMessage("Çince"),
        "claim": MessageLookupByLibrary.simpleMessage("talep et"),
        "claimTitle":
            MessageLookupByLibrary.simpleMessage("KMD ödülünüzü alın"),
        "clickToSee":
            MessageLookupByLibrary.simpleMessage("Görmek için tıklayın"),
        "clipboard": MessageLookupByLibrary.simpleMessage("Panoya kopyalandı"),
        "clipboardCopy": MessageLookupByLibrary.simpleMessage("Panoya kopyala"),
        "close": MessageLookupByLibrary.simpleMessage("Kapat"),
        "closeMessage":
            MessageLookupByLibrary.simpleMessage("Hata mesajını kapat"),
        "closePreview":
            MessageLookupByLibrary.simpleMessage("Ön izlemeyi kapat"),
        "code": MessageLookupByLibrary.simpleMessage("Kod:"),
        "cofirmCancelActivation": MessageLookupByLibrary.simpleMessage(
            "Etkinleştirmeyi iptal etmek istediğinizden emin misiniz?"),
        "coinActivationCancelled": m22,
        "coinActivationSuccessfull": m23,
        "coinSelectClear": MessageLookupByLibrary.simpleMessage("Temizle"),
        "coinSelectNotFound":
            MessageLookupByLibrary.simpleMessage("Aktif koin yok"),
        "coinSelectTitle": MessageLookupByLibrary.simpleMessage("Koin Seç"),
        "coinsActivatedLimitReached": MessageLookupByLibrary.simpleMessage(
            "Maksimum varlık sayısını seçtiniz"),
        "coinsAreActivated": m24,
        "coinsAreActivatedSuccessfully": m25,
        "coinsAreNotActivated": m26,
        "comingSoon": MessageLookupByLibrary.simpleMessage("Yakında..."),
        "commingsoon":
            MessageLookupByLibrary.simpleMessage("TX detayları yakında !"),
        "commingsoonGeneral":
            MessageLookupByLibrary.simpleMessage("Detaylar yakında !"),
        "commissionFee":
            MessageLookupByLibrary.simpleMessage("komisyon ücreti"),
        "comparedTo24hrCex": MessageLookupByLibrary.simpleMessage(
            "ortalama ile karşılaştırıldığında 24 saatlik CEX fiyatı"),
        "comparedToCex":
            MessageLookupByLibrary.simpleMessage("CEX ile kıyaslanınca"),
        "configureWallet": MessageLookupByLibrary.simpleMessage(
            "Cüzdanınız ayarlanıyor, lütfen bekleyiniz.."),
        "confirm": MessageLookupByLibrary.simpleMessage("Onayla"),
        "confirmCamouflageSetup":
            MessageLookupByLibrary.simpleMessage("Kamuflajlı PIN\'i Onaylayın"),
        "confirmCancel": MessageLookupByLibrary.simpleMessage(
            "Emri iptal etmek istediğinizden emin misiniz ?"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Parolayı onayla"),
        "confirmPin": MessageLookupByLibrary.simpleMessage("PIN kodunu onayla"),
        "confirmSeed":
            MessageLookupByLibrary.simpleMessage("Gizli Kelimeleri Onayla"),
        "confirmeula": MessageLookupByLibrary.simpleMessage(
            "Aşağıdaki düğmeye tıklayarak \'EULA\' ve \'Kullanım Şartları\'nı okumuş ve kabul etmiş sayılırsınız"),
        "connecting": MessageLookupByLibrary.simpleMessage("Bağlanıyor.."),
        "contactCancel": MessageLookupByLibrary.simpleMessage("İptal"),
        "contactDelete": MessageLookupByLibrary.simpleMessage("Kişiyi Sil"),
        "contactDeleteBtn": MessageLookupByLibrary.simpleMessage("Sil"),
        "contactDeleteWarning": m27,
        "contactDiscardBtn": MessageLookupByLibrary.simpleMessage("Vazgeç"),
        "contactEdit": MessageLookupByLibrary.simpleMessage("Düzenle"),
        "contactExit": MessageLookupByLibrary.simpleMessage("Çık"),
        "contactExitWarning":
            MessageLookupByLibrary.simpleMessage("Değişiklikleri kaydetme ?"),
        "contactNotFound":
            MessageLookupByLibrary.simpleMessage("Kişi bulunamadı"),
        "contactSave": MessageLookupByLibrary.simpleMessage("Kaydet"),
        "contactTitle": MessageLookupByLibrary.simpleMessage("Kişi detayları"),
        "contactTitleName": MessageLookupByLibrary.simpleMessage("İsim"),
        "contract": MessageLookupByLibrary.simpleMessage("Sözleşme"),
        "convert": MessageLookupByLibrary.simpleMessage("Dönüştür"),
        "couldNotLaunchUrl":
            MessageLookupByLibrary.simpleMessage("URL başlatılamadı"),
        "couldntImportError":
            MessageLookupByLibrary.simpleMessage("İçeri alınamıyor"),
        "create": MessageLookupByLibrary.simpleMessage("Ticaret"),
        "createAWallet": MessageLookupByLibrary.simpleMessage("CÜZDAN OLUŞTUR"),
        "createContact": MessageLookupByLibrary.simpleMessage("Kişi Ekle"),
        "createPin": MessageLookupByLibrary.simpleMessage("PIN Kodu Oluştur"),
        "currency": MessageLookupByLibrary.simpleMessage("Kur"),
        "currencyDialogTitle": MessageLookupByLibrary.simpleMessage("Kur"),
        "currentValue": MessageLookupByLibrary.simpleMessage("Mevcut değer:"),
        "customFee":
            MessageLookupByLibrary.simpleMessage("Özelleştirilmiş gider"),
        "customFeeWarning": MessageLookupByLibrary.simpleMessage(
            "Özelleştirilmiş giderleri yalnızca ne yaptığınızdan emin olduğunuzda kullanın !"),
        "customSeedWarning": m28,
        "dPow": MessageLookupByLibrary.simpleMessage("Gleec dPoW Koruması"),
        "date": MessageLookupByLibrary.simpleMessage("Tarih"),
        "decryptingWallet":
            MessageLookupByLibrary.simpleMessage("Cüzdan deşifre ediliyor"),
        "delete": MessageLookupByLibrary.simpleMessage("Sil"),
        "deleteConfirm":
            MessageLookupByLibrary.simpleMessage("Devre dışı bırakmayı onayla"),
        "deleteSpan1":
            MessageLookupByLibrary.simpleMessage("Kaldırmak istiyor musunuz"),
        "deleteSpan2": MessageLookupByLibrary.simpleMessage(
            "portföyünüzden mi? Eşleşmeyen tüm siparişler iptal edilecektir."),
        "deleteSpan3": MessageLookupByLibrary.simpleMessage(
            " ayrıca devre dışı bırakılacak"),
        "deleteWallet": MessageLookupByLibrary.simpleMessage("Cüzdanı Sil"),
        "deletingWallet":
            MessageLookupByLibrary.simpleMessage("Cüzdan siliniyor.."),
        "detailedFeesReceiveCoinTransactionFee": m29,
        "detailedFeesSendCoinTransactionFee": m30,
        "detailedFeesSendTradingFeeTransactionFee":
            MessageLookupByLibrary.simpleMessage(
                "işlem ücreti gönder işlem ücreti"),
        "detailedFeesTradingFee":
            MessageLookupByLibrary.simpleMessage("işlem ücreti"),
        "details": MessageLookupByLibrary.simpleMessage("detaylar"),
        "deutscheLanguage": MessageLookupByLibrary.simpleMessage("Almanca"),
        "developerTitle": MessageLookupByLibrary.simpleMessage("Geliştirici"),
        "dex": MessageLookupByLibrary.simpleMessage("DEX"),
        "dexIsNotAvailable":
            MessageLookupByLibrary.simpleMessage("Bu koin DEX\'te yoktur"),
        "disableScreenshots": MessageLookupByLibrary.simpleMessage(
            "Ekran Görüntülerini/Önizlemeyi Devre Dışı Bırak"),
        "disclaimerAndTos": MessageLookupByLibrary.simpleMessage(
            "Yasal Uyarı ve Kullanım Şartları"),
        "doNotCloseTheAppTapForMoreInfo": MessageLookupByLibrary.simpleMessage(
            "Uygulamayı kapatmayın. Daha fazla bilgi için dokunun..."),
        "done": MessageLookupByLibrary.simpleMessage("Bitti"),
        "dontAskAgain": MessageLookupByLibrary.simpleMessage("Tekrar sorma"),
        "dontWantPassword":
            MessageLookupByLibrary.simpleMessage("Parola istemiyorum"),
        "duration": MessageLookupByLibrary.simpleMessage("Süre"),
        "editContact": MessageLookupByLibrary.simpleMessage("Kişiyi Düzenle"),
        "emptyCoin": m31,
        "emptyExportPass": MessageLookupByLibrary.simpleMessage(
            "Parola şifreleme kısmı boş kalamaz"),
        "emptyImportPass":
            MessageLookupByLibrary.simpleMessage("Parola kısmı boş kalamaz"),
        "emptyName":
            MessageLookupByLibrary.simpleMessage("Kişi adı boş kalamaz"),
        "emptyWallet":
            MessageLookupByLibrary.simpleMessage("Cüzdan adı boş kalamaz"),
        "enableNotificationsForActivationProgress":
            MessageLookupByLibrary.simpleMessage(
                "Etkinleştirme ilerlemesiyle ilgili güncellemeleri almak için lütfen bildirimleri etkinleştirin."),
        "enableTestCoins":
            MessageLookupByLibrary.simpleMessage("Test Koinlerini Aktifleştir"),
        "enablingTooManyAssetsSpan1":
            MessageLookupByLibrary.simpleMessage("Var"),
        "enablingTooManyAssetsSpan2": MessageLookupByLibrary.simpleMessage(
            "koininiz zaten ekli ve daha fazla etkinleştirmeye çalışıyorsunuz"),
        "enablingTooManyAssetsSpan3": MessageLookupByLibrary.simpleMessage(
            "Etkinleştirilebilir maksimum coin sayısı:"),
        "enablingTooManyAssetsSpan4": MessageLookupByLibrary.simpleMessage(
            "Yenilerini eklemeden önce lütfen eskilerinden birkaçını kaldırın."),
        "enablingTooManyAssetsTitle": MessageLookupByLibrary.simpleMessage(
            "Çok fazla sayıda koin etkinleştirmeye çalışıyorsunuz"),
        "encryptingWallet":
            MessageLookupByLibrary.simpleMessage("Cüzdan şifreleniyor"),
        "englishLanguage": MessageLookupByLibrary.simpleMessage("İngilizce"),
        "enterNewPinCode":
            MessageLookupByLibrary.simpleMessage("Yeni PIN kodunu giriniz"),
        "enterOldPinCode":
            MessageLookupByLibrary.simpleMessage("Eski PIN kodunu giriniz"),
        "enterPinCode":
            MessageLookupByLibrary.simpleMessage("PIN Kodunuzu giriniz"),
        "enterSeedPhrase": MessageLookupByLibrary.simpleMessage(
            "Gizli kelimelerinizi giriniz"),
        "enterSellAmount": MessageLookupByLibrary.simpleMessage(
            "Önce satış miktarını girmelisiniz"),
        "enterpassword": MessageLookupByLibrary.simpleMessage(
            "Lütfen devam etmek için parolanızı giriniz"),
        "errorAmountBalance":
            MessageLookupByLibrary.simpleMessage("Yeterli bakiye yok"),
        "errorNotAValidAddress":
            MessageLookupByLibrary.simpleMessage("Geçerli bir adres değil"),
        "errorNotAValidAddressSegWit": MessageLookupByLibrary.simpleMessage(
            "Segwiit adresler henüz desteklenmemektir"),
        "errorNotEnoughGas": m33,
        "errorTryAgain": MessageLookupByLibrary.simpleMessage(
            "Hata, lütfen tekrar deneyiniz"),
        "errorTryLater": MessageLookupByLibrary.simpleMessage(
            "Hata, lütfen daha sonra deneyiniz"),
        "errorValueEmpty": MessageLookupByLibrary.simpleMessage(
            "Değer çok yüksek ya da çok düşük"),
        "errorValueNotEmpty":
            MessageLookupByLibrary.simpleMessage("Lütfen veri giriniz"),
        "estimateValue":
            MessageLookupByLibrary.simpleMessage("Tahmini Toplam Değer"),
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
            MessageLookupByLibrary.simpleMessage("Örnek: build case level ..."),
        "exchangeExpedient": MessageLookupByLibrary.simpleMessage("Ucuz"),
        "exchangeExpensive": MessageLookupByLibrary.simpleMessage("Pahalı"),
        "exchangeIdentical": MessageLookupByLibrary.simpleMessage("CEX\'de"),
        "exchangeRate": MessageLookupByLibrary.simpleMessage("Takas rasyosu:"),
        "exchangeTitle": MessageLookupByLibrary.simpleMessage("TAKAS"),
        "exportButton": MessageLookupByLibrary.simpleMessage("Dışa Aktar"),
        "exportContactsTitle": MessageLookupByLibrary.simpleMessage("Kişiler"),
        "exportDesc": MessageLookupByLibrary.simpleMessage(
            "Lütfen şifrelenmiş dosyaya aktarılacak öğeleri seçiniz."),
        "exportLink": MessageLookupByLibrary.simpleMessage("Dışa Aktar"),
        "exportNotesTitle": MessageLookupByLibrary.simpleMessage("Notlar"),
        "exportSuccessTitle": MessageLookupByLibrary.simpleMessage(
            "Öğeler dışa başarıyla aktarıldı."),
        "exportSwapsTitle": MessageLookupByLibrary.simpleMessage("Takaslar"),
        "exportTitle": MessageLookupByLibrary.simpleMessage("Dışa Aktar"),
        "failedToCancelActivation": m48,
        "fakeBalanceAmt":
            MessageLookupByLibrary.simpleMessage("Sahte bakiye tutarı:"),
        "faqTitle":
            MessageLookupByLibrary.simpleMessage("Sıkça Sorulan Sorular"),
        "faucetError": MessageLookupByLibrary.simpleMessage("Hata"),
        "faucetInProgress": m49,
        "faucetName": MessageLookupByLibrary.simpleMessage("MUSLUK"),
        "faucetSuccess": MessageLookupByLibrary.simpleMessage("Başarılı"),
        "faucetTimedOut":
            MessageLookupByLibrary.simpleMessage("Talep zaman aşımına uğradı"),
        "feedNewsTab": MessageLookupByLibrary.simpleMessage("Haberler"),
        "feedNotFound": MessageLookupByLibrary.simpleMessage("Bir şey yok"),
        "feedNotifTitle": m50,
        "feedReadMore":
            MessageLookupByLibrary.simpleMessage("Daha fazlası için.."),
        "feedTab": MessageLookupByLibrary.simpleMessage("Bülten"),
        "feedTitle": MessageLookupByLibrary.simpleMessage("Haber Bülteni"),
        "feedUnableToProceed": MessageLookupByLibrary.simpleMessage(
            "Haber güncellemeleri alınamıyor"),
        "feedUnableToUpdate": MessageLookupByLibrary.simpleMessage(
            "Haber güncellemeleri alınamıyor"),
        "feedUpToDate": MessageLookupByLibrary.simpleMessage("Zaten güncel"),
        "feedUpdated":
            MessageLookupByLibrary.simpleMessage("Haber bülteni güncellendi"),
        "feedback":
            MessageLookupByLibrary.simpleMessage("Geri Bildirim Gönder"),
        "feesError": m51,
        "filtersAll": MessageLookupByLibrary.simpleMessage("Hepsi"),
        "filtersButton": MessageLookupByLibrary.simpleMessage("Filtre"),
        "filtersClearAll":
            MessageLookupByLibrary.simpleMessage("Filtreleri temizle"),
        "filtersFailed": MessageLookupByLibrary.simpleMessage("Başarısız"),
        "filtersFrom": MessageLookupByLibrary.simpleMessage("den itibaren"),
        "filtersMaker": MessageLookupByLibrary.simpleMessage("Yapıcı Emir"),
        "filtersReceive": MessageLookupByLibrary.simpleMessage("Coin al"),
        "filtersSell": MessageLookupByLibrary.simpleMessage("Coin sat"),
        "filtersStatus": MessageLookupByLibrary.simpleMessage("Durum"),
        "filtersSuccessful": MessageLookupByLibrary.simpleMessage("Başarılı"),
        "filtersTaker": MessageLookupByLibrary.simpleMessage("Alıcı Emir"),
        "filtersTo": MessageLookupByLibrary.simpleMessage("e kadar"),
        "filtersType": MessageLookupByLibrary.simpleMessage("Alıcı/Yapıcı"),
        "fingerprint": MessageLookupByLibrary.simpleMessage("Parmak izi"),
        "finishingUp": MessageLookupByLibrary.simpleMessage(
            "Bitiriliyor, lütfen bekleyin"),
        "foundQrCode": MessageLookupByLibrary.simpleMessage("QR Kodu Bulundu"),
        "frenchLanguage": MessageLookupByLibrary.simpleMessage("Fransızca"),
        "from": MessageLookupByLibrary.simpleMessage("Gönderici"),
        "futureTransactions": MessageLookupByLibrary.simpleMessage(
            "Genel anahtarınızla ilişkili etkinleştirme sonrasında gelecekte yapılacak işlemleri senkronize edeceğiz. Bu en hızlı seçenektir ve en az depolama alanını kaplar."),
        "gasFee": m52,
        "gasLimit": MessageLookupByLibrary.simpleMessage("Gaz ücreti limiti"),
        "gasNotActive": m53,
        "gasPrice": MessageLookupByLibrary.simpleMessage("Gaz ücreti"),
        "generalPinNotActive": MessageLookupByLibrary.simpleMessage(
            "Normal PIN koruması aktif değil.\nKamuflajlı koruma modu aktif olmayacak.\nLütfen PIN korumasını aktifleştirin."),
        "getBackupPhrase": MessageLookupByLibrary.simpleMessage(
            "Önemli: Devam etmeden önce gizli kelimelerinizi güvenli bir şekilde yedekleyin !"),
        "gettingTxWait": MessageLookupByLibrary.simpleMessage(
            "İşlem alınıyor, lütfen bekleyin"),
        "goToPorfolio": MessageLookupByLibrary.simpleMessage("Portföye git"),
        "gweiError": m54,
        "helpLink": MessageLookupByLibrary.simpleMessage("Yardım"),
        "helpTitle": MessageLookupByLibrary.simpleMessage("Yardım ve Destek"),
        "hideBalance": MessageLookupByLibrary.simpleMessage("Bakiyeleri gizle"),
        "hintConfirmPassword":
            MessageLookupByLibrary.simpleMessage("Parolayı Onayla"),
        "hintCreatePassword":
            MessageLookupByLibrary.simpleMessage("Parola Oluştur"),
        "hintCurrentPassword":
            MessageLookupByLibrary.simpleMessage("Mevcut parola"),
        "hintEnterPassword":
            MessageLookupByLibrary.simpleMessage("Parolanızı girin"),
        "hintEnterSeedPhrase":
            MessageLookupByLibrary.simpleMessage("Gizli kelimelerinizi girin"),
        "hintNameYourWallet":
            MessageLookupByLibrary.simpleMessage("Cüzdanınızı adlandırın"),
        "hintPassword": MessageLookupByLibrary.simpleMessage("Parola"),
        "history": MessageLookupByLibrary.simpleMessage("geçmiş"),
        "hours": MessageLookupByLibrary.simpleMessage("sa"),
        "hungarianLanguage": MessageLookupByLibrary.simpleMessage("Macarca"),
        "iUnderstand": MessageLookupByLibrary.simpleMessage("Anladım"),
        "importButton": MessageLookupByLibrary.simpleMessage("İçeri Al"),
        "importDecryptError": MessageLookupByLibrary.simpleMessage(
            "Geçersiz şifre ya da hatalı dosya"),
        "importDesc":
            MessageLookupByLibrary.simpleMessage("İçeri alınacaklar:"),
        "importFileNotFound":
            MessageLookupByLibrary.simpleMessage("Dosya bulunamadı"),
        "importInvalidSwapData": MessageLookupByLibrary.simpleMessage(
            "Geçersiz takas bilgisi. Lütfen takas durumunu gösteren geçerli bir JSON dosyası ekleyin."),
        "importLink": MessageLookupByLibrary.simpleMessage("İçeri Al"),
        "importLoadDesc": MessageLookupByLibrary.simpleMessage(
            "Lütfen içeri alınacak şifrelenmiş dosyayı seçin."),
        "importLoadSwapDesc": MessageLookupByLibrary.simpleMessage(
            "Lütfen içeri alınacak düz metin takas dosyasını seçin."),
        "importLoading": MessageLookupByLibrary.simpleMessage("Açılıyor.."),
        "importPassCancel": MessageLookupByLibrary.simpleMessage("İptal"),
        "importPassOk": MessageLookupByLibrary.simpleMessage("Tamam"),
        "importPassword": MessageLookupByLibrary.simpleMessage("Parola"),
        "importSingleSwapLink":
            MessageLookupByLibrary.simpleMessage("Tek Takas İçeri Al"),
        "importSingleSwapTitle":
            MessageLookupByLibrary.simpleMessage("Takas İçeri Al"),
        "importSomeItemsSkippedWarning":
            MessageLookupByLibrary.simpleMessage("Bazı öğeler atlandı."),
        "importSuccessTitle": MessageLookupByLibrary.simpleMessage(
            "Öğeler başarıyla içeri alındı."),
        "importSwapFailed": MessageLookupByLibrary.simpleMessage(
            "Takas içeri alma başarısız oldu."),
        "importSwapJsonDecodingError": MessageLookupByLibrary.simpleMessage(
            "Json dosyası çözülürken hata oluştu."),
        "importTitle": MessageLookupByLibrary.simpleMessage("İçeri Al"),
        "incomingTransactionsProtectionSettings": m55,
        "infoPasswordDialog": MessageLookupByLibrary.simpleMessage(
            "Güvenlı bir parola kullanın ve onu, uygulamayı kullandığınız cihazda saklamayın."),
        "infoTrade1": MessageLookupByLibrary.simpleMessage(
            "Takas talebi geri alınamaz ve bu nihai bir işlemdir !"),
        "infoTrade2": MessageLookupByLibrary.simpleMessage(
            "Bu işlem 60 dakikaya kadar sürebilir. Uygulamayı KAPATMAYINIZ !"),
        "infoWalletPassword": MessageLookupByLibrary.simpleMessage(
            "Cüzdanınızın güvenlik tehditlerine karşı şifrelenebilmesi için bir parola ayarlamalısınız."),
        "insufficientBalanceToPay": m56,
        "insufficientText": MessageLookupByLibrary.simpleMessage(
            "Bu işlem için gereken en az hacim şu kadardır"),
        "insufficientTitle":
            MessageLookupByLibrary.simpleMessage("Yetersiz hacim"),
        "internetRefreshButton": MessageLookupByLibrary.simpleMessage("Yenile"),
        "internetRestored": MessageLookupByLibrary.simpleMessage(
            "İnternet Bağlantısı Yeniden Sağlandı"),
        "invalidCoinAddress": m57,
        "invalidSwap":
            MessageLookupByLibrary.simpleMessage("Takasa devam edilemiyor"),
        "invalidSwapDetailsLink":
            MessageLookupByLibrary.simpleMessage("Detaylar"),
        "isUnavailable": m58,
        "japaneseLanguage": MessageLookupByLibrary.simpleMessage("Japonca"),
        "koreanLanguage": MessageLookupByLibrary.simpleMessage("Koreli"),
        "language": MessageLookupByLibrary.simpleMessage("Diller"),
        "latestTxs": MessageLookupByLibrary.simpleMessage("Son İşlemler"),
        "legalTitle": MessageLookupByLibrary.simpleMessage("Yasal"),
        "less": MessageLookupByLibrary.simpleMessage("Daha az"),
        "lessThanCaution": m59,
        "limitError": m60,
        "loading": MessageLookupByLibrary.simpleMessage("Yükleniyor.."),
        "loadingOrderbook":
            MessageLookupByLibrary.simpleMessage("Emir defteri yükleniyor..."),
        "lockScreen": MessageLookupByLibrary.simpleMessage("Ekran kilitli"),
        "lockScreenAuth":
            MessageLookupByLibrary.simpleMessage("Lütfen doğrulayın !"),
        "login": MessageLookupByLibrary.simpleMessage("Giriş"),
        "logout": MessageLookupByLibrary.simpleMessage("Çıkış"),
        "logoutOnExit":
            MessageLookupByLibrary.simpleMessage("Kapanışta Çıkış Yap"),
        "logoutWarning": MessageLookupByLibrary.simpleMessage(
            "Çıkmak istediğinizden emin misiniz ?"),
        "logoutsettings":
            MessageLookupByLibrary.simpleMessage("Çıkış Ayarları"),
        "longMinutes": MessageLookupByLibrary.simpleMessage("dakikalar"),
        "makeAorder": MessageLookupByLibrary.simpleMessage("bir emir girin"),
        "makerDetailsCancel":
            MessageLookupByLibrary.simpleMessage("Emri iptal et"),
        "makerDetailsCreated":
            MessageLookupByLibrary.simpleMessage("de oluşturuldu"),
        "makerDetailsFor": MessageLookupByLibrary.simpleMessage("Almak"),
        "makerDetailsId": MessageLookupByLibrary.simpleMessage("Emir ID"),
        "makerDetailsNoSwaps": MessageLookupByLibrary.simpleMessage(
            "Bu emirle herhangi bir takas başlamadı"),
        "makerDetailsPrice": MessageLookupByLibrary.simpleMessage("Fiyat"),
        "makerDetailsSell": MessageLookupByLibrary.simpleMessage("Sat"),
        "makerDetailsSwaps":
            MessageLookupByLibrary.simpleMessage("Bu emirle takas başladı"),
        "makerDetailsTitle":
            MessageLookupByLibrary.simpleMessage("Yapıcı Emri detayları"),
        "makerOrder": MessageLookupByLibrary.simpleMessage("Yapıcı Emri"),
        "marketplace": MessageLookupByLibrary.simpleMessage("Pazar"),
        "marketsChart": MessageLookupByLibrary.simpleMessage("Tablo"),
        "marketsDepth": MessageLookupByLibrary.simpleMessage("Derinlik"),
        "marketsNoAsks":
            MessageLookupByLibrary.simpleMessage("Soru bulunamadı"),
        "marketsNoBids":
            MessageLookupByLibrary.simpleMessage("Teklif bulunamadı"),
        "marketsOrderDetails":
            MessageLookupByLibrary.simpleMessage("Emir Detayları"),
        "marketsOrderbook":
            MessageLookupByLibrary.simpleMessage("EMİR DEFTERİ"),
        "marketsPrice": MessageLookupByLibrary.simpleMessage("FİYAT"),
        "marketsSelectCoins":
            MessageLookupByLibrary.simpleMessage("Lütfen koinleri seçiniz"),
        "marketsTab": MessageLookupByLibrary.simpleMessage("Piyasalar"),
        "marketsTitle": MessageLookupByLibrary.simpleMessage("PİYASALAR"),
        "matchExportPass":
            MessageLookupByLibrary.simpleMessage("Parolalar uyuşmalı"),
        "matchingCamoChange": MessageLookupByLibrary.simpleMessage("Değiştir"),
        "matchingCamoPinError": MessageLookupByLibrary.simpleMessage(
            "Normal PIN ve Kamuflajlı PIN kodlarınız aynı.\nKamuflajlı koruma modu aktif olmayacak.\nLütfen Kamuflajlı PIN kodunuzu değiştiriniz."),
        "matchingCamoTitle":
            MessageLookupByLibrary.simpleMessage("Geçersiz PIN"),
        "max": MessageLookupByLibrary.simpleMessage("MAKSİMUM"),
        "maxOrder": MessageLookupByLibrary.simpleMessage("Maksimum Emir Hacmi"),
        "media": MessageLookupByLibrary.simpleMessage("Haberler"),
        "mediaBrowse": MessageLookupByLibrary.simpleMessage("GÖZAT"),
        "mediaBrowseFeed":
            MessageLookupByLibrary.simpleMessage("BÜLTENE GÖZAT"),
        "mediaBy": MessageLookupByLibrary.simpleMessage("Yazar:"),
        "mediaNotSavedDescription": MessageLookupByLibrary.simpleMessage(
            "KAYDEDİLMİŞ BİR MAKALENİZ YOK"),
        "mediaSaved": MessageLookupByLibrary.simpleMessage("KAYDEDİLDİ"),
        "memo": MessageLookupByLibrary.simpleMessage("Hafıza"),
        "merge": MessageLookupByLibrary.simpleMessage("Birleştir"),
        "mergedValue":
            MessageLookupByLibrary.simpleMessage("Birleştirilmiş değer:"),
        "milliseconds": MessageLookupByLibrary.simpleMessage("ms"),
        "min": MessageLookupByLibrary.simpleMessage("DK"),
        "minOrder": MessageLookupByLibrary.simpleMessage("En düşük emir hacmi"),
        "minValue": m61,
        "minValueBuy": m62,
        "minValueOrder": m63,
        "minValueSell": m64,
        "minVolumeInput": m65,
        "minVolumeIsTDH": MessageLookupByLibrary.simpleMessage(
            "Satış miktarından düşük olmalı"),
        "minVolumeTitle":
            MessageLookupByLibrary.simpleMessage("Gereken en düşük hacim"),
        "minVolumeToggle": MessageLookupByLibrary.simpleMessage("hacim"),
        "minimizingWillTerminate": MessageLookupByLibrary.simpleMessage(
            "Uyarı: iOS\'ta uygulamanın simge durumuna küçültülmesi etkinleştirme sürecini sonlandıracaktır."),
        "minutes": MessageLookupByLibrary.simpleMessage("dk"),
        "mobileDataWarning": m66,
        "moreInfo": MessageLookupByLibrary.simpleMessage("Daha fazla bilgi"),
        "moreTab": MessageLookupByLibrary.simpleMessage("Daha Fazla"),
        "multiActivateGas": m67,
        "multiBaseAmtPlaceholder":
            MessageLookupByLibrary.simpleMessage("Miktar"),
        "multiBasePlaceholder": MessageLookupByLibrary.simpleMessage("Koin"),
        "multiBaseSelectTitle": MessageLookupByLibrary.simpleMessage("Sat"),
        "multiConfirmCancel": MessageLookupByLibrary.simpleMessage("İptal"),
        "multiConfirmConfirm": MessageLookupByLibrary.simpleMessage("Onayla"),
        "multiConfirmTitle": m68,
        "multiCreate": MessageLookupByLibrary.simpleMessage("Oluştur"),
        "multiCreateOrder": MessageLookupByLibrary.simpleMessage("Emir"),
        "multiCreateOrders": MessageLookupByLibrary.simpleMessage("Emirler"),
        "multiEthFee": MessageLookupByLibrary.simpleMessage("tutar"),
        "multiFiatCancel": MessageLookupByLibrary.simpleMessage("İptal"),
        "multiFiatDesc": MessageLookupByLibrary.simpleMessage(
            "Lütfen almak istediğiniz itibari para miktarını giriniz:"),
        "multiFiatFill":
            MessageLookupByLibrary.simpleMessage("Otomatik doldur"),
        "multiFixErrors": MessageLookupByLibrary.simpleMessage(
            "Devam etmeden önce lütfen hataları gideriniz"),
        "multiInvalidAmt":
            MessageLookupByLibrary.simpleMessage("Geçersiz miktar"),
        "multiInvalidSellAmt":
            MessageLookupByLibrary.simpleMessage("Geçersiz satış miktarı"),
        "multiLowGas": m69,
        "multiLowerThanFee": m70,
        "multiMaxSellAmt":
            MessageLookupByLibrary.simpleMessage("En fazla satış miktarı:"),
        "multiMinReceiveAmt":
            MessageLookupByLibrary.simpleMessage("En az alım miktarı:"),
        "multiMinSellAmt":
            MessageLookupByLibrary.simpleMessage("En satış miktarı:"),
        "multiReceiveTitle": MessageLookupByLibrary.simpleMessage("Al:"),
        "multiSellTitle": MessageLookupByLibrary.simpleMessage("Sat:"),
        "multiTab": MessageLookupByLibrary.simpleMessage("Çoklu"),
        "multiTableAmt":
            MessageLookupByLibrary.simpleMessage("Alınacak Miktar"),
        "multiTablePrice": MessageLookupByLibrary.simpleMessage("CEX/Ücret"),
        "networkFee": MessageLookupByLibrary.simpleMessage("Ağ ücreti"),
        "newAccount": MessageLookupByLibrary.simpleMessage("yeni hesap"),
        "newAccountUpper": MessageLookupByLibrary.simpleMessage("Yeni Hesap"),
        "newValue": MessageLookupByLibrary.simpleMessage("Yeni değer:"),
        "newsFeed": MessageLookupByLibrary.simpleMessage("Haber akışı"),
        "next": MessageLookupByLibrary.simpleMessage("sonraki"),
        "no": MessageLookupByLibrary.simpleMessage("Hayır"),
        "noArticles": MessageLookupByLibrary.simpleMessage(
            "Şimdilik bir haber yok. Lütfen daha sonra tekrar deneyiniz."),
        "noCoinFound": MessageLookupByLibrary.simpleMessage("Koin bulunamadı"),
        "noFunds": MessageLookupByLibrary.simpleMessage("Fon yok"),
        "noFundsDetected": MessageLookupByLibrary.simpleMessage(
            "Fon mevcut değil. Lütfen para yatırın."),
        "noInternet":
            MessageLookupByLibrary.simpleMessage("İnternet Bağlantısı Yok"),
        "noItemsToExport":
            MessageLookupByLibrary.simpleMessage("Bir öğe seçilmedi"),
        "noItemsToImport":
            MessageLookupByLibrary.simpleMessage("Bir öğe seçilmedi"),
        "noMatchingOrders":
            MessageLookupByLibrary.simpleMessage("Eşleşen sipariş bulunamadı"),
        "noOrder": m71,
        "noOrderAvailable": MessageLookupByLibrary.simpleMessage(
            "Emir oluşturmak için tıklayın"),
        "noOrders": MessageLookupByLibrary.simpleMessage(
            "Emir yok, lütfen ticarete gidin."),
        "noRewardYet": MessageLookupByLibrary.simpleMessage(
            "Alabileceğiniz bir ödül mevcut değil - 1 saat sonra yeniden deneyin."),
        "noRewards":
            MessageLookupByLibrary.simpleMessage("Alınabilecek bir ödül yok"),
        "noSuchCoin":
            MessageLookupByLibrary.simpleMessage("Böyle bir koin yok"),
        "noSwaps": MessageLookupByLibrary.simpleMessage("Geçmiş yok."),
        "noTxs": MessageLookupByLibrary.simpleMessage("İşlem Yok"),
        "nonNumericInput":
            MessageLookupByLibrary.simpleMessage("Girilen değer rakam olmalı"),
        "none": MessageLookupByLibrary.simpleMessage("Hiçbiri"),
        "notEnoughGas": m72,
        "notEnoughtBalanceForFee": MessageLookupByLibrary.simpleMessage(
            "Takas masrafını karşılayacak bakiye bulunmuyor - daha küçük tutar deneyin"),
        "noteOnOrder": MessageLookupByLibrary.simpleMessage(
            "Eşleşmiş bir emir tekrardan iptal edilemez."),
        "notePlaceholder": MessageLookupByLibrary.simpleMessage("Not Ekle"),
        "noteTitle": MessageLookupByLibrary.simpleMessage("Not"),
        "nothingFound":
            MessageLookupByLibrary.simpleMessage("Bir şey bulunamadı"),
        "notifSwapCompletedText": m73,
        "notifSwapCompletedTitle":
            MessageLookupByLibrary.simpleMessage("Takas tamamlandı"),
        "notifSwapFailedText": m74,
        "notifSwapFailedTitle":
            MessageLookupByLibrary.simpleMessage("Takas başarısız"),
        "notifSwapStartedText": m75,
        "notifSwapStartedTitle":
            MessageLookupByLibrary.simpleMessage("Yeni takas başladı"),
        "notifSwapStatusTitle":
            MessageLookupByLibrary.simpleMessage("Takas durumu değişti"),
        "notifSwapTimeoutText": m76,
        "notifSwapTimeoutTitle":
            MessageLookupByLibrary.simpleMessage("Takas zaman aşımına uğradı"),
        "notifTxText": m77,
        "notifTxTitle": MessageLookupByLibrary.simpleMessage("Gelen işlem"),
        "numberAssets": m78,
        "officialPressRelease":
            MessageLookupByLibrary.simpleMessage("Resmi basın açıklaması"),
        "okButton": MessageLookupByLibrary.simpleMessage("Tamam"),
        "oldLogsDelete": MessageLookupByLibrary.simpleMessage("Sil"),
        "oldLogsTitle": MessageLookupByLibrary.simpleMessage("Eski kayıtlar"),
        "oldLogsUsed":
            MessageLookupByLibrary.simpleMessage("Boşluk kullanıldı"),
        "openMessage": MessageLookupByLibrary.simpleMessage("Hata Mesajını Aç"),
        "orderBookLess": MessageLookupByLibrary.simpleMessage("Az"),
        "orderBookMore": MessageLookupByLibrary.simpleMessage("Daha"),
        "orderCancel": m79,
        "orderCreated":
            MessageLookupByLibrary.simpleMessage("Emir oluşturuldu"),
        "orderCreatedInfo":
            MessageLookupByLibrary.simpleMessage("Emir başarıyla oluşturuldu"),
        "orderDetailsAddress": MessageLookupByLibrary.simpleMessage("Adres"),
        "orderDetailsCancel": MessageLookupByLibrary.simpleMessage("İptal"),
        "orderDetailsExpedient": m80,
        "orderDetailsExpensive": m81,
        "orderDetailsFor": MessageLookupByLibrary.simpleMessage("için"),
        "orderDetailsIdentical":
            MessageLookupByLibrary.simpleMessage("CEX\'de"),
        "orderDetailsMin": MessageLookupByLibrary.simpleMessage("en az"),
        "orderDetailsPrice": MessageLookupByLibrary.simpleMessage("Fiyat"),
        "orderDetailsReceive": MessageLookupByLibrary.simpleMessage("Al"),
        "orderDetailsSelect": MessageLookupByLibrary.simpleMessage("Seç"),
        "orderDetailsSells": MessageLookupByLibrary.simpleMessage("Satışlar"),
        "orderDetailsSettings": MessageLookupByLibrary.simpleMessage(
            "Ayrıntıları tek dokunuşla açın ve Uzun dokunuşla sipariş et\'i seçin"),
        "orderDetailsSpend": MessageLookupByLibrary.simpleMessage("Harca"),
        "orderDetailsTitle": MessageLookupByLibrary.simpleMessage("Detaylar"),
        "orderFilled": m82,
        "orderMatched": MessageLookupByLibrary.simpleMessage("Emir eşleşti"),
        "orderMatching": MessageLookupByLibrary.simpleMessage("Emir eşleşiyor"),
        "orderTypePartial": MessageLookupByLibrary.simpleMessage("Emir"),
        "orderTypeUnknown":
            MessageLookupByLibrary.simpleMessage("Bilinmeyen Türde Emir"),
        "orders": MessageLookupByLibrary.simpleMessage("emirler"),
        "ordersActive": MessageLookupByLibrary.simpleMessage("Açık"),
        "ordersHistory": MessageLookupByLibrary.simpleMessage("Geçmiş"),
        "ordersTableAmount": m83,
        "ordersTablePrice": m84,
        "ordersTableTotal": m85,
        "overwrite": MessageLookupByLibrary.simpleMessage("Üstüne yaz"),
        "ownOrder":
            MessageLookupByLibrary.simpleMessage("Bu sizin kendi emriniz !"),
        "paidFromBalance":
            MessageLookupByLibrary.simpleMessage("Bakiyeden ödendi:"),
        "paidFromVolume":
            MessageLookupByLibrary.simpleMessage("Alınan miktardan ödendi:"),
        "paidWith": MessageLookupByLibrary.simpleMessage("Ödendi"),
        "passwordRequirement": MessageLookupByLibrary.simpleMessage(
            "Parolanız en az 12 karakterden oluşurken en az; bir büyük harf, bir küçük harf ve bir sembol içermelidir."),
        "pastTransactionsFromDate": MessageLookupByLibrary.simpleMessage(
            "Cüzdanınız, belirtilen tarihten sonra yaptığınız geçmiş işlemleri gösterecektir."),
        "paymentUriDetailsAccept": MessageLookupByLibrary.simpleMessage("Öde"),
        "paymentUriDetailsAcceptQuestion": MessageLookupByLibrary.simpleMessage(
            "Bu işlemi kabul ediyor musunuz ?"),
        "paymentUriDetailsAddressSpan":
            MessageLookupByLibrary.simpleMessage("Adrese"),
        "paymentUriDetailsAmountSpan":
            MessageLookupByLibrary.simpleMessage("Miktar:"),
        "paymentUriDetailsCoinSpan":
            MessageLookupByLibrary.simpleMessage("Koin:"),
        "paymentUriDetailsDeny": MessageLookupByLibrary.simpleMessage("İptal"),
        "paymentUriDetailsTitle":
            MessageLookupByLibrary.simpleMessage("Ödeme Talep Edildi"),
        "paymentUriInactiveCoin": m86,
        "placeOrder": MessageLookupByLibrary.simpleMessage("Emrinizi girin"),
        "pleaseAcceptAllCoinActivationRequests":
            MessageLookupByLibrary.simpleMessage(
                "Lütfen tüm özel jeton aktivasyon isteklerini kabul edin veya jetonların seçimini kaldırın."),
        "pleaseAddCoin":
            MessageLookupByLibrary.simpleMessage("Lütfen bir Koin Ekleyiniz"),
        "pleaseRestart": MessageLookupByLibrary.simpleMessage(
            "Yeniden denemek için lütfen uygulamayı yeniden başlatın ya da aşağıdaki düğmeye basınız."),
        "portfolio": MessageLookupByLibrary.simpleMessage("Portföy"),
        "poweredOnKmd": MessageLookupByLibrary.simpleMessage(
            "Gleec tarafından geliştirilmiştir"),
        "price": MessageLookupByLibrary.simpleMessage("fiyat"),
        "privateKey": MessageLookupByLibrary.simpleMessage("Gizli Kelime"),
        "privateKeys": MessageLookupByLibrary.simpleMessage("Gizli Kelimeler"),
        "protectionCtrlConfirmations":
            MessageLookupByLibrary.simpleMessage("Onaylar"),
        "protectionCtrlCustom": MessageLookupByLibrary.simpleMessage(
            "Özel koruma seçenekleri kullan."),
        "protectionCtrlOff": MessageLookupByLibrary.simpleMessage("Kapalı"),
        "protectionCtrlOn": MessageLookupByLibrary.simpleMessage("Açık"),
        "protectionCtrlWarning": MessageLookupByLibrary.simpleMessage(
            "Dikkat ! Bu takas dPoW koruması altında değildir."),
        "pubkey": MessageLookupByLibrary.simpleMessage("Açık Adres"),
        "qrCodeScanner":
            MessageLookupByLibrary.simpleMessage("QR Kod Tarayıcı"),
        "question_1": MessageLookupByLibrary.simpleMessage(
            "Gizli kelimelerimi kaydediyor musunuz ?"),
        "question_10": m87,
        "question_2": m88,
        "question_3": MessageLookupByLibrary.simpleMessage(
            "Takas işlemleri ne kadar sürmektedir ?"),
        "question_4": MessageLookupByLibrary.simpleMessage(
            "Takas işlemi boyunca çevrimiçi olmam mı gerekir ?"),
        "question_5": m89,
        "question_6": MessageLookupByLibrary.simpleMessage(
            "Kullanıcılara destek sunuyor musunuz ?"),
        "question_7": MessageLookupByLibrary.simpleMessage(
            "Uygulamanın kullanılamadığı ülkeler var mı ?"),
        "question_8": m90,
        "question_9": m91,
        "rebrandingAnnouncement": MessageLookupByLibrary.simpleMessage(
            "Bu yeni bir dönem! \'AtomicDEX\' olan ismimizi resmi olarak \'Gleec Wallet\' olarak değiştirdik."),
        "receive": MessageLookupByLibrary.simpleMessage("AL"),
        "receiveLower": MessageLookupByLibrary.simpleMessage("Al"),
        "recommendSeedMessage": MessageLookupByLibrary.simpleMessage(
            "Çevrimdışı bir şekilde saklamanızı öneririz."),
        "remove": MessageLookupByLibrary.simpleMessage("Devre dışı bırak"),
        "requestedTrade":
            MessageLookupByLibrary.simpleMessage("Talep Edilen Alım Satım"),
        "reset": MessageLookupByLibrary.simpleMessage("TEMİZLE"),
        "resetTitle":
            MessageLookupByLibrary.simpleMessage("Geri Yükleme Formu"),
        "restoreWallet": MessageLookupByLibrary.simpleMessage("GERİ YÜKLE"),
        "retryActivating": MessageLookupByLibrary.simpleMessage(
            "Tüm koinleri aktifleştirmeyi tekrar deniyor.."),
        "retryAll": MessageLookupByLibrary.simpleMessage(
            "Hepsini aktifleştirmeyi tekrar dene"),
        "rewardsButton": MessageLookupByLibrary.simpleMessage("Ödülünüzü alın"),
        "rewardsCancel": MessageLookupByLibrary.simpleMessage("Vazgeç"),
        "rewardsError": MessageLookupByLibrary.simpleMessage(
            "Bir hata oluştu. Lütfen daha sonra tekrar deneyiniz."),
        "rewardsInProgressLong":
            MessageLookupByLibrary.simpleMessage("İşlem sürmekte"),
        "rewardsInProgressShort":
            MessageLookupByLibrary.simpleMessage("işleniyor"),
        "rewardsLowAmountLong":
            MessageLookupByLibrary.simpleMessage("UTXO miktarı 10 KMD\'den az"),
        "rewardsLowAmountShort":
            MessageLookupByLibrary.simpleMessage("<10 KMD"),
        "rewardsOneHourLong":
            MessageLookupByLibrary.simpleMessage("Henüz 1 saat geçmedi"),
        "rewardsOneHourShort": MessageLookupByLibrary.simpleMessage("<1 saat"),
        "rewardsPopupOk": MessageLookupByLibrary.simpleMessage("Tamam"),
        "rewardsPopupTitle":
            MessageLookupByLibrary.simpleMessage("Ödül durumu:"),
        "rewardsReadMore": MessageLookupByLibrary.simpleMessage(
            "KMD aktif kullanıcı ödülleri hakkında daha fazla bilgi edinin"),
        "rewardsReceive": MessageLookupByLibrary.simpleMessage("Al"),
        "rewardsSuccess": m92,
        "rewardsTableFiat":
            MessageLookupByLibrary.simpleMessage("İtibari para"),
        "rewardsTableRewards":
            MessageLookupByLibrary.simpleMessage("KMD Ödülleri"),
        "rewardsTableStatus": MessageLookupByLibrary.simpleMessage("Durum"),
        "rewardsTableTime": MessageLookupByLibrary.simpleMessage("Kalan zaman"),
        "rewardsTableTitle":
            MessageLookupByLibrary.simpleMessage("Ödül bilgisi:"),
        "rewardsTableUXTO":
            MessageLookupByLibrary.simpleMessage("UTXO amt,\nKMD"),
        "rewardsTimeDays": m93,
        "rewardsTimeHours": m94,
        "rewardsTimeMin": m95,
        "rewardsTitle": MessageLookupByLibrary.simpleMessage("Ödül bilgisi"),
        "russianLanguage": MessageLookupByLibrary.simpleMessage("Rusça"),
        "saveMerged":
            MessageLookupByLibrary.simpleMessage("Birleştirilmiş kaydet"),
        "scrollToContinue": MessageLookupByLibrary.simpleMessage(
            "Devam etmek için aşağı kaydırın..."),
        "searchFilterCoin":
            MessageLookupByLibrary.simpleMessage("Bir koin ara"),
        "searchFilterSubtitleAVX":
            MessageLookupByLibrary.simpleMessage("Tüm AVAX tokenlerini seç"),
        "searchFilterSubtitleBEP":
            MessageLookupByLibrary.simpleMessage("Tüm BEP tokenlerini seç"),
        "searchFilterSubtitleCosmos":
            MessageLookupByLibrary.simpleMessage("Hepsini seç Cosmos Ağı"),
        "searchFilterSubtitleERC":
            MessageLookupByLibrary.simpleMessage("Tüm ERC tokenlerini seç"),
        "searchFilterSubtitleETC":
            MessageLookupByLibrary.simpleMessage("Tüm ETC tokenlerini seç"),
        "searchFilterSubtitleFTM":
            MessageLookupByLibrary.simpleMessage("Tüm Fantom tokenlerini seç"),
        "searchFilterSubtitleHCO": MessageLookupByLibrary.simpleMessage(
            "Tüm HecoChain tokenlerini seç"),
        "searchFilterSubtitleHRC":
            MessageLookupByLibrary.simpleMessage("Tüm Harmony tokenlerini seç"),
        "searchFilterSubtitleIris":
            MessageLookupByLibrary.simpleMessage("Tüm İris Ağını seç"),
        "searchFilterSubtitleKRC":
            MessageLookupByLibrary.simpleMessage("Tüm Kucoin tokenlerini seç"),
        "searchFilterSubtitleMVR": MessageLookupByLibrary.simpleMessage(
            "Tüm Moonriver tokenlerini seç"),
        "searchFilterSubtitlePLG":
            MessageLookupByLibrary.simpleMessage("Tüm Polygon tokenlerini seç"),
        "searchFilterSubtitleQRC":
            MessageLookupByLibrary.simpleMessage("Tüm QRC tokenlerini seç"),
        "searchFilterSubtitleSBCH": MessageLookupByLibrary.simpleMessage(
            "Tüm SmartBCH tokenlerini seç"),
        "searchFilterSubtitleSLP": MessageLookupByLibrary.simpleMessage(
            "Tüm SLP belirteçlerini seçin"),
        "searchFilterSubtitleSmartChain": MessageLookupByLibrary.simpleMessage(
            "Tüm SmartChain koinlerini seç"),
        "searchFilterSubtitleTestCoins":
            MessageLookupByLibrary.simpleMessage("Tüm test koinlerini seç"),
        "searchFilterSubtitleUBQ":
            MessageLookupByLibrary.simpleMessage("Tüm Ubiq koinlerini seç"),
        "searchFilterSubtitleZHTLC":
            MessageLookupByLibrary.simpleMessage("Tüm ZHTLC paralarını seç"),
        "searchFilterSubtitleutxo":
            MessageLookupByLibrary.simpleMessage("Tüm UTXO koinlerini seç"),
        "searchForTicker":
            MessageLookupByLibrary.simpleMessage("Kayan Yazı Ara"),
        "seconds": MessageLookupByLibrary.simpleMessage("s"),
        "security": MessageLookupByLibrary.simpleMessage("Güvenlik"),
        "seeOrders": m96,
        "seeTxHistory":
            MessageLookupByLibrary.simpleMessage("İşlem Geçmişini Görüntüle"),
        "seedPhrase": MessageLookupByLibrary.simpleMessage("Gizli Kelimeler"),
        "seedPhraseTitle":
            MessageLookupByLibrary.simpleMessage("Yeni Gizli Kelimeleriniz"),
        "selectCoin": MessageLookupByLibrary.simpleMessage("Koin seçin"),
        "selectCoinInfo": MessageLookupByLibrary.simpleMessage(
            "Portföyünüze eklemek istediğiniz koinleri seçin."),
        "selectCoinTitle":
            MessageLookupByLibrary.simpleMessage("Koin etkinleştir:"),
        "selectCoinToBuy": MessageLookupByLibrary.simpleMessage(
            "ALMAK istediğiniz koini seçin"),
        "selectCoinToSell": MessageLookupByLibrary.simpleMessage(
            "SATMAK istediğiniz koini seçin"),
        "selectDate": MessageLookupByLibrary.simpleMessage("Bir Tarih Seçin"),
        "selectFileImport": MessageLookupByLibrary.simpleMessage("Dosya seç"),
        "selectLanguage": MessageLookupByLibrary.simpleMessage("Dili Seç"),
        "selectPaymentMethod":
            MessageLookupByLibrary.simpleMessage("Ödeme Yönteminizi Seçin"),
        "selectedOrder": MessageLookupByLibrary.simpleMessage("Seçili emir:"),
        "sell": MessageLookupByLibrary.simpleMessage("Sat"),
        "sellTestCoinWarning": MessageLookupByLibrary.simpleMessage(
            "Dikkat ! Test koinlerini herhangi bir değer olmadan satmak üzeresiniz"),
        "send": MessageLookupByLibrary.simpleMessage("GÖNDER"),
        "setUpPassword": MessageLookupByLibrary.simpleMessage("PAROLA BELİRLE"),
        "settingDialogSpan1": MessageLookupByLibrary.simpleMessage(
            "Silmek istediğine emin misin"),
        "settingDialogSpan2": MessageLookupByLibrary.simpleMessage("cüzdan?"),
        "settingDialogSpan3":
            MessageLookupByLibrary.simpleMessage("Eğer eminseniz"),
        "settingDialogSpan4": MessageLookupByLibrary.simpleMessage(
            "daha sonra cüzdanınızı kurtarabilmeniz için"),
        "settingDialogSpan5": MessageLookupByLibrary.simpleMessage(
            "gizli kelimelerinizi kaydedin."),
        "settingLanguageTitle": MessageLookupByLibrary.simpleMessage("Diller"),
        "settings": MessageLookupByLibrary.simpleMessage("Ayarlar"),
        "share": MessageLookupByLibrary.simpleMessage("Paylaş"),
        "shareAddress": m97,
        "shouldScanPastTransaction": m98,
        "showAddress": MessageLookupByLibrary.simpleMessage("Adresi Göster"),
        "showDetails": MessageLookupByLibrary.simpleMessage("Detayları Göster"),
        "showMyOrders":
            MessageLookupByLibrary.simpleMessage("EMİRLERİMİ GÖSTER"),
        "showingOrders": m99,
        "signInWithPassword":
            MessageLookupByLibrary.simpleMessage("Parola ile giriş yap"),
        "signInWithSeedPhrase": MessageLookupByLibrary.simpleMessage(
            "Parolayı mı unuttunuz ? Gizli kelimelerinizle giriş yapın."),
        "simple": MessageLookupByLibrary.simpleMessage("Basit"),
        "simpleTradeActivate":
            MessageLookupByLibrary.simpleMessage("Aktifleştir"),
        "simpleTradeBuyHint": m100,
        "simpleTradeBuyTitle": MessageLookupByLibrary.simpleMessage("Satın al"),
        "simpleTradeClose": MessageLookupByLibrary.simpleMessage("Kapat"),
        "simpleTradeMaxActiveCoins": m101,
        "simpleTradeNotActive": m102,
        "simpleTradeRecieve": MessageLookupByLibrary.simpleMessage("Al"),
        "simpleTradeSellHint": m103,
        "simpleTradeSellTitle": MessageLookupByLibrary.simpleMessage("Sat"),
        "simpleTradeSend": MessageLookupByLibrary.simpleMessage("Gönder"),
        "simpleTradeShowLess":
            MessageLookupByLibrary.simpleMessage("Daha az göster"),
        "simpleTradeShowMore":
            MessageLookupByLibrary.simpleMessage("Daha fazla göster"),
        "simpleTradeUnableActivate": m104,
        "skip": MessageLookupByLibrary.simpleMessage("Geç"),
        "snackbarDismiss": MessageLookupByLibrary.simpleMessage("Kapat"),
        "soundCantPlayThatMsg": m105,
        "soundPlayedWhen": m106,
        "soundSettingsLink": MessageLookupByLibrary.simpleMessage("Ses"),
        "soundSettingsTitle":
            MessageLookupByLibrary.simpleMessage("Ses seçenekleri"),
        "soundsDialogTitle": MessageLookupByLibrary.simpleMessage("Sesler"),
        "soundsDoNotShowAgain": MessageLookupByLibrary.simpleMessage(
            "Anladım, bunu tekrar gösterme"),
        "soundsExplanation": MessageLookupByLibrary.simpleMessage(
            "Takas boyunca ve açık bir yapıcı emriniz varken bazı sesli bilgilendirmeler duyacaksınız.\nPürüzsüz bir takas için her iki tarafın da işlem boyunca çevrimiçi olması gerekmektedir ve sesli bildirimler buna yardımcı olmaktadır."),
        "soundsNote": MessageLookupByLibrary.simpleMessage(
            "Kendi özelleştirilmiş sesli bildirimlerinizi uygulamanın ayarlar bölümünden etkinleştirebileceğinizi unutmayın."),
        "spanishLanguage": MessageLookupByLibrary.simpleMessage("İspanyolca"),
        "startDate": MessageLookupByLibrary.simpleMessage("Başlangıç tarihi"),
        "startSwap": MessageLookupByLibrary.simpleMessage("Takası Başlat"),
        "step": MessageLookupByLibrary.simpleMessage("Adım"),
        "success": MessageLookupByLibrary.simpleMessage("Başarılı !"),
        "support": MessageLookupByLibrary.simpleMessage("Destek"),
        "supportLinksDesc": m107,
        "swap": MessageLookupByLibrary.simpleMessage("takas"),
        "swapCurrent": MessageLookupByLibrary.simpleMessage("Mevcut"),
        "swapDetailTitle":
            MessageLookupByLibrary.simpleMessage("TAKAS DETAYLARINI ONAYLA"),
        "swapEstimated": MessageLookupByLibrary.simpleMessage("Yaklaşık"),
        "swapFailed": MessageLookupByLibrary.simpleMessage("Takas başarısız"),
        "swapGasActivate": m108,
        "swapGasAmount": m109,
        "swapGasAmountRequired": m110,
        "swapOngoing":
            MessageLookupByLibrary.simpleMessage("Takas devam ediyor"),
        "swapProgress": MessageLookupByLibrary.simpleMessage("İşlem detayları"),
        "swapStarted": MessageLookupByLibrary.simpleMessage("Takas başladı"),
        "swapSucceful": MessageLookupByLibrary.simpleMessage("Başarılı Takas"),
        "swapTotal": MessageLookupByLibrary.simpleMessage("Toplam"),
        "swapUUID": MessageLookupByLibrary.simpleMessage("Takas UUID"),
        "switchTheme": MessageLookupByLibrary.simpleMessage("Temayı Değiştir"),
        "syncFromDate": MessageLookupByLibrary.simpleMessage(
            "Belirtilen tarihten itibaren senkronizasyon"),
        "syncFromSaplingActivation": MessageLookupByLibrary.simpleMessage(
            "Fidan aktivasyonundan senkronizasyon"),
        "syncNewTransactions": MessageLookupByLibrary.simpleMessage(
            "Yeni işlemleri senkronize et"),
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
        "takerOrder": MessageLookupByLibrary.simpleMessage("Alıcı Emri"),
        "timeOut": MessageLookupByLibrary.simpleMessage("Zaman Aşımı"),
        "titleCreatePassword":
            MessageLookupByLibrary.simpleMessage("PAROLA OLUŞTUR"),
        "titleCurrentAsk": MessageLookupByLibrary.simpleMessage("Emir seçildi"),
        "to": MessageLookupByLibrary.simpleMessage("Alıcı"),
        "toAddress": MessageLookupByLibrary.simpleMessage("Adrese:"),
        "tooManyAssetsEnabledSpan1":
            MessageLookupByLibrary.simpleMessage("Var"),
        "tooManyAssetsEnabledSpan2": MessageLookupByLibrary.simpleMessage(
            "varlıklar etkinleştirildi. Atkif edilebilecek koin limiti:"),
        "tooManyAssetsEnabledSpan3": MessageLookupByLibrary.simpleMessage(
            "Yenilerini eklemeden önce lütfen eskilerden birkaçını kaldırın"),
        "tooManyAssetsEnabledTitle": MessageLookupByLibrary.simpleMessage(
            "Çok fazla koin aktifleştirildi"),
        "totalFees": MessageLookupByLibrary.simpleMessage("Toplam Masraflar"),
        "trade": MessageLookupByLibrary.simpleMessage("ALIM SATIM"),
        "tradeCompleted":
            MessageLookupByLibrary.simpleMessage("TAKAS TAMAMLANDI !"),
        "tradeDetail":
            MessageLookupByLibrary.simpleMessage("ALIM SATIM DETAYLARI"),
        "tradePreimageError": MessageLookupByLibrary.simpleMessage(
            "Alım satım işlem giderleri hesaplanamadı"),
        "tradingFee":
            MessageLookupByLibrary.simpleMessage("Alım satım işlem gideri:"),
        "tradingMode": MessageLookupByLibrary.simpleMessage("Alım Satım Modu:"),
        "transactionAddress":
            MessageLookupByLibrary.simpleMessage("İşlem Adresi"),
        "transactionHidden":
            MessageLookupByLibrary.simpleMessage("İşlem Gizli"),
        "transactionHiddenPhishing": MessageLookupByLibrary.simpleMessage(
            "Bu işlem olası bir kimlik avı girişimi nedeniyle gizlendi."),
        "tryRestarting": MessageLookupByLibrary.simpleMessage(
            "Bazı yeni koinler etkileştirilemedi ise uygulamayı tekrar başlatmayı deneyiniz."),
        "turkishLanguage": MessageLookupByLibrary.simpleMessage("Türkçe"),
        "txBlock": MessageLookupByLibrary.simpleMessage("Blok"),
        "txConfirmations": MessageLookupByLibrary.simpleMessage("Onaylar"),
        "txConfirmed": MessageLookupByLibrary.simpleMessage("ONAYLANDI"),
        "txFee": MessageLookupByLibrary.simpleMessage("Ücret"),
        "txFeeTitle": MessageLookupByLibrary.simpleMessage("İşlem ücreti"),
        "txHash": MessageLookupByLibrary.simpleMessage("İşlem numarası"),
        "txLimitExceeded": MessageLookupByLibrary.simpleMessage(
            "Çok fazla istek.\nİşlem geçmişi istekleri sınırı aşıldı.\nLütfen daha sonra tekrar deneyiniz."),
        "txNotConfirmed": MessageLookupByLibrary.simpleMessage("onaylanmamış"),
        "txleft": m112,
        "ukrainianLanguage": MessageLookupByLibrary.simpleMessage("Ukrayna"),
        "unlock": MessageLookupByLibrary.simpleMessage("kilidi aç"),
        "unlockFunds":
            MessageLookupByLibrary.simpleMessage("Fonların Kilidini Açın"),
        "unlockSuccess": m113,
        "unspendable": MessageLookupByLibrary.simpleMessage("harcanamaz"),
        "updatesAvailable":
            MessageLookupByLibrary.simpleMessage("Yeni sürüm mevcut"),
        "updatesChecking": MessageLookupByLibrary.simpleMessage(
            "Güncellemeler kontrol ediliyor.."),
        "updatesCurrentVersion": m114,
        "updatesNotifAvailable": MessageLookupByLibrary.simpleMessage(
            "Yeni sürüm mevcut. Lütfen güncelleyiniz."),
        "updatesNotifAvailableVersion": m115,
        "updatesNotifTitle":
            MessageLookupByLibrary.simpleMessage("Güncelleme mevcut"),
        "updatesSkip": MessageLookupByLibrary.simpleMessage("Şimdilik atla"),
        "updatesTitle": m116,
        "updatesUpToDate":
            MessageLookupByLibrary.simpleMessage("Son sürüm yüklü"),
        "updatesUpdate": MessageLookupByLibrary.simpleMessage("Güncelle"),
        "uriInsufficientBalanceSpan1":
            MessageLookupByLibrary.simpleMessage("Taranan ödeme talebi için"),
        "uriInsufficientBalanceSpan2":
            MessageLookupByLibrary.simpleMessage("yeterli bakiye yok."),
        "uriInsufficientBalanceTitle":
            MessageLookupByLibrary.simpleMessage("Yetersiz bakiye"),
        "value": MessageLookupByLibrary.simpleMessage("Değer:"),
        "version": MessageLookupByLibrary.simpleMessage("sürüm"),
        "viewInExplorerButton":
            MessageLookupByLibrary.simpleMessage("Tarayıcı"),
        "viewSeedAndKeys":
            MessageLookupByLibrary.simpleMessage("Gizli ve Özel Kelimeler"),
        "volumes": MessageLookupByLibrary.simpleMessage("Hacim"),
        "walletInUse": MessageLookupByLibrary.simpleMessage(
            "Bu cüzdan adı zaten kullanımda"),
        "walletMaxChar": MessageLookupByLibrary.simpleMessage(
            "Cüzdan adı en fazla 40 karakter içerebilir"),
        "walletOnly": MessageLookupByLibrary.simpleMessage("Sadece cüzdan"),
        "warning": MessageLookupByLibrary.simpleMessage("Dikkat !"),
        "warningOkBtn": MessageLookupByLibrary.simpleMessage("Tamam"),
        "warningShareLogs": MessageLookupByLibrary.simpleMessage(
            "Dikkat ! Bu kayıt defteri özel durumlarda, başarısız takaslardan kalan koinlerin harcanmasına sebep olabilecek hassas bilgiler içerebilir."),
        "weFailedTo": m117,
        "weFailedToActivate": m118,
        "welcomeInfo": m119,
        "welcomeLetSetUp":
            MessageLookupByLibrary.simpleMessage("HADİ AYARLAYALIM !"),
        "welcomeTitle": MessageLookupByLibrary.simpleMessage("HOŞ GELDİNİZ"),
        "welcomeWallet": MessageLookupByLibrary.simpleMessage("cüzdan"),
        "willBeRedirected": MessageLookupByLibrary.simpleMessage(
            "Tamamlandığında portföy ekranına yönlendirileceksiniz."),
        "willTakeTime": MessageLookupByLibrary.simpleMessage(
            "Bu biraz zaman alacak ve uygulamanın ön planda tutulması gerekiyor.\nEtkinleştirme devam ederken uygulamayı sonlandırmak sorunlara yol açabilir."),
        "withdraw": MessageLookupByLibrary.simpleMessage("Çek"),
        "withdrawCameraAccessText": m120,
        "withdrawCameraAccessTitle":
            MessageLookupByLibrary.simpleMessage("Erişim Engellendi"),
        "withdrawConfirm":
            MessageLookupByLibrary.simpleMessage("Çekimi Onayla"),
        "withdrawConfirmError": MessageLookupByLibrary.simpleMessage(
            "Bir hata oluştu. Lütfen daha sonra tekrar deneyiniz."),
        "withdrawValue": m121,
        "wrongCoinSpan1":
            MessageLookupByLibrary.simpleMessage("QR kodlu bir ödemeyi"),
        "wrongCoinSpan2":
            MessageLookupByLibrary.simpleMessage("taramaya çalışıyorsunuz"),
        "wrongCoinSpan3":
            MessageLookupByLibrary.simpleMessage("fakat çekim ekranındasınız"),
        "wrongCoinTitle": MessageLookupByLibrary.simpleMessage("Yanlış koin"),
        "wrongPassword": MessageLookupByLibrary.simpleMessage(
            "Parola eşleşmiyor. Lütfen tekrar deneyin."),
        "yes": MessageLookupByLibrary.simpleMessage("Evet"),
        "you have a fresh order that is trying to match with an existing order":
            MessageLookupByLibrary.simpleMessage(
                "mevcut bir siparişle eşleşmeye çalışan yeni bir siparişiniz var"),
        "you have an active swap in progress":
            MessageLookupByLibrary.simpleMessage(
                "devam eden aktif bir takasınız var"),
        "you have an order that new orders can match with":
            MessageLookupByLibrary.simpleMessage(
                "yeni siparişlerin eşleşebileceği bir siparişiniz var"),
        "youAreSending":
            MessageLookupByLibrary.simpleMessage("Gönderiyorsunuz:"),
        "youWillReceiveClaim": m122,
        "youWillReceived": MessageLookupByLibrary.simpleMessage("Alacağınız:"),
        "yourWallet": MessageLookupByLibrary.simpleMessage("Cüzdanınız")
      };
}
