// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static m0(protocolName) => "Активировать монеты ${protocolName}?";

  static m1(coinName) => "Активация ${coinName}";

  static m2(coinName) => "${coinName} Активация";

  static m3(protocolName) => "${protocolName} активируется";

  static m4(name) => "${name} активирован успешно!";

  static m5(title) => "Отображаются только контакты с ${title} адресами";

  static m6(abbr) =>
      "Вы не можете отправить средства на адрес ${abbr}, потому что ${abbr} не активирован. Пожалуйста, перейдите в портфолио.";

  static m7(appName) =>
      "Нет! Мы никогда не храним конфиденциальные данные, включая ваши приватные ключи, seed ключи или PIN-код. Эти данные хранятся только на устройстве пользователя и никуда не передаются. Вы полностью контролируете свои активы.";

  static m8(appName) =>
      "Приложение ${appName} доступно для мобильных устройств на Android и iPhone, а также для компьютеров в <a href=\"https://gleec.com/\">операционных системах Windows, Mac и Linux</a>.";

  static m9(appName) =>
      "Другие DEX обычно позволяют торговать только активами, принадлежащими к одному блокчейну, используют прокси-токены и разрешают размещать только один ордер, использующий ваш баланс.\n\n${appName} позволяет вам торговать между разными блокчейнами без использования прокси-токенов. Вы также можете разместить несколько заказов, используя одни и те же средства. Например, вы можете выставить ордера на продажу 0,1 BTC за KMD, QTUM и VRSC - первый исполненный ордер автоматически отменит все остальные ордера.";

  static m10(appName) =>
      "Есть несколько факторов, определяющих время обработки каждого свопа. Время блокировки торгуемых активов зависит от каждой сети (биткоин блокчейн обычно является самым медленным). Кроме того, пользователь может редактировать параметры безопасности. Например, в ${appName} можно установить количество подтверждений, после которых KMD транзакция считается успешной, равным 3, что сокращает время обмена по сравнению с транзакциями, ожидающими <a href=\"https://gleec.com/\">нотариального заверения</a>.";

  static m11(appName) =>
      "При торговле на ${appName} необходимо учитывать две категории комиссий.\n\n1. ${appName} взимает приблизительно 0,13% (1/777 объема торгов, но не ниже 0,0001) в качестве комиссии за торговлю для тейкер ордеров, а для ордеров-мейкеров комиссия равна нулю.\n\n2. Как мейкеры, так и тейкеры должны платят обычные комиссии за транзакции в используемых блокчейнах при совершении атомарного свопа .\n\nКомиссиии сети могут сильно различаться в зависимости от выбранной вами торговой пары.";

  static m12(name, link, appName, appCompanyShort) =>
      "Да! ${appName} предлагает поддержку через <a href=\"${link}\"> ${name} сервер ${appCompanyShort} </a>. Команда и сообщество всегда рады помочь!";

  static m13(appName) =>
      "Нет! ${appName} полностью децентрализована. Ограничить доступ пользователей третьими лицами невозможно.";

  static m14(appName, appCompanyShort) =>
      "${appName} разработан командой ${appCompanyShort}. ${appCompanyShort} - один из наиболее авторитетных блокчейн-проектов, работающих над инновационными решениями, такими как атомарные свопы, delayed Proof of Work и совместимая многоцепочечная архитектура.";

  static m15(appName) =>
      "Абсолютно! Вы можете прочитать нашу <a href=\"https://gleec.com/\">документацию для разработчиков</a> для получения более подробной информации или связаться с нами по вопросам партнерства. Есть конкретный технический вопрос? Сообщество разработчиков ${appName} всегда готово помочь!";

  static m16(coinName1, coinName2) => "на основе ${coinName1}/${coinName2}";

  static m17(batteryLevelCritical) =>
      "Критический заряд батареи (${batteryLevelCritical}%) для безопасного выполнения свопа. Пожалуйста поставьте его на зарядку и повторите попытку.";

  static m18(batteryLevelLow) =>
      "Заряд батареи ниже ${batteryLevelLow}%. Пожалуйста подумайте о зарядке телефона.";

  static m19(seconde) =>
      "Поиск сделки в процессе, пожалуйста , подождите ${seconde} секунд!";

  static m20(index) => "Введите ${index} слово";

  static m21(index) => "Какое ${index} слово в вашем seed-ключе?";

  static m22(coin) => "Активация ${coin} отменена";

  static m23(coin) => "Успешно активирована ${coin}";

  static m24(protocolName) => "Монеты ${protocolName} активированы";

  static m25(protocolName) => "Монеты ${protocolName} успешно активированы";

  static m26(protocolName) => "Монеты ${protocolName} не активированы";

  static m27(name) => "Вы уверены, что хотите удалить ${name}?";

  static m28(iUnderstand) =>
      "Пользовательские исходные фразы могут быть менее безопасными и их легче взломать, чем сгенерированные исходные фразы или закрытый ключ (WIF), совместимые с BIP39. Чтобы подтвердить, что вы понимаете риск и знаете, что делаете, введите \"${iUnderstand}\" в поле ниже.";

  static m29(coinName) => "получить комиссию за транзакцию ${coinName}";

  static m30(coinName) => "отправить комиссию за транзакцию ${coinName}";

  static m31(abbr) => "Введите ${abbr} адрес";

  static m33(gas) => "Не достаточно газа - используйте минимум ${gas} Gwei";

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

  static m48(coinAbbr) => "Не удалось отменить активацию ${coinAbbr}.";

  static m49(coin) => "Отправка запроса на кран ${coin}";

  static m50(appCompanyShort) => "Новости Комодо";

  static m51(value) => "Комиссия должна быть не более ${value}";

  static m52(coin) => "${coin} комиссия";

  static m53(coin) => "Пожалуйста активируйте ${coin}";

  static m54(value) => "Значение Gwei должно быть до ${value}.";

  static m55(coinName) =>
      "Настройки защиты входящих txs-транзакций ${coinName}";

  static m56(abbr) =>
      "${abbr} недостаточно баланса чтобы оплатить торговую комиссию";

  static m57(coin) => "Неверный адрес ${coin}";

  static m58(coinAbbr) => "${coinAbbr} недоступен :(";

  static m59(coinName) =>
      "❗Осторожно! Объем торгов на рынке ${coinName} за 24 часа составляет менее 10 000 долларов!";

  static m60(value) => "Лимит должен быть до ${value}";

  static m61(coinName, number) =>
      "Минимальная сумма продажи составляет ${number} ${coinName}.";

  static m62(coinName, number) =>
      "Минимальная сумма покупки: ${number} ${coinName}";

  static m63(buyCoin, buyAmount, sellCoin, sellAmount) =>
      "Минимальная сумма ордера ${buyAmount} ${buyCoin}\n(${sellAmount} ${sellCoin})";

  static m64(coinName, number) =>
      "Минимальная сумма на продажу ${number} ${coinName}";

  static m65(minValue, coin) => "Должно быть больше чем ${minValue} ${coin}";

  static m66(appName) =>
      "Обратите внимание, что теперь вы используете сотовые данные, а участие в P2P-сети ${appName} потребляет интернет-трафик. Лучше использовать сеть Wi-Fi, если ваш тарифный план сотовой связи является дорогостоящим.";

  static m67(coin) => "Активируйте ${coin} и пополните баланс";

  static m68(number) => "Создать ${number} ордер(ов):";

  static m69(coin) => "${coin} баланс очень низкий";

  static m70(coin, fee) =>
      "Недостаточно ${coin} чтобы оплатить налог. МИН баланс ${fee} ${coin}";

  static m71(coinName) => "Пожалуйста, введите сумму ${coinName}.";

  static m72(coin) => "Не достаточно ${coin} для транзакции!";

  static m73(sell, buy) => "Своп ${sell}/${buy} успешно завершен";

  static m74(sell, buy) => "Своп ${sell}/${buy} не прошел";

  static m75(sell, buy) => "Своп ${sell}/${buy} начат";

  static m76(sell, buy) => "Превышен тайм-аут свопа ${sell}/${buy}";

  static m77(coin) => "Вы получили ${coin} транзакцию";

  static m78(assets) => "${assets} Активов";

  static m79(coin) => "Все ${coin} ордеры будут отменены.";

  static m80(delta) => "На -${delta}% ниже цен CEX";

  static m81(delta) => "На +${delta}% выше цен CEX";

  static m82(fill) => "${fill}% заполнено";

  static m83(coin) => "Сумма (${coin})";

  static m84(coin) => "Цена (${coin})";

  static m85(coin) => "Всего (${coin})";

  static m86(abbr) =>
      "${abbr} не активен. Пожалуйста активируйте и попробуйте снова.";

  static m87(appName) => "На каких устройствах я могу использовать ${appName}?";

  static m88(appName) =>
      "Чем торговля на ${appName} отличается от торговли на других DEX?";

  static m89(appName) => "Как рассчитываются комиссии на ${appName}?";

  static m90(appName) => "Кто стоит за ${appName}?";

  static m91(appName) =>
      "Можно ли разработать собственную white-label биржу на технологии ${appName}?";

  static m92(amount) => "Получено ${amount} KMD.";

  static m93(dd) => "${dd} дней}";

  static m94(hh, minutes) => "${hh}ч ${minutes}мин";

  static m95(mm) => "мин ${mm}";

  static m96(amount) => "Нажмите, чтобы увидеть ${amount} ордеров";

  static m97(coinName, address) => "Мой ${coinName} адрес:\n${address}";

  static m98(coin) => "Сканировать прошлые транзакции с ${coin}?";

  static m99(count, maxCount) => "Показано ${count} из ${maxCount} заказов.";

  static m100(coin) => "Пожалуйста введите сумму ${coin} для покупки";

  static m101(maxCoins) =>
      "Максимальное количество активных монет: ${maxCoins}. Пожалуйста деактивируйте некоторые из них.";

  static m102(coin) => "${coin} не активна";

  static m103(coin) => "Пожалуйста введите сумму ${coin} для продажи";

  static m104(coin) => "Не удалось активировать ${coin}";

  static m105(description) =>
      "Выберите файл в формате mp3 или wav. Воспроизводится, когда ${description}.";

  static m106(description) => "Воспроизводится, когда ${description}";

  static m107(appName) =>
      "Если у вас есть какие-либо вопросы или вы считаете, что обнаружили техническую проблему с приложением ${appName}, вы можете сообщить об этом и получить поддержку от нашей команды.";

  static m108(coin) =>
      "Пожалуйста сначала активируйте ${coin} и пополните баланс";

  static m109(coin) =>
      "Баланс ${coin} недостаточен для оплаты комиссии за транзакцию.";

  static m110(coin, amount) =>
      "Баланс ${coin} недостаточен для оплаты комиссии за транзакцию. ${coin} ${amount} требуется.";

  static m111(name) => "Какие транзакции ${name} вы хотите синхронизировать?";

  static m112(left) => "Осталось транзакций: ${left}";

  static m113(amnt, hash) =>
      "Успешно разблокировано ${amnt} средств - TX: ${hash}";

  static m114(version) => "Установлена версия ${version}";

  static m115(version) => "Доступна версия ${version}. Пожалуйста, обновитесь.";

  static m116(appName) => "Обновление ${appName}";

  static m117(coinAbbr) => "Ошибка активации ${coinAbbr}";

  static m118(coinAbbr) =>
      "Ошибка активации ${coinAbbr}\nПожалуйста перезапустите приложение и попробуйте снова";

  static m119(appName) =>
      "${appName} mobile - это мульти-монетный кошелек с функциональностью DEX третьего поколения и многим другим.";

  static m120(appName) =>
      "Ранее вы запретили ${appName} доступ к камере.\nВручную измените разрешения для камеры в настройках телефона, чтобы продолжить сканирование QR-кода.";

  static m121(amount, coinName) => "ВЫВЕСТИ ${amount} ${coinName}";

  static m122(amount, coin) => "Вы получите ${amount} ${coin}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "Active": MessageLookupByLibrary.simpleMessage("Активные"),
        "Applause": MessageLookupByLibrary.simpleMessage("Аплодисменты"),
        "Can\'t play that":
            MessageLookupByLibrary.simpleMessage("Невозможно воспроизвести"),
        "Failed": MessageLookupByLibrary.simpleMessage("Неудавшиеся \t"),
        "Maker": MessageLookupByLibrary.simpleMessage("Мейкер"),
        "Optional": MessageLookupByLibrary.simpleMessage("Необязательный"),
        "Play at full volume": MessageLookupByLibrary.simpleMessage(
            "Воспроизводить на полную громкость"),
        "Sound": MessageLookupByLibrary.simpleMessage("Звук"),
        "Taker": MessageLookupByLibrary.simpleMessage("Тейкер"),
        "a swap fails":
            MessageLookupByLibrary.simpleMessage("своп не был завершен"),
        "a swap runs to completion":
            MessageLookupByLibrary.simpleMessage("своп завершается"),
        "accepteula": MessageLookupByLibrary.simpleMessage("Принять EULA"),
        "accepttac":
            MessageLookupByLibrary.simpleMessage("Принять ПРАВИЛА и УСЛОВИЯ"),
        "activateAccessBiometric": MessageLookupByLibrary.simpleMessage(
            "Активировать биометрическую защиту"),
        "activateAccessPin":
            MessageLookupByLibrary.simpleMessage("Активировать защиту PIN"),
        "activateCoins": m0,
        "activating": m1,
        "activation": m2,
        "activationCancelled":
            MessageLookupByLibrary.simpleMessage("Активация монеты отменена"),
        "activationInProgress": m3,
        "addCoin": MessageLookupByLibrary.simpleMessage("Активировать монету"),
        "addingCoinSuccess": m4,
        "addressAdd": MessageLookupByLibrary.simpleMessage("Добавить адрес"),
        "addressBook": MessageLookupByLibrary.simpleMessage("Адресная книга"),
        "addressBookEmpty":
            MessageLookupByLibrary.simpleMessage("Адресная книга пуста"),
        "addressBookFilter": m5,
        "addressBookTitle":
            MessageLookupByLibrary.simpleMessage("Адресная книга"),
        "addressCoinInactive": m6,
        "addressNotFound": MessageLookupByLibrary.simpleMessage("Не найдено"),
        "addressSelectCoin":
            MessageLookupByLibrary.simpleMessage("Выбрать валюту"),
        "addressSend": MessageLookupByLibrary.simpleMessage("Адрес получателя"),
        "advanced": MessageLookupByLibrary.simpleMessage("Расширенные"),
        "all": MessageLookupByLibrary.simpleMessage("Все"),
        "allPastTransactions": MessageLookupByLibrary.simpleMessage(
            "Ваш кошелек покажет все прошлые транзакции. Это потребует значительного объема памяти и времени, поскольку все блоки будут загружены и отсканированы."),
        "allowCustomSeed": MessageLookupByLibrary.simpleMessage(
            "Разрешить произвольный seed-ключ"),
        "alreadyExists": MessageLookupByLibrary.simpleMessage("Уже существует"),
        "amount": MessageLookupByLibrary.simpleMessage("Количество"),
        "amountToSell":
            MessageLookupByLibrary.simpleMessage("Сумма для продажи"),
        "answer_1": m7,
        "answer_10": m8,
        "answer_2": m9,
        "answer_3": m10,
        "answer_4": MessageLookupByLibrary.simpleMessage(
            "Да. Приложение должно оставаться подключенным к Интернету для успешного завершения каждого атомарного свопа (очень короткие перерывы в подключении обычно допустимы). В противном случае существует риск отмены сделки, если вы являетесь мейкером, и риск потери средств, если вы тейкер. Протокол атомарного свопа требует, чтобы оба участника оставались в сети и контролировали задействованные блокчейны, чтобы процесс оставался атомарным."),
        "answer_5": m11,
        "answer_6": m12,
        "answer_7": m13,
        "answer_8": m14,
        "answer_9": m15,
        "areYouSure": MessageLookupByLibrary.simpleMessage("ВЫ УВЕРЕНЫ?"),
        "authenticate": MessageLookupByLibrary.simpleMessage("аутентификация"),
        "automaticRedirected": MessageLookupByLibrary.simpleMessage(
            "Вы будете автоматически перенаправлены на страницу портфолио после завершения процесса повторной активации."),
        "availableVolume": MessageLookupByLibrary.simpleMessage("макс объем"),
        "back": MessageLookupByLibrary.simpleMessage("назад"),
        "backupTitle": MessageLookupByLibrary.simpleMessage("Бэкап"),
        "basedOnCoinRatio": m16,
        "batteryCriticalError": m17,
        "batteryLowWarning": m18,
        "batterySavingWarning": MessageLookupByLibrary.simpleMessage(
            "Ваш телефон находится в режиме экономии заряда батареи. Пожалуйста, отключите этот режим или НЕ переводите приложение в фоновый режим, в противном случае приложение может быть убито операционной системой, и обмен не удастся."),
        "bestAvailableRate":
            MessageLookupByLibrary.simpleMessage("Обменный курс"),
        "builtKomodo":
            MessageLookupByLibrary.simpleMessage("Построено на Gleec"),
        "builtOnKmd":
            MessageLookupByLibrary.simpleMessage("Построено на Gleec"),
        "buy": MessageLookupByLibrary.simpleMessage("Купить"),
        "buyOrderType": MessageLookupByLibrary.simpleMessage(
            "Конвертировать в мейкер если нет совпадений"),
        "buySuccessWaiting": MessageLookupByLibrary.simpleMessage(
            "Обмен начался, пожалуйста подождите!"),
        "buySuccessWaitingError": m19,
        "buyTestCoinWarning": MessageLookupByLibrary.simpleMessage(
            "Внимание, вы пытаетесь купить тестовые монеты БЕЗ РЕАЛЬНОЙ стоимости."),
        "camoPinBioProtectionConflict": MessageLookupByLibrary.simpleMessage(
            "Маскировочный PIN и BIO защита не могут быть включены одновременно."),
        "camoPinBioProtectionConflictTitle":
            MessageLookupByLibrary.simpleMessage(
                "Конфликт маскировочного и Bio защитных PIN"),
        "camoPinChange":
            MessageLookupByLibrary.simpleMessage("Изменить маскировочный PIN"),
        "camoPinCreate":
            MessageLookupByLibrary.simpleMessage("Создать Маскировочный PIN"),
        "camoPinDesc": MessageLookupByLibrary.simpleMessage(
            "Если вы разблокируете приложение с маскировочным PIN-кодом, будет показан поддельный баланс, а настройки маскировочного PIN-кода НЕ будут отображаться в приложении"),
        "camoPinInvalid":
            MessageLookupByLibrary.simpleMessage("Неверный маскировочный PIN"),
        "camoPinLink":
            MessageLookupByLibrary.simpleMessage("Маскировочный PIN"),
        "camoPinNotFound":
            MessageLookupByLibrary.simpleMessage("Маскировочный PIN не найден"),
        "camoPinOff": MessageLookupByLibrary.simpleMessage("Выкл"),
        "camoPinOn": MessageLookupByLibrary.simpleMessage("Вкл"),
        "camoPinSaved":
            MessageLookupByLibrary.simpleMessage("Маскировочный PIN сохранен"),
        "camoPinTitle":
            MessageLookupByLibrary.simpleMessage("Маскировочный PIN"),
        "camoSetupSubtitle": MessageLookupByLibrary.simpleMessage(
            "Введите новый маскировочный PIN"),
        "camoSetupTitle": MessageLookupByLibrary.simpleMessage(
            "Установить маскировочный PIN"),
        "camouflageSetup": MessageLookupByLibrary.simpleMessage(
            "Установить маскировочный PIN"),
        "cancel": MessageLookupByLibrary.simpleMessage("отменить"),
        "cancelActivation":
            MessageLookupByLibrary.simpleMessage("Отменить активацию"),
        "cancelActivationQuestion": MessageLookupByLibrary.simpleMessage(
            "Вы уверены, что хотите отменить активацию?"),
        "cancelButton": MessageLookupByLibrary.simpleMessage("отменить"),
        "cancelOrder": MessageLookupByLibrary.simpleMessage("Отменить Ордер"),
        "candleChartError": MessageLookupByLibrary.simpleMessage(
            "Что-то пошло не так. Попробуйте позже."),
        "cantDeleteDefaultCoinOk": MessageLookupByLibrary.simpleMessage("Ок"),
        "cantDeleteDefaultCoinSpan": MessageLookupByLibrary.simpleMessage(
            "это монета настроенная по умолчанию. Монеты по умолчанию не могут быть отключены."),
        "cantDeleteDefaultCoinTitle":
            MessageLookupByLibrary.simpleMessage("Не возможно отключить"),
        "cex": MessageLookupByLibrary.simpleMessage("CEX"),
        "cexChangeRate": MessageLookupByLibrary.simpleMessage("Цена CEXchange"),
        "cexData": MessageLookupByLibrary.simpleMessage("Данные CEX"),
        "cexDataDesc": MessageLookupByLibrary.simpleMessage(
            "Данные (цены, графики и т.д.), отмеченные этим значком, получены из сторонних источников (<a href=\"https://www.coingecko.com/\"> coingecko.com </a>, <a href = \" https://openrates.io/\">openrates.io </a>)."),
        "cexRate": MessageLookupByLibrary.simpleMessage("Курс CEX"),
        "changePin": MessageLookupByLibrary.simpleMessage("Изменить PIN-код"),
        "checkForUpdates":
            MessageLookupByLibrary.simpleMessage("Проверить обновления"),
        "checkOut": MessageLookupByLibrary.simpleMessage("Всего"),
        "checkSeedPhrase":
            MessageLookupByLibrary.simpleMessage("Проверьте seed-фразу"),
        "checkSeedPhraseButton1":
            MessageLookupByLibrary.simpleMessage("ПРОДОЛЖИТЬ"),
        "checkSeedPhraseButton2":
            MessageLookupByLibrary.simpleMessage("ВЕРНУТЬСЯ И ПРОВЕРИТЬ СНОВА"),
        "checkSeedPhraseHint": m20,
        "checkSeedPhraseInfo": MessageLookupByLibrary.simpleMessage(
            "Ваш seed-ключ необходим для доступа к кошельку - поэтому мы хотим убедиться, что она правильная. Мы зададим вам три разных вопроса о вашей seed-фразе, чтобы убедиться, что вы сможете легко восстановить свой кошелек, когда захотите."),
        "checkSeedPhraseSubtile": m21,
        "checkSeedPhraseTitle": MessageLookupByLibrary.simpleMessage(
            "ДАВАЙТЕ ПЕРЕПРОВЕРИМ ВАШ SEED-КЛЮЧ"),
        "chineseLanguage": MessageLookupByLibrary.simpleMessage("Китайский"),
        "claim": MessageLookupByLibrary.simpleMessage("Востребовать"),
        "claimTitle": MessageLookupByLibrary.simpleMessage(
            "Востребовать KMD вознаграждение?"),
        "clickToSee":
            MessageLookupByLibrary.simpleMessage("Нажмите, чтобы увидеть"),
        "clipboard": MessageLookupByLibrary.simpleMessage("Скопировано"),
        "clipboardCopy": MessageLookupByLibrary.simpleMessage("Скопировать"),
        "close": MessageLookupByLibrary.simpleMessage("Закрыть"),
        "closeMessage":
            MessageLookupByLibrary.simpleMessage("Закрыть сообщение об ошибке"),
        "closePreview":
            MessageLookupByLibrary.simpleMessage("Закрыть предпросмотр"),
        "code": MessageLookupByLibrary.simpleMessage("Код:"),
        "cofirmCancelActivation": MessageLookupByLibrary.simpleMessage(
            "Вы уверены, что хотите отменить активацию?"),
        "coinActivationCancelled": m22,
        "coinActivationSuccessfull": m23,
        "coinSelectClear": MessageLookupByLibrary.simpleMessage("Очистить"),
        "coinSelectNotFound":
            MessageLookupByLibrary.simpleMessage("Нет активных монет"),
        "coinSelectTitle":
            MessageLookupByLibrary.simpleMessage("Выбрать монету"),
        "coinsActivatedLimitReached": MessageLookupByLibrary.simpleMessage(
            "Вы выбрали максимальное количество активов"),
        "coinsAreActivated": m24,
        "coinsAreActivatedSuccessfully": m25,
        "coinsAreNotActivated": m26,
        "comingSoon": MessageLookupByLibrary.simpleMessage("Скоро будет..."),
        "commingsoon": MessageLookupByLibrary.simpleMessage(
            "Детали TX скоро будут добавлены!"),
        "commingsoonGeneral": MessageLookupByLibrary.simpleMessage(
            "Детали будут скоро добавлены!"),
        "commissionFee": MessageLookupByLibrary.simpleMessage("комиссия"),
        "comparedTo24hrCex": MessageLookupByLibrary.simpleMessage(
            "по сравнению со сред. Цена CEX за 24 часа"),
        "comparedToCex":
            MessageLookupByLibrary.simpleMessage("сравнение с CEX"),
        "configureWallet": MessageLookupByLibrary.simpleMessage(
            "Настройка кошелька, пожалуйста, подождите"),
        "confirm": MessageLookupByLibrary.simpleMessage("подтвердить"),
        "confirmCamouflageSetup": MessageLookupByLibrary.simpleMessage(
            "Подтвердить маскировочный PIN"),
        "confirmCancel": MessageLookupByLibrary.simpleMessage(
            "Вы уверены, что хотите отменить ордер"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Подтвердите пароль"),
        "confirmPin":
            MessageLookupByLibrary.simpleMessage("Подтвердите PIN-код"),
        "confirmSeed":
            MessageLookupByLibrary.simpleMessage("Подтвердите seed-ключ"),
        "confirmeula": MessageLookupByLibrary.simpleMessage(
            "Нажимая кнопку ниже, вы подтверждаете, что прочитали «EULA» и «Terms and Conditions» и принимаете их"),
        "connecting": MessageLookupByLibrary.simpleMessage("Соединение..."),
        "contactCancel": MessageLookupByLibrary.simpleMessage("Отмена"),
        "contactDelete":
            MessageLookupByLibrary.simpleMessage("Удалить контакт"),
        "contactDeleteBtn": MessageLookupByLibrary.simpleMessage("Удалить"),
        "contactDeleteWarning": m27,
        "contactDiscardBtn": MessageLookupByLibrary.simpleMessage("Сбросить"),
        "contactEdit": MessageLookupByLibrary.simpleMessage("Изменить"),
        "contactExit": MessageLookupByLibrary.simpleMessage("Выйти"),
        "contactExitWarning":
            MessageLookupByLibrary.simpleMessage("Сбросить изменения?"),
        "contactNotFound":
            MessageLookupByLibrary.simpleMessage("Контакты не найдены"),
        "contactSave": MessageLookupByLibrary.simpleMessage("Сохранить"),
        "contactTitle":
            MessageLookupByLibrary.simpleMessage("Контактная информация"),
        "contactTitleName": MessageLookupByLibrary.simpleMessage("Имя"),
        "contract": MessageLookupByLibrary.simpleMessage("Договор"),
        "convert": MessageLookupByLibrary.simpleMessage("Конвертировать"),
        "couldNotLaunchUrl":
            MessageLookupByLibrary.simpleMessage("Не удалось запустить URL"),
        "couldntImportError":
            MessageLookupByLibrary.simpleMessage("Не удалось импортировать:"),
        "create": MessageLookupByLibrary.simpleMessage("сделка"),
        "createAWallet":
            MessageLookupByLibrary.simpleMessage("СОЗДАТЬ КОШЕЛЕК"),
        "createContact":
            MessageLookupByLibrary.simpleMessage("Добавить контакт"),
        "createPin": MessageLookupByLibrary.simpleMessage("Задать PIN"),
        "currency": MessageLookupByLibrary.simpleMessage("Валюта"),
        "currencyDialogTitle": MessageLookupByLibrary.simpleMessage("Валюта"),
        "currentValue":
            MessageLookupByLibrary.simpleMessage("Текущее значение"),
        "customFee": MessageLookupByLibrary.simpleMessage("Настроить комиссию"),
        "customFeeWarning": MessageLookupByLibrary.simpleMessage(
            "Используйте настраиваемые комиссии только если знаете, что делаете!"),
        "customSeedWarning": m28,
        "dPow": MessageLookupByLibrary.simpleMessage("Защита Gleec dPoW"),
        "date": MessageLookupByLibrary.simpleMessage("Дата"),
        "decryptingWallet":
            MessageLookupByLibrary.simpleMessage("Расшифровываю кошелек"),
        "delete": MessageLookupByLibrary.simpleMessage("Удалить"),
        "deleteConfirm":
            MessageLookupByLibrary.simpleMessage("Подтвердить деактивацию"),
        "deleteSpan1":
            MessageLookupByLibrary.simpleMessage("Вы хотите удалить"),
        "deleteSpan2": MessageLookupByLibrary.simpleMessage(
            "из вашего портфолио? Все несовпавшие ордеры будут отменены."),
        "deleteSpan3":
            MessageLookupByLibrary.simpleMessage(" также будет деактивирован"),
        "deleteWallet": MessageLookupByLibrary.simpleMessage("Удалить кошелек"),
        "deletingWallet":
            MessageLookupByLibrary.simpleMessage("Удаляю кошелек"),
        "detailedFeesReceiveCoinTransactionFee": m29,
        "detailedFeesSendCoinTransactionFee": m30,
        "detailedFeesSendTradingFeeTransactionFee":
            MessageLookupByLibrary.simpleMessage(
                "отправить торговую комиссию комиссию за транзакцию"),
        "detailedFeesTradingFee":
            MessageLookupByLibrary.simpleMessage("торговая комиссия"),
        "details": MessageLookupByLibrary.simpleMessage("детали"),
        "deutscheLanguage": MessageLookupByLibrary.simpleMessage("Немецкий"),
        "developerTitle": MessageLookupByLibrary.simpleMessage("Разработчик"),
        "dex": MessageLookupByLibrary.simpleMessage("DEX"),
        "dexIsNotAvailable": MessageLookupByLibrary.simpleMessage(
            "DEX не доступен для этой монеты"),
        "disableScreenshots": MessageLookupByLibrary.simpleMessage(
            "Отключить скриншоты/предварительный просмотр"),
        "disclaimerAndTos":
            MessageLookupByLibrary.simpleMessage("Disclaimer & ToS"),
        "doNotCloseTheAppTapForMoreInfo": MessageLookupByLibrary.simpleMessage(
            "Не закрывайте приложение. Нажмите, чтобы узнать больше..."),
        "done": MessageLookupByLibrary.simpleMessage("Готово"),
        "dontAskAgain":
            MessageLookupByLibrary.simpleMessage("Не спрашивать снова"),
        "dontWantPassword": MessageLookupByLibrary.simpleMessage(
            "Я не хочу использовать пароль"),
        "duration": MessageLookupByLibrary.simpleMessage("Продолжительность"),
        "editContact": MessageLookupByLibrary.simpleMessage("Редактировать"),
        "emptyCoin": m31,
        "emptyExportPass": MessageLookupByLibrary.simpleMessage(
            "Зашифрованный пароль не может быть пустым"),
        "emptyImportPass":
            MessageLookupByLibrary.simpleMessage("Пароль не может быть пустым"),
        "emptyName": MessageLookupByLibrary.simpleMessage(
            "Имя контакта не может быть пустым"),
        "emptyWallet": MessageLookupByLibrary.simpleMessage(
            "Имя кошелька не должно быть пустым"),
        "enableNotificationsForActivationProgress":
            MessageLookupByLibrary.simpleMessage(
                "Пожалуйста, включите уведомления, чтобы получать обновления о ходе активации."),
        "enableTestCoins":
            MessageLookupByLibrary.simpleMessage("Включить тестовые монеты"),
        "enablingTooManyAssetsSpan1":
            MessageLookupByLibrary.simpleMessage("У вас есть"),
        "enablingTooManyAssetsSpan2": MessageLookupByLibrary.simpleMessage(
            "подключенные активы и активы в состоянии подключения"),
        "enablingTooManyAssetsSpan3": MessageLookupByLibrary.simpleMessage(
            "Максимальный лимит подключенных активов ."),
        "enablingTooManyAssetsSpan4": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста отключите некоторые чтобы добавить новые."),
        "enablingTooManyAssetsTitle": MessageLookupByLibrary.simpleMessage(
            "Попытка подключения других активов"),
        "encryptingWallet":
            MessageLookupByLibrary.simpleMessage("Шифрую кошелек"),
        "englishLanguage": MessageLookupByLibrary.simpleMessage("Английский"),
        "enterNewPinCode":
            MessageLookupByLibrary.simpleMessage("Введите новый PIN"),
        "enterOldPinCode":
            MessageLookupByLibrary.simpleMessage("Введите свой старый PIN"),
        "enterPinCode":
            MessageLookupByLibrary.simpleMessage("Введите свой PIN-код"),
        "enterSeedPhrase":
            MessageLookupByLibrary.simpleMessage("Введите свою seed-фразу"),
        "enterSellAmount": MessageLookupByLibrary.simpleMessage(
            "Для начала вы должны ввести сумму на продажу"),
        "enterpassword": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста, введите Ваш пароль чтобы продолжить."),
        "errorAmountBalance":
            MessageLookupByLibrary.simpleMessage("Недостаточный баланс"),
        "errorNotAValidAddress":
            MessageLookupByLibrary.simpleMessage("Невалидный адрес"),
        "errorNotAValidAddressSegWit": MessageLookupByLibrary.simpleMessage(
            "Segwit адреса не поддерживаются"),
        "errorNotEnoughGas": m33,
        "errorTryAgain": MessageLookupByLibrary.simpleMessage(
            "Ошибка, пожалуйста попробуйте еще раз"),
        "errorTryLater": MessageLookupByLibrary.simpleMessage(
            "Ошибка, пожалуйста попробуйте позже"),
        "errorValueEmpty": MessageLookupByLibrary.simpleMessage(
            "Значение слишком высокое или маленькое"),
        "errorValueNotEmpty":
            MessageLookupByLibrary.simpleMessage("Пожалуйста, введите данные"),
        "estimateValue":
            MessageLookupByLibrary.simpleMessage("Расчетная общая стоимость"),
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
        "exampleHintSeed": MessageLookupByLibrary.simpleMessage(
            "Например: build case level ..."),
        "exchangeExpedient":
            MessageLookupByLibrary.simpleMessage("Ниже цен CEX"),
        "exchangeExpensive":
            MessageLookupByLibrary.simpleMessage("Выше цен CEX"),
        "exchangeIdentical":
            MessageLookupByLibrary.simpleMessage("Идентичен CEX"),
        "exchangeRate":
            MessageLookupByLibrary.simpleMessage("Рейтинг обменника"),
        "exchangeTitle": MessageLookupByLibrary.simpleMessage("ОБМЕН"),
        "exportButton": MessageLookupByLibrary.simpleMessage("Экспорт"),
        "exportContactsTitle": MessageLookupByLibrary.simpleMessage("Контакты"),
        "exportDesc": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста выберите элементы для экспорта в зашифрованный файл."),
        "exportLink": MessageLookupByLibrary.simpleMessage("Экспорт"),
        "exportNotesTitle": MessageLookupByLibrary.simpleMessage("Заметки"),
        "exportSuccessTitle": MessageLookupByLibrary.simpleMessage(
            "Элементы которые были успешно экспортированы:"),
        "exportSwapsTitle": MessageLookupByLibrary.simpleMessage("Свопы"),
        "exportTitle": MessageLookupByLibrary.simpleMessage("Экспорт"),
        "failedToCancelActivation": m48,
        "fakeBalanceAmt":
            MessageLookupByLibrary.simpleMessage("Маскировочный баланс:"),
        "faqTitle":
            MessageLookupByLibrary.simpleMessage("Часто задаваемые вопросы"),
        "faucetError": MessageLookupByLibrary.simpleMessage("Ошибка"),
        "faucetInProgress": m49,
        "faucetName": MessageLookupByLibrary.simpleMessage("FAUCET"),
        "faucetSuccess": MessageLookupByLibrary.simpleMessage("Успешно"),
        "faucetTimedOut":
            MessageLookupByLibrary.simpleMessage("Время запроса истекло"),
        "feedNewsTab": MessageLookupByLibrary.simpleMessage("Новости"),
        "feedNotFound":
            MessageLookupByLibrary.simpleMessage("Здесь ничего нет"),
        "feedNotifTitle": m50,
        "feedReadMore": MessageLookupByLibrary.simpleMessage("Узнать больше"),
        "feedTab": MessageLookupByLibrary.simpleMessage("Лента"),
        "feedTitle": MessageLookupByLibrary.simpleMessage("Лента новостей"),
        "feedUnableToProceed": MessageLookupByLibrary.simpleMessage(
            "Невозможно обновить ленту новостей"),
        "feedUnableToUpdate": MessageLookupByLibrary.simpleMessage(
            "Невозможно обновить ленту новостей"),
        "feedUpToDate":
            MessageLookupByLibrary.simpleMessage("Новых новостей нет"),
        "feedUpdated":
            MessageLookupByLibrary.simpleMessage("Лента новостей обновлена"),
        "feedback": MessageLookupByLibrary.simpleMessage("Отправить логи"),
        "feesError": m51,
        "filtersAll": MessageLookupByLibrary.simpleMessage("Все"),
        "filtersButton": MessageLookupByLibrary.simpleMessage("Фильтр"),
        "filtersClearAll":
            MessageLookupByLibrary.simpleMessage("Очистить все фильтры"),
        "filtersFailed": MessageLookupByLibrary.simpleMessage("Не удалось"),
        "filtersFrom": MessageLookupByLibrary.simpleMessage("С даты"),
        "filtersMaker": MessageLookupByLibrary.simpleMessage("Майкер"),
        "filtersReceive":
            MessageLookupByLibrary.simpleMessage("Получить монету"),
        "filtersSell": MessageLookupByLibrary.simpleMessage("Продать монету"),
        "filtersStatus": MessageLookupByLibrary.simpleMessage("Статус"),
        "filtersSuccessful": MessageLookupByLibrary.simpleMessage("Успешно"),
        "filtersTaker": MessageLookupByLibrary.simpleMessage("Тейкер"),
        "filtersTo": MessageLookupByLibrary.simpleMessage("На дату"),
        "filtersType": MessageLookupByLibrary.simpleMessage("Тейкер/Мейкер"),
        "fingerprint": MessageLookupByLibrary.simpleMessage("Отпечаток"),
        "finishingUp": MessageLookupByLibrary.simpleMessage(
            "Заканчиваем, пожалуйста, подождите"),
        "foundQrCode": MessageLookupByLibrary.simpleMessage("Найден QR-код"),
        "frenchLanguage": MessageLookupByLibrary.simpleMessage("Французский"),
        "from": MessageLookupByLibrary.simpleMessage("Из"),
        "futureTransactions": MessageLookupByLibrary.simpleMessage(
            "Мы будем синхронизировать будущие транзакции, совершенные после активации, связанные с вашим открытым ключом. Это самый быстрый вариант и занимает меньше всего места."),
        "gasFee": m52,
        "gasLimit": MessageLookupByLibrary.simpleMessage("Лимит газа"),
        "gasNotActive": m53,
        "gasPrice": MessageLookupByLibrary.simpleMessage("Цена Gas"),
        "generalPinNotActive": MessageLookupByLibrary.simpleMessage(
            "Общая защита PIN-кодом не активна.\nРежим маскировки будет недоступен.\nВключите защиту PIN-кодом."),
        "getBackupPhrase": MessageLookupByLibrary.simpleMessage(
            "Важно: перед тем как продолжить, сохраните свою seed-фразу в надежном месте!"),
        "gettingTxWait": MessageLookupByLibrary.simpleMessage(
            "Идет транзакция, пожалуйста, подождите"),
        "goToPorfolio":
            MessageLookupByLibrary.simpleMessage("Перейти в портфолио"),
        "gweiError": m54,
        "helpLink": MessageLookupByLibrary.simpleMessage("Помощь"),
        "helpTitle": MessageLookupByLibrary.simpleMessage("Помощь и поддержка"),
        "hideBalance": MessageLookupByLibrary.simpleMessage("Спрятать баланс"),
        "hintConfirmPassword":
            MessageLookupByLibrary.simpleMessage("Подтвердите Пароль"),
        "hintCreatePassword":
            MessageLookupByLibrary.simpleMessage("Создать пароль"),
        "hintCurrentPassword":
            MessageLookupByLibrary.simpleMessage("Текущий пароль"),
        "hintEnterPassword":
            MessageLookupByLibrary.simpleMessage("Введите свой пароль"),
        "hintEnterSeedPhrase":
            MessageLookupByLibrary.simpleMessage("Введите свой seed-ключ"),
        "hintNameYourWallet":
            MessageLookupByLibrary.simpleMessage("Назовите свой кошелек"),
        "hintPassword": MessageLookupByLibrary.simpleMessage("Пароль"),
        "history": MessageLookupByLibrary.simpleMessage("история"),
        "hours": MessageLookupByLibrary.simpleMessage("ч"),
        "hungarianLanguage": MessageLookupByLibrary.simpleMessage("Венгерский"),
        "iUnderstand": MessageLookupByLibrary.simpleMessage("Я понимаю"),
        "importButton": MessageLookupByLibrary.simpleMessage("Импортировать"),
        "importDecryptError": MessageLookupByLibrary.simpleMessage(
            "Неверный пароль или поврежденные данные"),
        "importDesc":
            MessageLookupByLibrary.simpleMessage("Элементы к импорту"),
        "importFileNotFound":
            MessageLookupByLibrary.simpleMessage("Файл не найден"),
        "importInvalidSwapData": MessageLookupByLibrary.simpleMessage(
            "Неверные данные своп. Предоставьте действительный JSON-файл состояния своп."),
        "importLink": MessageLookupByLibrary.simpleMessage("Импорт"),
        "importLoadDesc": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста выберите зашифрованный файл для импорта."),
        "importLoadSwapDesc": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста выберите текстовый своп файл для импорта"),
        "importLoading": MessageLookupByLibrary.simpleMessage("Открываю..."),
        "importPassCancel": MessageLookupByLibrary.simpleMessage("Отмена"),
        "importPassOk": MessageLookupByLibrary.simpleMessage("Ок"),
        "importPassword": MessageLookupByLibrary.simpleMessage("Пароль"),
        "importSingleSwapLink": MessageLookupByLibrary.simpleMessage(
            "Импортировать одиночный своп файл"),
        "importSingleSwapTitle":
            MessageLookupByLibrary.simpleMessage("Импортировать своп файл"),
        "importSomeItemsSkippedWarning": MessageLookupByLibrary.simpleMessage(
            "Некоторые элементы были пропущены"),
        "importSuccessTitle": MessageLookupByLibrary.simpleMessage(
            "Элементы которые были успешно импортированы:"),
        "importSwapFailed": MessageLookupByLibrary.simpleMessage(
            "Ошибка при импорте своп файла"),
        "importSwapJsonDecodingError": MessageLookupByLibrary.simpleMessage(
            "Ошибка декодирования json файла"),
        "importTitle": MessageLookupByLibrary.simpleMessage("Импорт"),
        "incomingTransactionsProtectionSettings": m55,
        "infoPasswordDialog": MessageLookupByLibrary.simpleMessage(
            "Если вы решите не использовать пароль, вам нужно будет вводить свою seed-фразу каждый раз, когда вы хотите получить доступ к своему кошельку."),
        "infoTrade1": MessageLookupByLibrary.simpleMessage(
            "Запрос на обмен не может быть отменен и является окончательным!"),
        "infoTrade2": MessageLookupByLibrary.simpleMessage(
            "Эта транзакция может занять до 10 минут - НЕ закрывайте приложение!"),
        "infoWalletPassword": MessageLookupByLibrary.simpleMessage(
            "Вы можете зашифровать свой кошелек паролем. Если вы решите не использовать пароль, вам нужно будет вводить свою seed-фразу каждый раз, когда вы хотите получить доступ к своему кошельку."),
        "insufficientBalanceToPay": m56,
        "insufficientText": MessageLookupByLibrary.simpleMessage(
            "Минимальное количество необходимое для этого ордера составляет"),
        "insufficientTitle":
            MessageLookupByLibrary.simpleMessage("Недостаточное количество"),
        "internetRefreshButton":
            MessageLookupByLibrary.simpleMessage("Обновить"),
        "internetRestored": MessageLookupByLibrary.simpleMessage(
            "Соединение с интернетом восстановлено"),
        "invalidCoinAddress": m57,
        "invalidSwap":
            MessageLookupByLibrary.simpleMessage("Невозможно продолжить своп"),
        "invalidSwapDetailsLink":
            MessageLookupByLibrary.simpleMessage("Подробнее"),
        "isUnavailable": m58,
        "japaneseLanguage": MessageLookupByLibrary.simpleMessage("Японский"),
        "koreanLanguage": MessageLookupByLibrary.simpleMessage("Корейский"),
        "language": MessageLookupByLibrary.simpleMessage("Язык"),
        "latestTxs":
            MessageLookupByLibrary.simpleMessage("Последние Транзакции"),
        "legalTitle": MessageLookupByLibrary.simpleMessage("Легальные аспекты"),
        "less": MessageLookupByLibrary.simpleMessage("Меньше"),
        "lessThanCaution": m59,
        "limitError": m60,
        "loading": MessageLookupByLibrary.simpleMessage("Загрузка..."),
        "loadingOrderbook":
            MessageLookupByLibrary.simpleMessage("Загрузка книги ордеров..."),
        "lockScreen":
            MessageLookupByLibrary.simpleMessage("Экран заблокирован"),
        "lockScreenAuth": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста, аутентифицируйтесь!"),
        "login": MessageLookupByLibrary.simpleMessage("войти"),
        "logout": MessageLookupByLibrary.simpleMessage("Выйти"),
        "logoutOnExit":
            MessageLookupByLibrary.simpleMessage("Log Out при выходе"),
        "logoutWarning": MessageLookupByLibrary.simpleMessage(
            "Вы уверены, что хотите выйти?"),
        "logoutsettings":
            MessageLookupByLibrary.simpleMessage("Настройки Log Out"),
        "longMinutes": MessageLookupByLibrary.simpleMessage("минуты"),
        "makeAorder": MessageLookupByLibrary.simpleMessage("разместить ордер"),
        "makerDetailsCancel":
            MessageLookupByLibrary.simpleMessage("Отменить ордер"),
        "makerDetailsCreated":
            MessageLookupByLibrary.simpleMessage("Создано в"),
        "makerDetailsFor": MessageLookupByLibrary.simpleMessage("Получить"),
        "makerDetailsId": MessageLookupByLibrary.simpleMessage("Ордер ID"),
        "makerDetailsNoSwaps": MessageLookupByLibrary.simpleMessage(
            "Свопы по этому ордеру не запускались"),
        "makerDetailsPrice": MessageLookupByLibrary.simpleMessage("Цена"),
        "makerDetailsSell": MessageLookupByLibrary.simpleMessage("Продать"),
        "makerDetailsSwaps": MessageLookupByLibrary.simpleMessage(
            "Свопы начатые по этому ордеру"),
        "makerDetailsTitle":
            MessageLookupByLibrary.simpleMessage("Подробности ордера Мейкера"),
        "makerOrder": MessageLookupByLibrary.simpleMessage("Ордер Мейкера"),
        "marketplace": MessageLookupByLibrary.simpleMessage("Маркетплейс"),
        "marketsChart": MessageLookupByLibrary.simpleMessage("График"),
        "marketsDepth": MessageLookupByLibrary.simpleMessage("Глубина"),
        "marketsNoAsks": MessageLookupByLibrary.simpleMessage("Нет асков"),
        "marketsNoBids": MessageLookupByLibrary.simpleMessage("Нет бидов"),
        "marketsOrderDetails":
            MessageLookupByLibrary.simpleMessage("Детали ордера"),
        "marketsOrderbook": MessageLookupByLibrary.simpleMessage("ОРДЕРБУК"),
        "marketsPrice": MessageLookupByLibrary.simpleMessage("ЦЕНА"),
        "marketsSelectCoins":
            MessageLookupByLibrary.simpleMessage("Пожалуйста, выберите монету"),
        "marketsTab": MessageLookupByLibrary.simpleMessage("Рынки"),
        "marketsTitle": MessageLookupByLibrary.simpleMessage("РЫНКИ"),
        "matchExportPass":
            MessageLookupByLibrary.simpleMessage("Пароли должны совпадать"),
        "matchingCamoChange": MessageLookupByLibrary.simpleMessage("Изменить"),
        "matchingCamoPinError": MessageLookupByLibrary.simpleMessage(
            "Общий PIN и маскировочный PIN совпадают.\nРежим маскировки будет недоступен.\nИзмените маскировочный PIN"),
        "matchingCamoTitle":
            MessageLookupByLibrary.simpleMessage("Неверный PIN"),
        "max": MessageLookupByLibrary.simpleMessage("MAX"),
        "maxOrder":
            MessageLookupByLibrary.simpleMessage("Максимальный размер ордера"),
        "media": MessageLookupByLibrary.simpleMessage("Новости"),
        "mediaBrowse": MessageLookupByLibrary.simpleMessage("ПРОСМАТРИВАТЬ"),
        "mediaBrowseFeed":
            MessageLookupByLibrary.simpleMessage("ПОСМОТРЕТЬ ЛЕНТУ"),
        "mediaBy": MessageLookupByLibrary.simpleMessage("По"),
        "mediaNotSavedDescription": MessageLookupByLibrary.simpleMessage(
            "У вас нет сохраненных статей"),
        "mediaSaved": MessageLookupByLibrary.simpleMessage("СОХРАНЕННЫЕ"),
        "memo": MessageLookupByLibrary.simpleMessage("Памятка"),
        "merge": MessageLookupByLibrary.simpleMessage("Слияние"),
        "mergedValue":
            MessageLookupByLibrary.simpleMessage("Объединенное значение:"),
        "milliseconds": MessageLookupByLibrary.simpleMessage("мс"),
        "min": MessageLookupByLibrary.simpleMessage("МИН"),
        "minOrder":
            MessageLookupByLibrary.simpleMessage("Минимальные объем ордера"),
        "minValue": m61,
        "minValueBuy": m62,
        "minValueOrder": m63,
        "minValueSell": m64,
        "minVolumeInput": m65,
        "minVolumeIsTDH": MessageLookupByLibrary.simpleMessage(
            "Должно быть меньше чем сумма продажи"),
        "minVolumeTitle": MessageLookupByLibrary.simpleMessage(
            "Минимальное требуемое количество"),
        "minVolumeToggle": MessageLookupByLibrary.simpleMessage(
            "Использовать собственное минимальное количество"),
        "minimizingWillTerminate": MessageLookupByLibrary.simpleMessage(
            "Предупреждение: сворачивание приложения на iOS приведет к прекращению процесса активации."),
        "minutes": MessageLookupByLibrary.simpleMessage("мин"),
        "mobileDataWarning": m66,
        "moreInfo": MessageLookupByLibrary.simpleMessage("Больше информации"),
        "moreTab": MessageLookupByLibrary.simpleMessage("Ещё"),
        "multiActivateGas": m67,
        "multiBaseAmtPlaceholder":
            MessageLookupByLibrary.simpleMessage("Сумма"),
        "multiBasePlaceholder": MessageLookupByLibrary.simpleMessage("Монета"),
        "multiBaseSelectTitle": MessageLookupByLibrary.simpleMessage("Продать"),
        "multiConfirmCancel": MessageLookupByLibrary.simpleMessage("Отменить"),
        "multiConfirmConfirm":
            MessageLookupByLibrary.simpleMessage("Подтвердить"),
        "multiConfirmTitle": m68,
        "multiCreate": MessageLookupByLibrary.simpleMessage("Создать"),
        "multiCreateOrder": MessageLookupByLibrary.simpleMessage("Ордер"),
        "multiCreateOrders": MessageLookupByLibrary.simpleMessage("Ордеры"),
        "multiEthFee": MessageLookupByLibrary.simpleMessage("комис."),
        "multiFiatCancel": MessageLookupByLibrary.simpleMessage("Отменить"),
        "multiFiatDesc": MessageLookupByLibrary.simpleMessage(
            "Введите сумму в фиате для получения:"),
        "multiFiatFill": MessageLookupByLibrary.simpleMessage("Автозаполнение"),
        "multiFixErrors": MessageLookupByLibrary.simpleMessage(
            "Исправьте ошибки, прежде чем продолжить"),
        "multiInvalidAmt":
            MessageLookupByLibrary.simpleMessage("Некорректная сумма"),
        "multiInvalidSellAmt":
            MessageLookupByLibrary.simpleMessage("Неверная сумма продажи"),
        "multiLowGas": m69,
        "multiLowerThanFee": m70,
        "multiMaxSellAmt":
            MessageLookupByLibrary.simpleMessage("Макс сумма к продаже"),
        "multiMinReceiveAmt":
            MessageLookupByLibrary.simpleMessage("Мин сумма к получению"),
        "multiMinSellAmt":
            MessageLookupByLibrary.simpleMessage("Мин сумма к продаже"),
        "multiReceiveTitle": MessageLookupByLibrary.simpleMessage("Получить"),
        "multiSellTitle": MessageLookupByLibrary.simpleMessage("Продать:"),
        "multiTab": MessageLookupByLibrary.simpleMessage("Мульти"),
        "multiTableAmt": MessageLookupByLibrary.simpleMessage("Получ. сумма"),
        "multiTablePrice": MessageLookupByLibrary.simpleMessage("Цена/СЕХ"),
        "networkFee": MessageLookupByLibrary.simpleMessage("Комиссия сети"),
        "newAccount": MessageLookupByLibrary.simpleMessage("новый аккаунт"),
        "newAccountUpper":
            MessageLookupByLibrary.simpleMessage("Новый аккаунт"),
        "newValue": MessageLookupByLibrary.simpleMessage("Новое значение"),
        "newsFeed": MessageLookupByLibrary.simpleMessage("Новостная лента"),
        "next": MessageLookupByLibrary.simpleMessage("далее"),
        "no": MessageLookupByLibrary.simpleMessage("Нет"),
        "noArticles": MessageLookupByLibrary.simpleMessage(
            "Нет новостей - пожалуйста проверьте позже!"),
        "noCoinFound":
            MessageLookupByLibrary.simpleMessage("Монета не найдена"),
        "noFunds": MessageLookupByLibrary.simpleMessage("Нет средств"),
        "noFundsDetected": MessageLookupByLibrary.simpleMessage(
            "Нет доступных средств - пожалуйста, внесите депозит."),
        "noInternet": MessageLookupByLibrary.simpleMessage(
            "Отсутствует подключение к Интернет"),
        "noItemsToExport":
            MessageLookupByLibrary.simpleMessage("Ничего не выбрано"),
        "noItemsToImport":
            MessageLookupByLibrary.simpleMessage("Ничего не выбрано"),
        "noMatchingOrders": MessageLookupByLibrary.simpleMessage(
            "Совпадающих ордеров не найдено"),
        "noOrder": m71,
        "noOrderAvailable": MessageLookupByLibrary.simpleMessage(
            "Нажмите, чтобы создать ордер"),
        "noOrders": MessageLookupByLibrary.simpleMessage(
            "Нет ордеров, пожалуйста перейдите в торговлю."),
        "noRewardYet": MessageLookupByLibrary.simpleMessage(
            "Нет вознаграждения для востребования - повторите попытку через 1 час."),
        "noRewards": MessageLookupByLibrary.simpleMessage(
            "Нет доступных вознаграждений"),
        "noSuchCoin": MessageLookupByLibrary.simpleMessage("Нет такой монеты"),
        "noSwaps": MessageLookupByLibrary.simpleMessage("Нет истории."),
        "noTxs": MessageLookupByLibrary.simpleMessage("Нет транзакций"),
        "nonNumericInput": MessageLookupByLibrary.simpleMessage(
            "Значение должно быть указано в цифрах"),
        "none": MessageLookupByLibrary.simpleMessage("Никто"),
        "notEnoughGas": m72,
        "notEnoughtBalanceForFee": MessageLookupByLibrary.simpleMessage(
            "Недостаточно баланса для комиссий - выполните сделку на меньшую сумму"),
        "noteOnOrder": MessageLookupByLibrary.simpleMessage(
            "Замечание: Выбранный ордер не может быть снова отменен"),
        "notePlaceholder":
            MessageLookupByLibrary.simpleMessage("Добавить заметку"),
        "noteTitle": MessageLookupByLibrary.simpleMessage("Заметка"),
        "nothingFound":
            MessageLookupByLibrary.simpleMessage("Ничего не найдено"),
        "notifSwapCompletedText": m73,
        "notifSwapCompletedTitle":
            MessageLookupByLibrary.simpleMessage("Своп завершен"),
        "notifSwapFailedText": m74,
        "notifSwapFailedTitle":
            MessageLookupByLibrary.simpleMessage("Своп не был завершен"),
        "notifSwapStartedText": m75,
        "notifSwapStartedTitle":
            MessageLookupByLibrary.simpleMessage("Новый своп начался"),
        "notifSwapStatusTitle":
            MessageLookupByLibrary.simpleMessage("Статус свопа изменен"),
        "notifSwapTimeoutText": m76,
        "notifSwapTimeoutTitle":
            MessageLookupByLibrary.simpleMessage("Превышен тайм-аут свопа"),
        "notifTxText": m77,
        "notifTxTitle":
            MessageLookupByLibrary.simpleMessage("Входящая транзакция"),
        "numberAssets": m78,
        "officialPressRelease":
            MessageLookupByLibrary.simpleMessage("Официальный пресс-релиз"),
        "okButton": MessageLookupByLibrary.simpleMessage("Ок"),
        "oldLogsDelete": MessageLookupByLibrary.simpleMessage("Удалить"),
        "oldLogsTitle": MessageLookupByLibrary.simpleMessage("Старые логи"),
        "oldLogsUsed":
            MessageLookupByLibrary.simpleMessage("Использовано места"),
        "openMessage":
            MessageLookupByLibrary.simpleMessage("Открыть сообщение об ошибке"),
        "orderBookLess": MessageLookupByLibrary.simpleMessage("Меньше"),
        "orderBookMore": MessageLookupByLibrary.simpleMessage("Более"),
        "orderCancel": m79,
        "orderCreated": MessageLookupByLibrary.simpleMessage("Ордер создан"),
        "orderCreatedInfo":
            MessageLookupByLibrary.simpleMessage("Ордер успешно создан"),
        "orderDetailsAddress": MessageLookupByLibrary.simpleMessage("Адрес"),
        "orderDetailsCancel": MessageLookupByLibrary.simpleMessage("Отменить"),
        "orderDetailsExpedient": m80,
        "orderDetailsExpensive": m81,
        "orderDetailsFor": MessageLookupByLibrary.simpleMessage("на"),
        "orderDetailsIdentical":
            MessageLookupByLibrary.simpleMessage("Совпадает с СЕХ"),
        "orderDetailsMin": MessageLookupByLibrary.simpleMessage("мин."),
        "orderDetailsPrice": MessageLookupByLibrary.simpleMessage("Цена"),
        "orderDetailsReceive": MessageLookupByLibrary.simpleMessage("Получите"),
        "orderDetailsSelect": MessageLookupByLibrary.simpleMessage("Выбрать"),
        "orderDetailsSells":
            MessageLookupByLibrary.simpleMessage("Ордеры продаж"),
        "orderDetailsSettings": MessageLookupByLibrary.simpleMessage(
            "Из вкладки Подробности выберите Ордер одним долгим нажатием"),
        "orderDetailsSpend": MessageLookupByLibrary.simpleMessage("Отправьте"),
        "orderDetailsTitle":
            MessageLookupByLibrary.simpleMessage("Подробности"),
        "orderFilled": m82,
        "orderMatched": MessageLookupByLibrary.simpleMessage("Сделка найдена"),
        "orderMatching":
            MessageLookupByLibrary.simpleMessage("Поиск сделки в процессе"),
        "orderTypePartial": MessageLookupByLibrary.simpleMessage("Ордер"),
        "orderTypeUnknown":
            MessageLookupByLibrary.simpleMessage("Неизвестный тип ордера"),
        "orders": MessageLookupByLibrary.simpleMessage("ордера"),
        "ordersActive": MessageLookupByLibrary.simpleMessage("Активные"),
        "ordersHistory": MessageLookupByLibrary.simpleMessage("История"),
        "ordersTableAmount": m83,
        "ordersTablePrice": m84,
        "ordersTableTotal": m85,
        "overwrite": MessageLookupByLibrary.simpleMessage("Перезаписать"),
        "ownOrder": MessageLookupByLibrary.simpleMessage("Это ваш ордер!"),
        "paidFromBalance":
            MessageLookupByLibrary.simpleMessage("Оплачено с баланса:"),
        "paidFromVolume": MessageLookupByLibrary.simpleMessage(
            "Оплачено с полученного объема:"),
        "paidWith": MessageLookupByLibrary.simpleMessage("Оплачено c"),
        "passwordRequirement": MessageLookupByLibrary.simpleMessage(
            "Пароль должен содержать не менее 12 символов, включая один строчный, один заглавный и один специальный символ."),
        "pastTransactionsFromDate": MessageLookupByLibrary.simpleMessage(
            "Ваш кошелек покажет ваши прошлые транзакции, совершенные после указанной даты."),
        "paymentUriDetailsAccept":
            MessageLookupByLibrary.simpleMessage("Оплата"),
        "paymentUriDetailsAcceptQuestion": MessageLookupByLibrary.simpleMessage(
            "Вы подтверждаете эту транзакцию?"),
        "paymentUriDetailsAddressSpan":
            MessageLookupByLibrary.simpleMessage("На Адрес"),
        "paymentUriDetailsAmountSpan":
            MessageLookupByLibrary.simpleMessage("Остаток:"),
        "paymentUriDetailsCoinSpan":
            MessageLookupByLibrary.simpleMessage("Монета:"),
        "paymentUriDetailsDeny":
            MessageLookupByLibrary.simpleMessage("Отмена:"),
        "paymentUriDetailsTitle":
            MessageLookupByLibrary.simpleMessage("Оплата запрошена"),
        "paymentUriInactiveCoin": m86,
        "placeOrder": MessageLookupByLibrary.simpleMessage("Разместить ордер"),
        "pleaseAcceptAllCoinActivationRequests":
            MessageLookupByLibrary.simpleMessage(
                "Пожалуйста, примите все специальные запросы на активацию монет или отмените выбор монет."),
        "pleaseAddCoin":
            MessageLookupByLibrary.simpleMessage("Пожалуйста добавьте монету"),
        "pleaseRestart": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста перезапустите приложение чтобы попробовать снова или нажмите на кнопку ниже."),
        "portfolio": MessageLookupByLibrary.simpleMessage("Портфолио"),
        "poweredOnKmd":
            MessageLookupByLibrary.simpleMessage("Разработано Gleec"),
        "price": MessageLookupByLibrary.simpleMessage("цена"),
        "privateKey": MessageLookupByLibrary.simpleMessage("Приватный ключ"),
        "privateKeys": MessageLookupByLibrary.simpleMessage("Приватные ключи"),
        "protectionCtrlConfirmations":
            MessageLookupByLibrary.simpleMessage("Подтверждений"),
        "protectionCtrlCustom": MessageLookupByLibrary.simpleMessage(
            "Установить свои настройки защиты"),
        "protectionCtrlOff": MessageLookupByLibrary.simpleMessage("ВЫКЛ"),
        "protectionCtrlOn": MessageLookupByLibrary.simpleMessage("ВКЛ"),
        "protectionCtrlWarning": MessageLookupByLibrary.simpleMessage(
            "Внимание, этот своп не защищен dPoW!"),
        "pubkey": MessageLookupByLibrary.simpleMessage("Публичный ключ"),
        "qrCodeScanner": MessageLookupByLibrary.simpleMessage("Сканер QR-кода"),
        "question_1": MessageLookupByLibrary.simpleMessage(
            "Вы храните мои приватные ключи?"),
        "question_10": m87,
        "question_2": m88,
        "question_3": MessageLookupByLibrary.simpleMessage(
            "Сколько времени занимает каждый атомарный своп?"),
        "question_4": MessageLookupByLibrary.simpleMessage(
            "Необходимо ли мне быть в сети во время свопа?"),
        "question_5": m89,
        "question_6": MessageLookupByLibrary.simpleMessage(
            "Предоставляете ли вы поддержку пользователей?"),
        "question_7": MessageLookupByLibrary.simpleMessage(
            "Есть ли у вас какие-либо географические ограничения?"),
        "question_8": m90,
        "question_9": m91,
        "rebrandingAnnouncement": MessageLookupByLibrary.simpleMessage(
            "Это новая эра! Мы официально изменили наше название с «AtomicDEX» на «Gleec Wallet»."),
        "receive": MessageLookupByLibrary.simpleMessage("ПОЛУЧИТЬ"),
        "receiveLower": MessageLookupByLibrary.simpleMessage("Получить"),
        "recommendSeedMessage": MessageLookupByLibrary.simpleMessage(
            "Мы рекомендуем хранить ее на оффлайн носителе."),
        "remove": MessageLookupByLibrary.simpleMessage("Отключить"),
        "requestedTrade":
            MessageLookupByLibrary.simpleMessage("Запрошенная сделка"),
        "reset": MessageLookupByLibrary.simpleMessage("ОЧИСТИТЬ"),
        "resetTitle": MessageLookupByLibrary.simpleMessage("Сбросить форму"),
        "restoreWallet": MessageLookupByLibrary.simpleMessage("ВОССТАНОВИТЬ"),
        "retryActivating": MessageLookupByLibrary.simpleMessage(
            "Попытка активации всех монет..."),
        "retryAll":
            MessageLookupByLibrary.simpleMessage("Попытка активации всего"),
        "rewardsButton":
            MessageLookupByLibrary.simpleMessage("Забрать вашу награду"),
        "rewardsCancel": MessageLookupByLibrary.simpleMessage("Отменить"),
        "rewardsError": MessageLookupByLibrary.simpleMessage(
            "Что-то пошло не так. Попробуйте позже."),
        "rewardsInProgressLong":
            MessageLookupByLibrary.simpleMessage("Транзакция в процессе"),
        "rewardsInProgressShort":
            MessageLookupByLibrary.simpleMessage("обработка"),
        "rewardsLowAmountLong":
            MessageLookupByLibrary.simpleMessage("UTXO меньше 10"),
        "rewardsLowAmountShort":
            MessageLookupByLibrary.simpleMessage("<10 KMD"),
        "rewardsOneHourLong":
            MessageLookupByLibrary.simpleMessage("Час еще не прошел"),
        "rewardsOneHourShort":
            MessageLookupByLibrary.simpleMessage("Меньше часа"),
        "rewardsPopupOk": MessageLookupByLibrary.simpleMessage("ОК"),
        "rewardsPopupTitle":
            MessageLookupByLibrary.simpleMessage("Статус вознаграждений:"),
        "rewardsReadMore": MessageLookupByLibrary.simpleMessage(
            "Узнать больше о KMD вознаграждениях"),
        "rewardsReceive": MessageLookupByLibrary.simpleMessage("Получить"),
        "rewardsSuccess": m92,
        "rewardsTableFiat": MessageLookupByLibrary.simpleMessage("Фиат"),
        "rewardsTableRewards":
            MessageLookupByLibrary.simpleMessage("Вознаграждений\nKMD"),
        "rewardsTableStatus": MessageLookupByLibrary.simpleMessage("Статус"),
        "rewardsTableTime": MessageLookupByLibrary.simpleMessage("Осталось"),
        "rewardsTableTitle":
            MessageLookupByLibrary.simpleMessage("Инфо о вознаграждениях:"),
        "rewardsTableUXTO": MessageLookupByLibrary.simpleMessage("UTXO,\nKMD"),
        "rewardsTimeDays": m93,
        "rewardsTimeHours": m94,
        "rewardsTimeMin": m95,
        "rewardsTitle":
            MessageLookupByLibrary.simpleMessage("Инфо о вознаграждениях:"),
        "russianLanguage": MessageLookupByLibrary.simpleMessage("Русский"),
        "saveMerged":
            MessageLookupByLibrary.simpleMessage("Сохранить объединенные"),
        "scrollToContinue": MessageLookupByLibrary.simpleMessage(
            "Прокрутите вниз, чтобы продолжить..."),
        "searchFilterCoin":
            MessageLookupByLibrary.simpleMessage("Поиск монеты"),
        "searchFilterSubtitleAVX":
            MessageLookupByLibrary.simpleMessage("Выбрать все Avax токены"),
        "searchFilterSubtitleBEP":
            MessageLookupByLibrary.simpleMessage("Выбрать все BEP токены"),
        "searchFilterSubtitleCosmos":
            MessageLookupByLibrary.simpleMessage("Выбрать всю сеть Cosmos"),
        "searchFilterSubtitleERC":
            MessageLookupByLibrary.simpleMessage("Выбрать все ERC токены"),
        "searchFilterSubtitleETC":
            MessageLookupByLibrary.simpleMessage("Выбрать все ETC токены"),
        "searchFilterSubtitleFTM":
            MessageLookupByLibrary.simpleMessage("Выбрать все Fantom токены"),
        "searchFilterSubtitleHCO": MessageLookupByLibrary.simpleMessage(
            "Выбрать все HecoChain токены"),
        "searchFilterSubtitleHRC":
            MessageLookupByLibrary.simpleMessage("Выбрать все Harmony токены"),
        "searchFilterSubtitleIris":
            MessageLookupByLibrary.simpleMessage("Выбрать всю сеть Iris"),
        "searchFilterSubtitleKRC":
            MessageLookupByLibrary.simpleMessage("Выбрать все Kucoin токены"),
        "searchFilterSubtitleMVR": MessageLookupByLibrary.simpleMessage(
            "Выбрать все Moonriver токены"),
        "searchFilterSubtitlePLG":
            MessageLookupByLibrary.simpleMessage("Выбрать все Polygon токены"),
        "searchFilterSubtitleQRC":
            MessageLookupByLibrary.simpleMessage("Выбрать все QRC токены"),
        "searchFilterSubtitleSBCH":
            MessageLookupByLibrary.simpleMessage("Выбрать все SmartBCH токены"),
        "searchFilterSubtitleSLP":
            MessageLookupByLibrary.simpleMessage("Выбрать все токены SLP"),
        "searchFilterSubtitleSmartChain":
            MessageLookupByLibrary.simpleMessage("Выбрать все Smartchain"),
        "searchFilterSubtitleTestCoins":
            MessageLookupByLibrary.simpleMessage("Выбрать все Тестовые Активы"),
        "searchFilterSubtitleUBQ":
            MessageLookupByLibrary.simpleMessage("Выбрать все Ubiq монеты"),
        "searchFilterSubtitleZHTLC":
            MessageLookupByLibrary.simpleMessage("Выбрать все монеты ZHTLC"),
        "searchFilterSubtitleutxo":
            MessageLookupByLibrary.simpleMessage("Выбрать все UTXO монеты"),
        "searchForTicker": MessageLookupByLibrary.simpleMessage("Найти Тикер"),
        "seconds": MessageLookupByLibrary.simpleMessage("сек"),
        "security": MessageLookupByLibrary.simpleMessage("Безопасность"),
        "seeOrders": m96,
        "seeTxHistory":
            MessageLookupByLibrary.simpleMessage("Показать историю транзакций"),
        "seedPhrase": MessageLookupByLibrary.simpleMessage("Seed Фраза"),
        "seedPhraseTitle":
            MessageLookupByLibrary.simpleMessage("Ваш новый seed-ключ"),
        "selectCoin": MessageLookupByLibrary.simpleMessage("Выберите монету"),
        "selectCoinInfo": MessageLookupByLibrary.simpleMessage(
            "Выберите монеты, которые вы хотите добавить в свое портфолио."),
        "selectCoinTitle":
            MessageLookupByLibrary.simpleMessage("Активировать монеты:"),
        "selectCoinToBuy": MessageLookupByLibrary.simpleMessage(
            "Выберите монету, которую хотите купить"),
        "selectCoinToSell": MessageLookupByLibrary.simpleMessage(
            "Выберите монету, которую хотите продать"),
        "selectDate": MessageLookupByLibrary.simpleMessage("Выберите дату"),
        "selectFileImport":
            MessageLookupByLibrary.simpleMessage("Выбрать файл"),
        "selectLanguage": MessageLookupByLibrary.simpleMessage("Выбрать Язык"),
        "selectPaymentMethod":
            MessageLookupByLibrary.simpleMessage("Выберите способ оплаты"),
        "selectedOrder":
            MessageLookupByLibrary.simpleMessage("Выбранный ордер:"),
        "sell": MessageLookupByLibrary.simpleMessage("Продать"),
        "sellTestCoinWarning": MessageLookupByLibrary.simpleMessage(
            "Внимание, вы пытаетесь продать тестовые монеты БЕЗ РЕАЛЬНОЙ стоимости."),
        "send": MessageLookupByLibrary.simpleMessage("ОТПРАВИТЬ"),
        "setUpPassword":
            MessageLookupByLibrary.simpleMessage("УСТАНОВИТЬ ПАРОЛЬ"),
        "settingDialogSpan1": MessageLookupByLibrary.simpleMessage(
            "Вы уверены, что хотите удалить"),
        "settingDialogSpan2": MessageLookupByLibrary.simpleMessage("кошелек?"),
        "settingDialogSpan3": MessageLookupByLibrary.simpleMessage(
            "Если это так, убедитесь, что вы"),
        "settingDialogSpan4":
            MessageLookupByLibrary.simpleMessage("записали свой seed-ключ."),
        "settingDialogSpan5": MessageLookupByLibrary.simpleMessage(
            "Для того, чтобы восстановить свой кошелек в будущем."),
        "settingLanguageTitle": MessageLookupByLibrary.simpleMessage("Языки"),
        "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
        "share": MessageLookupByLibrary.simpleMessage("ПОДЕЛИТЬСЯ"),
        "shareAddress": m97,
        "shouldScanPastTransaction": m98,
        "showAddress": MessageLookupByLibrary.simpleMessage("Показать адрес"),
        "showDetails": MessageLookupByLibrary.simpleMessage("Показать детали"),
        "showMyOrders":
            MessageLookupByLibrary.simpleMessage("ПОКАЗАТЬ МОИ ОРДЕРЫ"),
        "showingOrders": m99,
        "signInWithPassword":
            MessageLookupByLibrary.simpleMessage("Войти с паролем"),
        "signInWithSeedPhrase":
            MessageLookupByLibrary.simpleMessage("Войти с помощью seed-ключа"),
        "simple": MessageLookupByLibrary.simpleMessage("Просто"),
        "simpleTradeActivate":
            MessageLookupByLibrary.simpleMessage("Активировать"),
        "simpleTradeBuyHint": m100,
        "simpleTradeBuyTitle": MessageLookupByLibrary.simpleMessage("Купить"),
        "simpleTradeClose": MessageLookupByLibrary.simpleMessage("Закрыть"),
        "simpleTradeMaxActiveCoins": m101,
        "simpleTradeNotActive": m102,
        "simpleTradeRecieve": MessageLookupByLibrary.simpleMessage("Получить"),
        "simpleTradeSellHint": m103,
        "simpleTradeSellTitle": MessageLookupByLibrary.simpleMessage("Продать"),
        "simpleTradeSend": MessageLookupByLibrary.simpleMessage("Отправить"),
        "simpleTradeShowLess": MessageLookupByLibrary.simpleMessage("Скрыть"),
        "simpleTradeShowMore":
            MessageLookupByLibrary.simpleMessage("Показать больше"),
        "simpleTradeUnableActivate": m104,
        "skip": MessageLookupByLibrary.simpleMessage("Пропустить"),
        "snackbarDismiss": MessageLookupByLibrary.simpleMessage("Убрать"),
        "soundCantPlayThatMsg": m105,
        "soundPlayedWhen": m106,
        "soundSettingsLink": MessageLookupByLibrary.simpleMessage("Звук"),
        "soundSettingsTitle":
            MessageLookupByLibrary.simpleMessage("Настройки звука"),
        "soundsDialogTitle": MessageLookupByLibrary.simpleMessage("Звуки"),
        "soundsDoNotShowAgain": MessageLookupByLibrary.simpleMessage(
            "Я понимаю, больше это не показывать"),
        "soundsExplanation": MessageLookupByLibrary.simpleMessage(
            "Вы будете слышать звуковые уведомления во время процесса обмена и при размещении активного ордера.\nДля успешной торговли, протокол Atomic swaps требует чтобы участники были онлайн и звуковые уведомления помогают достичь этого."),
        "soundsNote": MessageLookupByLibrary.simpleMessage(
            "Обратите внимание что вы можете установить свои собственные звуки в настройках приложения."),
        "spanishLanguage": MessageLookupByLibrary.simpleMessage("Испанский"),
        "startDate": MessageLookupByLibrary.simpleMessage("Дата начала"),
        "startSwap": MessageLookupByLibrary.simpleMessage("Начать обмен"),
        "step": MessageLookupByLibrary.simpleMessage("Шаг"),
        "success": MessageLookupByLibrary.simpleMessage("Успех!"),
        "support": MessageLookupByLibrary.simpleMessage("Поддержка"),
        "supportLinksDesc": m107,
        "swap": MessageLookupByLibrary.simpleMessage("обмен"),
        "swapCurrent": MessageLookupByLibrary.simpleMessage("Текущий"),
        "swapDetailTitle":
            MessageLookupByLibrary.simpleMessage("ПОДТВЕРДИТЕ ДЕТАЛИ ОБМЕНА"),
        "swapEstimated": MessageLookupByLibrary.simpleMessage("прибл"),
        "swapFailed": MessageLookupByLibrary.simpleMessage("Обмен не удался"),
        "swapGasActivate": m108,
        "swapGasAmount": m109,
        "swapGasAmountRequired": m110,
        "swapOngoing": MessageLookupByLibrary.simpleMessage("Обмен в процессе"),
        "swapProgress":
            MessageLookupByLibrary.simpleMessage("Детали прогресса"),
        "swapStarted": MessageLookupByLibrary.simpleMessage("Начато"),
        "swapSucceful": MessageLookupByLibrary.simpleMessage("Успешный обмен"),
        "swapTotal": MessageLookupByLibrary.simpleMessage("Всего"),
        "swapUUID": MessageLookupByLibrary.simpleMessage("UUID обмена"),
        "switchTheme": MessageLookupByLibrary.simpleMessage("Переключить тему"),
        "syncFromDate": MessageLookupByLibrary.simpleMessage(
            "Синхронизировать с указанной даты"),
        "syncFromSaplingActivation": MessageLookupByLibrary.simpleMessage(
            "Синхронизация с активацией саженца"),
        "syncNewTransactions": MessageLookupByLibrary.simpleMessage(
            "Синхронизировать новые транзакции"),
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
        "takerOrder": MessageLookupByLibrary.simpleMessage("Ордер Тейкера"),
        "timeOut": MessageLookupByLibrary.simpleMessage("Таймаут"),
        "titleCreatePassword":
            MessageLookupByLibrary.simpleMessage("СОЗДАТЬ ПАРОЛЬ"),
        "titleCurrentAsk": MessageLookupByLibrary.simpleMessage("Ордер выбран"),
        "to": MessageLookupByLibrary.simpleMessage("В"),
        "toAddress": MessageLookupByLibrary.simpleMessage("На адрес:"),
        "tooManyAssetsEnabledSpan1":
            MessageLookupByLibrary.simpleMessage("У вас имеются"),
        "tooManyAssetsEnabledSpan2": MessageLookupByLibrary.simpleMessage(
            "включенные активы. Максимальный предел включенных активов"),
        "tooManyAssetsEnabledSpan3": MessageLookupByLibrary.simpleMessage(
            ". Пожалуйста, отключите некоторые из них перед добавлением новых."),
        "tooManyAssetsEnabledTitle": MessageLookupByLibrary.simpleMessage(
            "Подключено слишком много активов"),
        "totalFees": MessageLookupByLibrary.simpleMessage("Общие комиссии:"),
        "trade": MessageLookupByLibrary.simpleMessage("СДЕЛКА"),
        "tradeCompleted":
            MessageLookupByLibrary.simpleMessage("Обмен завершен!"),
        "tradeDetail": MessageLookupByLibrary.simpleMessage("ДЕТАЛИ СДЕЛКИ"),
        "tradePreimageError": MessageLookupByLibrary.simpleMessage(
            "Ошибка при расчете торговой комиссии"),
        "tradingFee":
            MessageLookupByLibrary.simpleMessage("торговая комиссия:"),
        "tradingMode": MessageLookupByLibrary.simpleMessage("Режим Торговли"),
        "transactionAddress":
            MessageLookupByLibrary.simpleMessage("Адрес транзакции"),
        "transactionHidden":
            MessageLookupByLibrary.simpleMessage("Транзакция скрыта"),
        "transactionHiddenPhishing": MessageLookupByLibrary.simpleMessage(
            "Эта транзакция была скрыта из-за возможной попытки фишинга."),
        "tryRestarting": MessageLookupByLibrary.simpleMessage(
            "даже если после этого некоторые монеты все еще не активированы, попробуйте перезапустить приложение."),
        "turkishLanguage": MessageLookupByLibrary.simpleMessage("Турецкий"),
        "txBlock": MessageLookupByLibrary.simpleMessage("Блок"),
        "txConfirmations":
            MessageLookupByLibrary.simpleMessage("Подтверждения"),
        "txConfirmed": MessageLookupByLibrary.simpleMessage("ПОДТВЕРЖДЕНА"),
        "txFee": MessageLookupByLibrary.simpleMessage("Комиссия"),
        "txFeeTitle": MessageLookupByLibrary.simpleMessage("комиссия сети:"),
        "txHash": MessageLookupByLibrary.simpleMessage("ID транзакции"),
        "txLimitExceeded": MessageLookupByLibrary.simpleMessage(
            "Слишком много запросов.\nПревышен лимит запросов истории транзакций.\nПовторите попытку позже."),
        "txNotConfirmed":
            MessageLookupByLibrary.simpleMessage("НЕПОДТВЕРЖДЕНА"),
        "txleft": m112,
        "ukrainianLanguage": MessageLookupByLibrary.simpleMessage("Украинский"),
        "unlock": MessageLookupByLibrary.simpleMessage("разблокировать"),
        "unlockFunds":
            MessageLookupByLibrary.simpleMessage("Разблокировать средства"),
        "unlockSuccess": m113,
        "unspendable":
            MessageLookupByLibrary.simpleMessage("неизрасходованный"),
        "updatesAvailable":
            MessageLookupByLibrary.simpleMessage("Доступна новая версия"),
        "updatesChecking":
            MessageLookupByLibrary.simpleMessage("Проверка обновлений..."),
        "updatesCurrentVersion": m114,
        "updatesNotifAvailable": MessageLookupByLibrary.simpleMessage(
            "Доступна новая версия. Пожалуйста, обновитесь."),
        "updatesNotifAvailableVersion": m115,
        "updatesNotifTitle":
            MessageLookupByLibrary.simpleMessage("Доступно обновление"),
        "updatesSkip": MessageLookupByLibrary.simpleMessage("Пропустить"),
        "updatesTitle": m116,
        "updatesUpToDate": MessageLookupByLibrary.simpleMessage(
            "Установлена последняя версия"),
        "updatesUpdate": MessageLookupByLibrary.simpleMessage("Обновление"),
        "uriInsufficientBalanceSpan1": MessageLookupByLibrary.simpleMessage(
            "Недостаточно баланса для отсканированного"),
        "uriInsufficientBalanceSpan2":
            MessageLookupByLibrary.simpleMessage("платежного запроса."),
        "uriInsufficientBalanceTitle":
            MessageLookupByLibrary.simpleMessage("Недостаточный баланс"),
        "value": MessageLookupByLibrary.simpleMessage("Стоимость:"),
        "version": MessageLookupByLibrary.simpleMessage("версия"),
        "viewInExplorerButton":
            MessageLookupByLibrary.simpleMessage("Обозреватель"),
        "viewSeedAndKeys":
            MessageLookupByLibrary.simpleMessage("Seed & Приватные ключи"),
        "volumes": MessageLookupByLibrary.simpleMessage("Объемы"),
        "walletInUse": MessageLookupByLibrary.simpleMessage(
            "Имя кошелька уже используется"),
        "walletMaxChar": MessageLookupByLibrary.simpleMessage(
            "Имя кошелька не должно превышать 40 символов"),
        "walletOnly": MessageLookupByLibrary.simpleMessage("Только кошелек"),
        "warning": MessageLookupByLibrary.simpleMessage("Предупреждение!"),
        "warningOkBtn": MessageLookupByLibrary.simpleMessage("OK"),
        "warningShareLogs": MessageLookupByLibrary.simpleMessage(
            "Предупреждение - в особых случаях логи могут содержать конфиденциальную информацию, которую можно использовать для доступа к монетам из незавершенных свопов!"),
        "weFailedTo": m117,
        "weFailedToActivate": m118,
        "welcomeInfo": m119,
        "welcomeLetSetUp":
            MessageLookupByLibrary.simpleMessage("ДАВАЙТЕ ВСЕ НАСТРОИМ!"),
        "welcomeTitle":
            MessageLookupByLibrary.simpleMessage("Добро пожаловать"),
        "welcomeWallet": MessageLookupByLibrary.simpleMessage("кошелек"),
        "willBeRedirected": MessageLookupByLibrary.simpleMessage(
            "По завершении вы будете перенаправлены на страницу портфолио."),
        "willTakeTime": MessageLookupByLibrary.simpleMessage(
            "Это займет некоторое время, и приложение должно оставаться на переднем плане.\nЗакрытие приложения во время активации может привести к проблемам."),
        "withdraw": MessageLookupByLibrary.simpleMessage("Вывести"),
        "withdrawCameraAccessText": m120,
        "withdrawCameraAccessTitle":
            MessageLookupByLibrary.simpleMessage("Доступ запрещен"),
        "withdrawConfirm":
            MessageLookupByLibrary.simpleMessage("Подтвердите вывод"),
        "withdrawConfirmError": MessageLookupByLibrary.simpleMessage(
            "Что-то пошло не так. Попробуйте позже."),
        "withdrawValue": m121,
        "wrongCoinSpan1": MessageLookupByLibrary.simpleMessage(
            "Вы пытаетесь сканировать QR code для оплаты"),
        "wrongCoinSpan2":
            MessageLookupByLibrary.simpleMessage("но вы сейчас находитесь"),
        "wrongCoinSpan3":
            MessageLookupByLibrary.simpleMessage("на экране вывода"),
        "wrongCoinTitle":
            MessageLookupByLibrary.simpleMessage("Некорректная монета"),
        "wrongPassword": MessageLookupByLibrary.simpleMessage(
            "Пароли не совпадают. Пожалуйста, попробуйте еще раз."),
        "yes": MessageLookupByLibrary.simpleMessage("Да"),
        "you have a fresh order that is trying to match with an existing order":
            MessageLookupByLibrary.simpleMessage(
                "есть новый ордер, который совпадает с вашим размещенным ордером"),
        "you have an active swap in progress":
            MessageLookupByLibrary.simpleMessage(
                "у вас уже есть активный своп в процессе"),
        "you have an order that new orders can match with":
            MessageLookupByLibrary.simpleMessage(
                "у вас есть ордер, которому могут соответствовать новые ордеры"),
        "youAreSending":
            MessageLookupByLibrary.simpleMessage("Вы отправляете:"),
        "youWillReceiveClaim": m122,
        "youWillReceived": MessageLookupByLibrary.simpleMessage("Вы получите:"),
        "yourWallet": MessageLookupByLibrary.simpleMessage("ваш кошелек")
      };
}
