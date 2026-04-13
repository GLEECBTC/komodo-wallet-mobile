// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static m0(protocolName) => "¿Activar monedas ${protocolName}?";

  static m1(coinName) => "Activando ${coinName}";

  static m2(coinName) => "Activación de ${coinName}";

  static m3(protocolName) => "${protocolName} Activación en curso";

  static m4(name) => "¡Activado ${name} con éxito!";

  static m5(title) => "Solo mostrar contactos con direcciones ${title}";

  static m6(abbr) =>
      "No puede enviar fondos a la dirección ${abbr} porque ${abbr} no está activado. Por favor, vaya a la cartera.";

  static m7(appName) =>
      "¡No! ${appName} no tiene custodia. Nunca almacenamos datos confidenciales, incluidas sus claves privadas, frases iniciales o PIN. Estos datos solo se almacenan en el dispositivo del usuario y nunca lo abandonan. Usted tiene el control total de sus activos.";

  static m8(appName) =>
      "${appName} está disponible para dispositivos móviles en Android y iPhone, y para computadoras de escritorio en <a href=\"https://gleec.com/\">sistemas operativos Windows, Mac y Linux</a>.";

  static m9(appName) =>
      "Por lo general, otros DEX solo le permiten intercambiar monedas digitales que se basan en una sola red blockchain y solo permiten realizar un solo pedido con los mismos fondos.\n\n${appName} le permite intercambiar de forma nativa en blockchains diferentes. También puede realizar varios pedidos con los mismos fondos. Por ejemplo, puede vender 0.1 BTC por KMD, QTUM o VRSC: el primer pedido que se ejecuta automáticamente cancela todos los demás pedidos.";

  static m10(appName) =>
      "Varios factores determinan el tiempo de procesamiento de cada intercambio. El tiempo de procesar una transacción depende de cada red (Bitcoin suele ser la más lenta). Además, el usuario puede personalizar las preferencias de seguridad. Por ejemplo, puede pedirle a ${appName} que considere una transacción KMD procesada despues de solo 3 confirmaciones, lo que hace que el tiempo de intercambio sea más corto en comparación con la espera de una <a href=\"https://gleec.com/\">notarization</a>.";

  static m11(appName) =>
      "Hay dos categorías de tarifas a tener en cuenta al intercambiar en ${appName}.\n\n1. ${appName} cobra aproximadamente un 0,13 % (1/777 del volumen de la transacción, pero no menos de 0,0001) como tarifa de transacción para las órdenes del comprador, y las órdenes del vendedor no tienen tarifas.\n\n2. Tanto los vendedores como los compradores deberán pagar tarifas de red normales a las blockchains involucradas al realizar transacciones de intercambio atómico.\n\nLas tarifas de red pueden variar mucho según el par de monedas seleccionadas.";

  static m12(name, link, appName, appCompanyShort) =>
      "¡Sí! ${appName} ofrece soporte a través de <a href=\"${link}\">${appCompanyShort} ${name}</a>. ¡El equipo y la comunidad siempre están dispuestos a ayudar!";

  static m13(appName) =>
      "¡No! ${appName} es completamente descentralizado. No es posible limitar el acceso de los usuarios por parte de ningún tercero.";

  static m14(appName, appCompanyShort) =>
      "${appName} está desarrollado por el equipo de ${appCompanyShort}. ${appCompanyShort} es uno de los proyectos de blockchain más consolidados que trabaja en soluciones innovadoras como intercambios decentralizados, seguridad de blockchains y una arquitectura multicadena interoperable.";

  static m15(appName) =>
      "¡Absolutamente! Puede leer nuestra <a href=\"https://gleec.com/\">documentación para desarrolladores</a> para obtener más detalles o contactarnos con sus consultas sobre asociaciones. ¿Tiene una pregunta técnica específica? ¡La comunidad de desarrolladores de ${appName} siempre está lista para ayudar!";

  static m16(coinName1, coinName2) => "basado en ${coinName1}/${coinName2}";

  static m17(batteryLevelCritical) =>
      "La carga de su batería es crítica (${batteryLevelCritical}%) para realizar un intercambio de manera segura. Póngalo a cargar y vuelva a intentarlo.";

  static m18(batteryLevelLow) =>
      "La carga de la batería es inferior al ${batteryLevelLow}%. Considere la posibilidad de cargar el teléfono.";

  static m19(seconde) => "Ordermatch en curso, ¡espere ${seconde} segundos!";

  static m20(index) => "Introduzca la palabra ${index} ";

  static m21(index) => "¿Cuál es la palabra ${index} en su frase inicial?";

  static m22(coin) => "activación de ${coin} cancelada";

  static m24(protocolName) => "Las monedas ${protocolName} están activadas";

  static m25(protocolName) => "${protocolName} monedas activadas con éxito";

  static m26(protocolName) => "Las monedas ${protocolName} no están activadas";

  static m27(name) => "¿Está seguro de que desea eliminar el contacto ${name}?";

  static m28(iUnderstand) =>
      "Las frases semilla personalizadas pueden ser menos seguras y más fáciles de descifrar que una frase semilla o clave privada (WIF) compatible con BIP39 generada. Para confirmar que comprende el riesgo y sabe lo que está haciendo, escriba \"${iUnderstand}\" en el cuadro a continuación.";

  static m29(coinName) => "recibir tarifa de transacción de ${coinName}";

  static m30(coinName) => "enviar tarifa de transacción de ${coinName}";

  static m31(abbr) => "Introduzca la dirección ${abbr} ";

  static m33(gas) => "No hay suficiente gas: usa al menos ${gas} Gwei";

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
      "You are not allowed to decompile, decode, disassemble, rent, lease, loan, sell, sublicense, or create derivative works from the ${appName} mobile application or the user content. Nor are You allowed to use any network monitoring or detection software to determine the software architecture, or extract information about usage or individuals’ or users’ identities.\nYou are not allowed to copy, modify, reproduce, republish, distribute, display, or transmit for commercial, non-profit or public purposes all or any portion of the application or the user content without our prior written authorization.";

  static m46(appName, appCompanyLong) =>
      "If you create an account in the Mobile Application, you are responsible for maintaining the security of your account and you are fully responsible for all activities that occur under the account and any other actions taken in connection with it. We will not be liable for any acts or omissions by you, including any damages of any kind incurred as a result of such acts or omissions. \n\n${appName} mobile is a non-custodial wallet implementation and thus ${appCompanyLong} can not access nor restore your account in case of (data) loss.";

  static m47(appName) =>
      "End-User License Agreement (EULA) of ${appName} mobile:";

  static m48(coinAbbr) => "No se pudo cancelar la activación de ${coinAbbr}";

  static m49(coin) => "Enviando solicitud a la llave ${coin}...";

  static m50(appCompanyShort) => "${appCompanyShort} noticias";

  static m51(value) => "Las tarifas deben ser de hasta ${value}";

  static m52(coin) => " tarifa${coin} ";

  static m53(coin) => "Activa ${coin}.";

  static m55(coinName) =>
      "Configuración de protección de txs entrantes de ${coinName}";

  static m56(abbr) =>
      " El saldo de ${abbr} no es suficiente para pagar la tarifa de negociación";

  static m58(coinAbbr) => "${coinAbbr} no está disponible :(";

  static m59(coinName) =>
      "❗¡Precaución! ¡El mercado de ${coinName} tiene un volumen de negociación de menos de \$ 10k las 24 horas!";

  static m61(coinName, number) =>
      "La cantidad mínima para vender es ${number} ${coinName}";

  static m62(coinName, number) =>
      "La cantidad mínima para comprar es ${number}${coinName}";

  static m63(buyCoin, buyAmount, sellCoin, sellAmount) =>
      "El monto mínimo del pedido es ${buyAmount}${buyCoin}\n(${sellAmount}${sellCoin})";

  static m64(coinName, number) =>
      "La cantidad mínima para vender es ${number}${coinName}";

  static m65(minValue, coin) => "Debe ser mayor que ${minValue} ${coin}";

  static m66(appName) =>
      "Tenga en cuenta que ahora está utilizando datos móviles y la participación en la red P2P de ${appName} consume tráfico de Internet. Es mejor usar una red WiFi si su plan de datos móviles es costoso.";

  static m67(coin) => "Active ${coin} y añada saldo primero";

  static m68(number) => "Crear ${number} pedido(s):";

  static m69(coin) => " El saldo de${coin} es demasiado bajo";

  static m70(coin, fee) =>
      "No hay suficientes ${coin} para pagar las tarifas. El saldo MÍN es ${fee} ${coin}";

  static m71(coinName) => "Ingrese la cantidad de ${coinName}.";

  static m72(coin) => "¡No hay suficiente ${coin} para la transacción!";

  static m73(sell, buy) =>
      " El intercambio de${sell}/${buy} se completó con éxito";

  static m74(sell, buy) => "${sell}/${buy} intercambio fallido";

  static m75(sell, buy) => "${sell}/${buy} intercambio iniciado";

  static m76(sell, buy) => "${sell}/${buy} intercambio se agotó";

  static m77(coin) => "¡Ha recibido una transacción de ${coin}!";

  static m78(assets) => "${assets} activos";

  static m79(coin) => "Todos los pedidos de ${coin} serán cancelados.";

  static m80(delta) => "Expediente: CEX +${delta}%";

  static m81(delta) => "Caro: CEX ${delta}%";

  static m82(fill) => "${fill}% llenado";

  static m83(coin) => "Cantidad (${coin})";

  static m84(coin) => "Precio (${coin})";

  static m85(coin) => "Total (${coin})";

  static m86(abbr) => "${abbr} no está activo. Activa e inténtalo de nuevo..";

  static m87(appName) => "¿En qué dispositivos puedo usar ${appName}?";

  static m88(appName) =>
      "¿En qué se diferencia el comercio en ${appName} del comercio en otros DEX?";

  static m89(appName) => "¿Cómo se calculan las tarifas de ${appName}?";

  static m90(appName) => "¿Quién está detrás de ${appName}?";

  static m91(appName) =>
      "¿Es posible desarrollar mi propio intercambio con ${appName}?";

  static m92(amount) => "¡Éxito! ${amount} KMD recibido.";

  static m93(dd) => "${dd} dias(s)";

  static m94(hh, minutes) => "${hh}h ${minutes}m";

  static m95(mm) => "${mm}min";

  static m96(amount) => "Haga clic para ver ${amount} pedidos";

  static m97(coinName, address) => "Mi ${coinName} dirección:\n${address}";

  static m99(count, maxCount) => "Mostrando ${count} de ${maxCount} pedidos.";

  static m100(coin) => "Ingrese la cantidad de ${coin} para comprar";

  static m101(maxCoins) =>
      "El número máximo de monedas activas es ${maxCoins}. Por favor, desactive algunos.";

  static m102(coin) => "${coin} no está activo!";

  static m103(coin) => "Ingrese la cantidad de ${coin} para vender";

  static m104(coin) => "No se puede activar ${coin}";

  static m105(description) =>
      "Elija un archivo mp3 o wav, por favor. Lo reproduciremos cuando ${description}.";

  static m106(description) => "Jugado cuando ${description}";

  static m107(appName) =>
      "Si tiene alguna pregunta o cree que ha encontrado un problema técnico con la aplicación ${appName}, puede informar y obtener asistencia de nuestro equipo.";

  static m108(coin) => "Activa ${coin} y recarga el saldo primero";

  static m109(coin) =>
      "El saldo de ${coin} no es suficiente para pagar las tarifas de transacción.";

  static m110(coin, amount) =>
      " El saldo de${coin} no es suficiente para pagar las tarifas de transacción. ${coin} ${amount} obligatorio.";

  static m112(left) => "Transacciones restantes: ${left}";

  static m113(amnt, hash) =>
      "Desbloqueó con éxito ${amnt} fondos - TX: ${hash}";

  static m114(version) => "Estás usando la versión ${version}";

  static m115(version) => "Versión ${version} disponible. Por favor actualice.";

  static m116(appName) => "${appName} actualizar";

  static m117(coinAbbr) => "No pudimos activar ${coinAbbr}";

  static m118(coinAbbr) =>
      "No pudimos activar ${coinAbbr}.\nReinicie la aplicación para volver a intentarlo.";

  static m119(appName) =>
      "${appName} móvil es una billetera multimoneda de próxima generación con funcionalidad DEX nativa de tercera generación y más.";

  static m120(appName) =>
      "Previamente le has negado a ${appName} el acceso a la cámara.\nCambia manualmente el permiso de la cámara en la configuración de tu teléfono para continuar con el escaneo del código QR.";

  static m121(amount, coinName) => "RETIRAR ${amount} ${coinName}";

  static m122(amount, coin) => "Recibirás ${amount} ${coin}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "Active": MessageLookupByLibrary.simpleMessage("Activo"),
        "Applause": MessageLookupByLibrary.simpleMessage("Aplausos"),
        "Can\'t play that":
            MessageLookupByLibrary.simpleMessage("no puedo escuchar eso"),
        "Failed": MessageLookupByLibrary.simpleMessage("Fallido"),
        "Maker": MessageLookupByLibrary.simpleMessage("Vendedor"),
        "Optional": MessageLookupByLibrary.simpleMessage("Opcional"),
        "Play at full volume":
            MessageLookupByLibrary.simpleMessage("Juega a todo volumen"),
        "Sound": MessageLookupByLibrary.simpleMessage("Sonido"),
        "Taker": MessageLookupByLibrary.simpleMessage("Comprador"),
        "a swap fails":
            MessageLookupByLibrary.simpleMessage("un intercambio falla"),
        "a swap runs to completion": MessageLookupByLibrary.simpleMessage(
            "un intercambio se ejecuta hasta su finalización"),
        "accepteula": MessageLookupByLibrary.simpleMessage("Aceptar EULA"),
        "accepttac": MessageLookupByLibrary.simpleMessage(
            "Aceptar TERMINOS y CONDICIONES"),
        "activateAccessBiometric": MessageLookupByLibrary.simpleMessage(
            "Activar protección biométrica"),
        "activateAccessPin": MessageLookupByLibrary.simpleMessage(
            "Activar la protección con PIN"),
        "activateCoins": m0,
        "activating": m1,
        "activation": m2,
        "activationCancelled": MessageLookupByLibrary.simpleMessage(
            "Activación de monedas cancelada"),
        "activationInProgress": m3,
        "addCoin": MessageLookupByLibrary.simpleMessage("Activar moneda"),
        "addingCoinSuccess": m4,
        "addressAdd": MessageLookupByLibrary.simpleMessage("Añadir Direccion"),
        "addressBook": MessageLookupByLibrary.simpleMessage("Directorio"),
        "addressBookEmpty": MessageLookupByLibrary.simpleMessage(
            "La libreta de direcciones está vacía"),
        "addressBookFilter": m5,
        "addressBookTitle": MessageLookupByLibrary.simpleMessage("Directorio"),
        "addressCoinInactive": m6,
        "addressNotFound":
            MessageLookupByLibrary.simpleMessage("Nada Encontrado"),
        "addressSelectCoin":
            MessageLookupByLibrary.simpleMessage("Seleccionar Moneda"),
        "addressSend": MessageLookupByLibrary.simpleMessage(
            "Dirección de los destinatarios"),
        "advanced": MessageLookupByLibrary.simpleMessage("Avanzado"),
        "all": MessageLookupByLibrary.simpleMessage("TODOS"),
        "allPastTransactions": MessageLookupByLibrary.simpleMessage(
            "Su billetera mostrará cualquier transacción pasada. Esto requerirá mucho almacenamiento y tiempo, ya que todos los bloques se descargarán y escanearán."),
        "allowCustomSeed": MessageLookupByLibrary.simpleMessage(
            "Permitir semilla personalizada"),
        "alreadyExists": MessageLookupByLibrary.simpleMessage("Ya existe"),
        "amount": MessageLookupByLibrary.simpleMessage("Cantidad"),
        "amountToSell":
            MessageLookupByLibrary.simpleMessage("Cantidad a Vender"),
        "answer_1": m7,
        "answer_10": m8,
        "answer_2": m9,
        "answer_3": m10,
        "answer_4": MessageLookupByLibrary.simpleMessage(
            "Si. Debe permanecer conectado al Internet y tener su aplicación ejecutándose para completar con éxito cada intercambio (las interrupciones muy breves en la conectividad generalmente no causan problemas). De lo contrario, existe el riesgo de cancelación de la operación y el riesgo de pérdida de fondos si es un comprador. El protocolo de intercambio atómico requiere que ambos participantes permanezcan en línea y monitoreen los blockchains involucrados para que el proceso permanezca atómico."),
        "answer_5": m11,
        "answer_6": m12,
        "answer_7": m13,
        "answer_8": m14,
        "answer_9": m15,
        "areYouSure": MessageLookupByLibrary.simpleMessage("ESTAS SEGURO?"),
        "authenticate": MessageLookupByLibrary.simpleMessage("autenticar"),
        "automaticRedirected": MessageLookupByLibrary.simpleMessage(
            "Se le redirigirá automáticamente a la página de cartera cuando se complete el proceso de reintento de activación."),
        "availableVolume":
            MessageLookupByLibrary.simpleMessage("volumen máximo"),
        "back": MessageLookupByLibrary.simpleMessage("back"),
        "backupTitle": MessageLookupByLibrary.simpleMessage("Respaldo"),
        "basedOnCoinRatio": m16,
        "batteryCriticalError": m17,
        "batteryLowWarning": m18,
        "batterySavingWarning": MessageLookupByLibrary.simpleMessage(
            "Su teléfono está en modo de ahorro de batería. Deshabilite este modo o NO ponga la aplicación en segundo plano, de lo contrario, el sistema operativo podría eliminar la aplicación y fallar el intercambio."),
        "bestAvailableRate":
            MessageLookupByLibrary.simpleMessage("Tipo de cambio"),
        "builtKomodo":
            MessageLookupByLibrary.simpleMessage("Construido en Gleec"),
        "builtOnKmd":
            MessageLookupByLibrary.simpleMessage("Construido en Gleec"),
        "buy": MessageLookupByLibrary.simpleMessage("Comprar"),
        "buyOrderType": MessageLookupByLibrary.simpleMessage(
            "Convertir a Vendedor si no coincide"),
        "buySuccessWaiting": MessageLookupByLibrary.simpleMessage(
            "Intercambio emitido, por favor espere!"),
        "buySuccessWaitingError": m19,
        "buyTestCoinWarning": MessageLookupByLibrary.simpleMessage(
            "¡Advertencia, estás dispuesto a comprar monedas de prueba SIN valor real!"),
        "camoPinBioProtectionConflict": MessageLookupByLibrary.simpleMessage(
            "El PIN de camuflaje y la bioprotección no se pueden habilitar al mismo tiempo."),
        "camoPinBioProtectionConflictTitle":
            MessageLookupByLibrary.simpleMessage(
                "Conflicto entre PIN de camuflaje y bioprotección."),
        "camoPinChange":
            MessageLookupByLibrary.simpleMessage("Cambiar PIN de camuflaje"),
        "camoPinCreate":
            MessageLookupByLibrary.simpleMessage("Crear PIN de camuflaje"),
        "camoPinDesc": MessageLookupByLibrary.simpleMessage(
            "Si desbloquea la aplicación con el PIN de camuflaje, se mostrará un saldo BAJO falso y la opción de configuración del PIN de camuflaje NO estará visible en la configuración"),
        "camoPinInvalid":
            MessageLookupByLibrary.simpleMessage("PIN de camuflaje no válido"),
        "camoPinLink": MessageLookupByLibrary.simpleMessage("Camuflajear PIN"),
        "camoPinNotFound": MessageLookupByLibrary.simpleMessage(
            "PIN de camuflaje no encontrado"),
        "camoPinOff": MessageLookupByLibrary.simpleMessage("Desactivado"),
        "camoPinOn": MessageLookupByLibrary.simpleMessage("Activado"),
        "camoPinSaved":
            MessageLookupByLibrary.simpleMessage("PIN de camuflaje guardado"),
        "camoPinTitle":
            MessageLookupByLibrary.simpleMessage("Camuflajear el PIN"),
        "camoSetupSubtitle": MessageLookupByLibrary.simpleMessage(
            "Ingrese el nuevo PIN de camuflaje"),
        "camoSetupTitle": MessageLookupByLibrary.simpleMessage(
            "Configuración de PIN de camuflaje"),
        "camouflageSetup": MessageLookupByLibrary.simpleMessage(
            "Configuración de PIN de camuflaje"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "cancelActivation":
            MessageLookupByLibrary.simpleMessage("Cancelar activación"),
        "cancelActivationQuestion": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro de que deseas cancelar la activación?"),
        "cancelButton": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "cancelOrder": MessageLookupByLibrary.simpleMessage("Cancelar orden"),
        "candleChartError": MessageLookupByLibrary.simpleMessage(
            "Algo salió mal. Vuelve a intentarlo más tarde."),
        "cantDeleteDefaultCoinOk": MessageLookupByLibrary.simpleMessage("Ok"),
        "cantDeleteDefaultCoinSpan": MessageLookupByLibrary.simpleMessage(
            "es una moneda predeterminada. Las monedas predeterminadas no se pueden desactivar."),
        "cantDeleteDefaultCoinTitle":
            MessageLookupByLibrary.simpleMessage("No se puede deshabilitar"),
        "cex": MessageLookupByLibrary.simpleMessage("CEX"),
        "cexChangeRate":
            MessageLookupByLibrary.simpleMessage("Tasa de Cambio CEX"),
        "cexData": MessageLookupByLibrary.simpleMessage("data de CEX"),
        "cexDataDesc": MessageLookupByLibrary.simpleMessage(
            "Los datos de mercados (precios, gráficos, etc.) marcados con este ícono provienen de fuentes de terceros (<a href=\"https://www.coingecko.com/\">coingecko.com</a>, <a href =\"https://openrates.io/\">openrates.io</a>)."),
        "cexRate": MessageLookupByLibrary.simpleMessage("Tasa CEX"),
        "changePin": MessageLookupByLibrary.simpleMessage("Cambiar código PIN"),
        "checkForUpdates":
            MessageLookupByLibrary.simpleMessage("Buscar actualizaciones"),
        "checkOut": MessageLookupByLibrary.simpleMessage("Verificar"),
        "checkSeedPhrase":
            MessageLookupByLibrary.simpleMessage("Comprobar la frase inicial"),
        "checkSeedPhraseButton1":
            MessageLookupByLibrary.simpleMessage("SEGUIR"),
        "checkSeedPhraseButton2":
            MessageLookupByLibrary.simpleMessage("VOLVER Y VERIFICAR DE NUEVO"),
        "checkSeedPhraseHint": m20,
        "checkSeedPhraseInfo": MessageLookupByLibrary.simpleMessage(
            "Tu frase semilla es importante, por eso nos gusta asegurarnos de que sea correcta. Le haremos tres preguntas diferentes sobre su frase semilla para asegurarnos de que podrá restaurar fácilmente su billetera cuando lo desee."),
        "checkSeedPhraseSubtile": m21,
        "checkSeedPhraseTitle": MessageLookupByLibrary.simpleMessage(
            "VAMOS A VERIFICAR DOS VECES TU FRASE SEMILLA"),
        "chineseLanguage": MessageLookupByLibrary.simpleMessage("Chino"),
        "claim": MessageLookupByLibrary.simpleMessage("afirmar"),
        "claimTitle": MessageLookupByLibrary.simpleMessage(
            "¿Reclamar su recompensa KMD?"),
        "clickToSee": MessageLookupByLibrary.simpleMessage("Clic para ver"),
        "clipboard":
            MessageLookupByLibrary.simpleMessage("Copiado al portapapeles"),
        "clipboardCopy":
            MessageLookupByLibrary.simpleMessage("Copiar al portapapeles"),
        "close": MessageLookupByLibrary.simpleMessage("Cerrar"),
        "closeMessage":
            MessageLookupByLibrary.simpleMessage("Cerrar mensaje de error"),
        "closePreview": MessageLookupByLibrary.simpleMessage("Cerrar prevista"),
        "code": MessageLookupByLibrary.simpleMessage("Código:"),
        "cofirmCancelActivation": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro de que deseas cancelar la activación?"),
        "coinActivationCancelled": m22,
        "coinSelectClear": MessageLookupByLibrary.simpleMessage("Remover"),
        "coinSelectNotFound":
            MessageLookupByLibrary.simpleMessage("No hay monedas activas"),
        "coinSelectTitle":
            MessageLookupByLibrary.simpleMessage("Seleccionar moneda"),
        "coinsActivatedLimitReached": MessageLookupByLibrary.simpleMessage(
            "Ha seleccionado el número máximo de activos"),
        "coinsAreActivated": m24,
        "coinsAreActivatedSuccessfully": m25,
        "coinsAreNotActivated": m26,
        "comingSoon": MessageLookupByLibrary.simpleMessage("Próximamente..."),
        "commingsoon": MessageLookupByLibrary.simpleMessage(
            "Detalles de TX próximamente!"),
        "commingsoonGeneral":
            MessageLookupByLibrary.simpleMessage("¡Detalles muy pronto!"),
        "commissionFee":
            MessageLookupByLibrary.simpleMessage("cuota de comisión"),
        "comparedTo24hrCex": MessageLookupByLibrary.simpleMessage(
            "en comparación con el promedio Precio CEX 24h"),
        "comparedToCex":
            MessageLookupByLibrary.simpleMessage("comparable a CEX"),
        "configureWallet": MessageLookupByLibrary.simpleMessage(
            "Configurando su billetera, por favor espere..."),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirmar"),
        "confirmCamouflageSetup":
            MessageLookupByLibrary.simpleMessage("Confirmar PIN de camuflaje"),
        "confirmCancel": MessageLookupByLibrary.simpleMessage(
            "¿Está seguro de que desea cancelar el pedido?"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirmar contraseña"),
        "confirmPin":
            MessageLookupByLibrary.simpleMessage("Confirmar código PIN"),
        "confirmSeed":
            MessageLookupByLibrary.simpleMessage("Confirmar frase semilla"),
        "confirmeula": MessageLookupByLibrary.simpleMessage(
            "Al hacer clic en los botones a continuación, confirma haber leído el \'EULA\' y los \'Términos y condiciones\' y acepta estos"),
        "connecting": MessageLookupByLibrary.simpleMessage("Conectando..."),
        "contactCancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "contactDelete":
            MessageLookupByLibrary.simpleMessage("Borrar Contacto"),
        "contactDeleteBtn": MessageLookupByLibrary.simpleMessage("Borrar"),
        "contactDeleteWarning": m27,
        "contactDiscardBtn": MessageLookupByLibrary.simpleMessage("Descartar"),
        "contactEdit": MessageLookupByLibrary.simpleMessage("Editar"),
        "contactExit": MessageLookupByLibrary.simpleMessage("Salir"),
        "contactExitWarning":
            MessageLookupByLibrary.simpleMessage("Descartar tus cambios?"),
        "contactNotFound":
            MessageLookupByLibrary.simpleMessage("No se encontraron contactos"),
        "contactSave": MessageLookupByLibrary.simpleMessage("Guardar"),
        "contactTitle":
            MessageLookupByLibrary.simpleMessage("Detalles de contacto"),
        "contactTitleName": MessageLookupByLibrary.simpleMessage("Nombre"),
        "contract": MessageLookupByLibrary.simpleMessage("Contrato"),
        "convert": MessageLookupByLibrary.simpleMessage("Convertir"),
        "couldNotLaunchUrl":
            MessageLookupByLibrary.simpleMessage("No se pudo iniciar la URL"),
        "couldntImportError":
            MessageLookupByLibrary.simpleMessage("No se pudo importar:"),
        "create": MessageLookupByLibrary.simpleMessage("intercambiar"),
        "createAWallet":
            MessageLookupByLibrary.simpleMessage("CREAR UNA CARTERA"),
        "createContact": MessageLookupByLibrary.simpleMessage("Crear Contacto"),
        "createPin": MessageLookupByLibrary.simpleMessage("Crear numero PIN"),
        "currency": MessageLookupByLibrary.simpleMessage("Moneda"),
        "currencyDialogTitle": MessageLookupByLibrary.simpleMessage("Moneda"),
        "currentValue": MessageLookupByLibrary.simpleMessage("Valor actual:"),
        "customFee": MessageLookupByLibrary.simpleMessage(
            "Costo de Transacción Personalizado"),
        "customFeeWarning": MessageLookupByLibrary.simpleMessage(
            "¡Solo use tarifas personalizadas si sabe lo que está haciendo!"),
        "customSeedWarning": m28,
        "dPow": MessageLookupByLibrary.simpleMessage("Seguridad de Gleec dPoW"),
        "date": MessageLookupByLibrary.simpleMessage("Fecha"),
        "decryptingWallet":
            MessageLookupByLibrary.simpleMessage("Billetera de descifrado"),
        "delete": MessageLookupByLibrary.simpleMessage("Borrar"),
        "deleteConfirm":
            MessageLookupByLibrary.simpleMessage("Confirmar desactivación"),
        "deleteSpan1":
            MessageLookupByLibrary.simpleMessage("¿Quieres eliminar"),
        "deleteSpan2": MessageLookupByLibrary.simpleMessage(
            "de tu cartera? Todos los pedidos no emparejados serán cancelados."),
        "deleteSpan3":
            MessageLookupByLibrary.simpleMessage(" también se desactivará"),
        "deleteWallet":
            MessageLookupByLibrary.simpleMessage("Eliminar Billetera"),
        "deletingWallet":
            MessageLookupByLibrary.simpleMessage("Eliminando billetera..."),
        "detailedFeesReceiveCoinTransactionFee": m29,
        "detailedFeesSendCoinTransactionFee": m30,
        "detailedFeesSendTradingFeeTransactionFee":
            MessageLookupByLibrary.simpleMessage(
                "enviar tarifa comercial tarifa de transacción"),
        "detailedFeesTradingFee":
            MessageLookupByLibrary.simpleMessage("tarifa comercial"),
        "details": MessageLookupByLibrary.simpleMessage("detalles"),
        "deutscheLanguage": MessageLookupByLibrary.simpleMessage("Alemán"),
        "developerTitle": MessageLookupByLibrary.simpleMessage("Desarrollador"),
        "dex": MessageLookupByLibrary.simpleMessage("DEX"),
        "dexIsNotAvailable": MessageLookupByLibrary.simpleMessage(
            "DEX no está disponible para esta moneda"),
        "disableScreenshots": MessageLookupByLibrary.simpleMessage(
            "Desactivar capturas de pantalla/vista previa"),
        "disclaimerAndTos": MessageLookupByLibrary.simpleMessage(
            "Descargo de responsabilidad y condiciones de servicio"),
        "doNotCloseTheAppTapForMoreInfo": MessageLookupByLibrary.simpleMessage(
            "No cierres la aplicación. Toca para obtener más información..."),
        "done": MessageLookupByLibrary.simpleMessage("Hecho"),
        "dontAskAgain":
            MessageLookupByLibrary.simpleMessage("No vuelvas a preguntar"),
        "dontWantPassword":
            MessageLookupByLibrary.simpleMessage("no quiero una contraseña"),
        "duration": MessageLookupByLibrary.simpleMessage("Duración"),
        "editContact": MessageLookupByLibrary.simpleMessage("Editar contacto"),
        "emptyCoin": m31,
        "emptyExportPass": MessageLookupByLibrary.simpleMessage(
            "La contraseña de cifrado no puede estar vacía"),
        "emptyImportPass": MessageLookupByLibrary.simpleMessage(
            "La contraseña no puede estar vacía"),
        "emptyName": MessageLookupByLibrary.simpleMessage(
            "El nombre del contacto no puede estar vacío"),
        "emptyWallet": MessageLookupByLibrary.simpleMessage(
            "El nombre de la billetera no debe estar vacío"),
        "enableNotificationsForActivationProgress":
            MessageLookupByLibrary.simpleMessage(
                "Habilite las notificaciones para recibir actualizaciones sobre el progreso de la activación."),
        "enableTestCoins":
            MessageLookupByLibrary.simpleMessage("Habilitar monedas de prueba"),
        "enablingTooManyAssetsSpan1":
            MessageLookupByLibrary.simpleMessage("Tu tienes"),
        "enablingTooManyAssetsSpan2": MessageLookupByLibrary.simpleMessage(
            "activos habilitados y tratando de habilitar"),
        "enablingTooManyAssetsSpan3": MessageLookupByLibrary.simpleMessage(
            "más. El límite máximo de activos habilitados es"),
        "enablingTooManyAssetsSpan4": MessageLookupByLibrary.simpleMessage(
            ". Desactive algunos antes de agregar otros nuevos."),
        "enablingTooManyAssetsTitle": MessageLookupByLibrary.simpleMessage(
            "Intentando habilitar demasiados activos"),
        "encryptingWallet":
            MessageLookupByLibrary.simpleMessage("Billetera cifrada"),
        "englishLanguage": MessageLookupByLibrary.simpleMessage("Inglés"),
        "enterNewPinCode":
            MessageLookupByLibrary.simpleMessage("Ingrese su nuevo PIN"),
        "enterOldPinCode":
            MessageLookupByLibrary.simpleMessage("Ingrese su antiguo PIN"),
        "enterPinCode":
            MessageLookupByLibrary.simpleMessage("Ingresa tu numero PIN"),
        "enterSeedPhrase": MessageLookupByLibrary.simpleMessage(
            "Ingrese su Semilla de 12 palabras"),
        "enterSellAmount": MessageLookupByLibrary.simpleMessage(
            "Primero debe ingresar el monto de la venta"),
        "enterpassword": MessageLookupByLibrary.simpleMessage(
            "Por favor ingrese su contraseña para continuar."),
        "errorAmountBalance": MessageLookupByLibrary.simpleMessage(
            "No hay suficiente equilibrio"),
        "errorNotAValidAddress":
            MessageLookupByLibrary.simpleMessage("No es una dirección válida"),
        "errorNotAValidAddressSegWit": MessageLookupByLibrary.simpleMessage(
            "Las direcciones de Segwit no son compatibles (todavía)"),
        "errorNotEnoughGas": m33,
        "errorTryAgain":
            MessageLookupByLibrary.simpleMessage("Error, inténtalo de nuevo"),
        "errorTryLater":
            MessageLookupByLibrary.simpleMessage("Error, intente más tarde"),
        "errorValueEmpty": MessageLookupByLibrary.simpleMessage(
            "El valor es demasiado alto o bajo"),
        "errorValueNotEmpty":
            MessageLookupByLibrary.simpleMessage("Por favor ingrese datos"),
        "estimateValue":
            MessageLookupByLibrary.simpleMessage("Valor total estimado"),
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
            "Ejemplo: build case level ..."),
        "exchangeExpedient": MessageLookupByLibrary.simpleMessage("Expediente"),
        "exchangeExpensive": MessageLookupByLibrary.simpleMessage("Caro"),
        "exchangeIdentical":
            MessageLookupByLibrary.simpleMessage("Identico a CEX"),
        "exchangeRate": MessageLookupByLibrary.simpleMessage("Tipo de cambio:"),
        "exchangeTitle": MessageLookupByLibrary.simpleMessage("INTERCAMBIO"),
        "exportButton": MessageLookupByLibrary.simpleMessage("Exportar"),
        "exportContactsTitle":
            MessageLookupByLibrary.simpleMessage("Contactos"),
        "exportDesc": MessageLookupByLibrary.simpleMessage(
            "Seleccione elementos para exportar a un archivo cifrado."),
        "exportLink": MessageLookupByLibrary.simpleMessage("Exportar"),
        "exportNotesTitle": MessageLookupByLibrary.simpleMessage("Notas"),
        "exportSuccessTitle": MessageLookupByLibrary.simpleMessage(
            "Los elementos se han exportado correctamente:"),
        "exportSwapsTitle":
            MessageLookupByLibrary.simpleMessage("Intercambios"),
        "exportTitle": MessageLookupByLibrary.simpleMessage("Exportar"),
        "failedToCancelActivation": m48,
        "fakeBalanceAmt":
            MessageLookupByLibrary.simpleMessage("Cantidad de saldo falso:"),
        "faqTitle":
            MessageLookupByLibrary.simpleMessage("Preguntas frecuentes"),
        "faucetError": MessageLookupByLibrary.simpleMessage("Error"),
        "faucetInProgress": m49,
        "faucetName": MessageLookupByLibrary.simpleMessage("GRIFO"),
        "faucetSuccess": MessageLookupByLibrary.simpleMessage("Éxito"),
        "faucetTimedOut":
            MessageLookupByLibrary.simpleMessage("Tiempo de espera agotado"),
        "feedNewsTab": MessageLookupByLibrary.simpleMessage("Noticias"),
        "feedNotFound": MessageLookupByLibrary.simpleMessage("Nada aquí"),
        "feedNotifTitle": m50,
        "feedReadMore": MessageLookupByLibrary.simpleMessage("Leer más..."),
        "feedTab": MessageLookupByLibrary.simpleMessage("Informacion"),
        "feedTitle": MessageLookupByLibrary.simpleMessage("Noticias"),
        "feedUnableToProceed": MessageLookupByLibrary.simpleMessage(
            "No se puede continuar con la actualización de noticias"),
        "feedUnableToUpdate": MessageLookupByLibrary.simpleMessage(
            "No se puede obtener la actualización de noticias"),
        "feedUpToDate":
            MessageLookupByLibrary.simpleMessage("Ya está actualizado"),
        "feedUpdated": MessageLookupByLibrary.simpleMessage(
            "Fuente de noticias actualizada"),
        "feedback": MessageLookupByLibrary.simpleMessage(
            "Compartir archivo de registro"),
        "feesError": m51,
        "filtersAll": MessageLookupByLibrary.simpleMessage("Todo"),
        "filtersButton": MessageLookupByLibrary.simpleMessage("Filtro"),
        "filtersClearAll":
            MessageLookupByLibrary.simpleMessage("Borrar todos los filtros"),
        "filtersFailed": MessageLookupByLibrary.simpleMessage("Fallido"),
        "filtersFrom":
            MessageLookupByLibrary.simpleMessage("Partir de la fecha"),
        "filtersMaker": MessageLookupByLibrary.simpleMessage("Vendedor"),
        "filtersReceive":
            MessageLookupByLibrary.simpleMessage("Recibir moneda"),
        "filtersSell": MessageLookupByLibrary.simpleMessage("Vender moneda"),
        "filtersStatus": MessageLookupByLibrary.simpleMessage("Estado"),
        "filtersSuccessful": MessageLookupByLibrary.simpleMessage("Exitoso"),
        "filtersTaker": MessageLookupByLibrary.simpleMessage("Comprador"),
        "filtersTo": MessageLookupByLibrary.simpleMessage("Hasta la fecha"),
        "filtersType":
            MessageLookupByLibrary.simpleMessage("Comprador/Vendedor"),
        "fingerprint": MessageLookupByLibrary.simpleMessage("Huella dactilar"),
        "finishingUp": MessageLookupByLibrary.simpleMessage(
            "Terminando, por favor espera."),
        "foundQrCode":
            MessageLookupByLibrary.simpleMessage("Código QR encontrado"),
        "frenchLanguage": MessageLookupByLibrary.simpleMessage("Francés"),
        "from": MessageLookupByLibrary.simpleMessage("Desde"),
        "futureTransactions": MessageLookupByLibrary.simpleMessage(
            "Sincronizaremos las transacciones futuras realizadas después de la activación asociada con su clave pública. Esta es la opción más rápida y ocupa la menor cantidad de almacenamiento."),
        "gasFee": m52,
        "gasLimit": MessageLookupByLibrary.simpleMessage("Limite de Gas"),
        "gasNotActive": m53,
        "gasPrice": MessageLookupByLibrary.simpleMessage("Precio de Gas"),
        "generalPinNotActive": MessageLookupByLibrary.simpleMessage(
            "La protección general con PIN no está activa.\nEl modo de camuflaje no estará disponible.\nActive la protección con PIN."),
        "getBackupPhrase": MessageLookupByLibrary.simpleMessage(
            "Importante: ¡Haz una copia de seguridad de tu frase inicial antes de continuar!"),
        "gettingTxWait": MessageLookupByLibrary.simpleMessage(
            "Obteniendo transacción, por favor espere"),
        "goToPorfolio":
            MessageLookupByLibrary.simpleMessage("Ir al portafolio"),
        "helpLink": MessageLookupByLibrary.simpleMessage("Ayuda"),
        "helpTitle": MessageLookupByLibrary.simpleMessage("Ayuda y apoyo"),
        "hideBalance": MessageLookupByLibrary.simpleMessage("Ocultar saldos"),
        "hintConfirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirmar contraseña"),
        "hintCreatePassword":
            MessageLookupByLibrary.simpleMessage("Crear contraseña"),
        "hintCurrentPassword":
            MessageLookupByLibrary.simpleMessage("Contraseña actual"),
        "hintEnterPassword":
            MessageLookupByLibrary.simpleMessage("Ingresa tu contraseña"),
        "hintEnterSeedPhrase":
            MessageLookupByLibrary.simpleMessage("Ingrese su frase inicial"),
        "hintNameYourWallet":
            MessageLookupByLibrary.simpleMessage("Nombra tu billetera"),
        "hintPassword": MessageLookupByLibrary.simpleMessage("Clave"),
        "history": MessageLookupByLibrary.simpleMessage("historia"),
        "hours": MessageLookupByLibrary.simpleMessage("h"),
        "hungarianLanguage": MessageLookupByLibrary.simpleMessage("Húngaro"),
        "iUnderstand": MessageLookupByLibrary.simpleMessage("Entiendo"),
        "importButton": MessageLookupByLibrary.simpleMessage("Importar"),
        "importDecryptError": MessageLookupByLibrary.simpleMessage(
            "Contraseña no válida o datos dañados"),
        "importDesc":
            MessageLookupByLibrary.simpleMessage("Elementos a importar:"),
        "importFileNotFound":
            MessageLookupByLibrary.simpleMessage("Archivo no encontrado"),
        "importInvalidSwapData": MessageLookupByLibrary.simpleMessage(
            "Datos de intercambio no válidos. Proporcione un archivo JSON de estado de intercambio válido."),
        "importLink": MessageLookupByLibrary.simpleMessage("Importar"),
        "importLoadDesc": MessageLookupByLibrary.simpleMessage(
            "Seleccione el archivo cifrado para importar."),
        "importLoadSwapDesc": MessageLookupByLibrary.simpleMessage(
            "Seleccione el archivo de intercambio de texto sin formato para importar."),
        "importLoading": MessageLookupByLibrary.simpleMessage("Abriendo..."),
        "importPassCancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "importPassOk": MessageLookupByLibrary.simpleMessage("Ok"),
        "importPassword": MessageLookupByLibrary.simpleMessage("Clave"),
        "importSingleSwapLink":
            MessageLookupByLibrary.simpleMessage("Importar un Intercambio"),
        "importSingleSwapTitle":
            MessageLookupByLibrary.simpleMessage("Importar Intercambio"),
        "importSomeItemsSkippedWarning": MessageLookupByLibrary.simpleMessage(
            "Se han saltado algunos elementos"),
        "importSuccessTitle": MessageLookupByLibrary.simpleMessage(
            "Los elementos se han importado correctamente:"),
        "importSwapFailed": MessageLookupByLibrary.simpleMessage(
            "No se pudo importar el intercambio"),
        "importSwapJsonDecodingError": MessageLookupByLibrary.simpleMessage(
            "Error al decodificar el archivo json"),
        "importTitle": MessageLookupByLibrary.simpleMessage("Importar"),
        "incomingTransactionsProtectionSettings": m55,
        "infoPasswordDialog": MessageLookupByLibrary.simpleMessage(
            "Utilice una contraseña segura y no la almacene en el mismo dispositivo"),
        "infoTrade1": MessageLookupByLibrary.simpleMessage(
            "¡La solicitud de intercambio no se puede deshacer y es un evento final!"),
        "infoTrade2": MessageLookupByLibrary.simpleMessage(
            "El intercambio puede tardar hasta 60 minutos. ¡NO cierres esta aplicación!"),
        "infoWalletPassword": MessageLookupByLibrary.simpleMessage(
            "Debe proporcionar una contraseña para el cifrado de la billetera por razones de seguridad."),
        "insufficientBalanceToPay": m56,
        "insufficientText": MessageLookupByLibrary.simpleMessage(
            "El volumen mínimo requerido por este pedido es"),
        "insufficientTitle":
            MessageLookupByLibrary.simpleMessage("Volumen insuficiente"),
        "internetRefreshButton":
            MessageLookupByLibrary.simpleMessage("Actualizar"),
        "internetRestored": MessageLookupByLibrary.simpleMessage(
            "Conexión a Internet restaurada"),
        "invalidSwap": MessageLookupByLibrary.simpleMessage(
            "No se puede continuar con el intercambio"),
        "invalidSwapDetailsLink":
            MessageLookupByLibrary.simpleMessage("Detalles"),
        "isUnavailable": m58,
        "japaneseLanguage": MessageLookupByLibrary.simpleMessage("Japonés"),
        "koreanLanguage": MessageLookupByLibrary.simpleMessage("Coreano"),
        "language": MessageLookupByLibrary.simpleMessage("Idioma"),
        "latestTxs":
            MessageLookupByLibrary.simpleMessage("Últimas transacciones"),
        "legalTitle": MessageLookupByLibrary.simpleMessage("Legal"),
        "less": MessageLookupByLibrary.simpleMessage("menos"),
        "lessThanCaution": m59,
        "loading": MessageLookupByLibrary.simpleMessage("Cargando..."),
        "loadingOrderbook": MessageLookupByLibrary.simpleMessage(
            "Cargando libro de ordenes..."),
        "lockScreen":
            MessageLookupByLibrary.simpleMessage("La pantalla está bloqueada"),
        "lockScreenAuth":
            MessageLookupByLibrary.simpleMessage("¡Por favor, autentícate!"),
        "login": MessageLookupByLibrary.simpleMessage("acceso"),
        "logout": MessageLookupByLibrary.simpleMessage("Cerrar sesión"),
        "logoutOnExit":
            MessageLookupByLibrary.simpleMessage("Cerrar sesión al salir"),
        "logoutWarning": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro de que quieres cerrar sesión ahora?"),
        "logoutsettings": MessageLookupByLibrary.simpleMessage(
            "Configuración de cierre de sesión"),
        "longMinutes": MessageLookupByLibrary.simpleMessage("Minutos"),
        "makeAorder": MessageLookupByLibrary.simpleMessage("hacer un pedido"),
        "makerDetailsCancel":
            MessageLookupByLibrary.simpleMessage("Cancelar orden"),
        "makerDetailsCreated":
            MessageLookupByLibrary.simpleMessage("Createdo en"),
        "makerDetailsFor": MessageLookupByLibrary.simpleMessage("Recibir"),
        "makerDetailsId": MessageLookupByLibrary.simpleMessage("ID de Orden"),
        "makerDetailsNoSwaps": MessageLookupByLibrary.simpleMessage(
            "Este pedido no inició intercambios"),
        "makerDetailsPrice": MessageLookupByLibrary.simpleMessage("Precio"),
        "makerDetailsSell": MessageLookupByLibrary.simpleMessage("Vender"),
        "makerDetailsSwaps": MessageLookupByLibrary.simpleMessage(
            "Intercambios iniciados por este pedido"),
        "makerDetailsTitle": MessageLookupByLibrary.simpleMessage(
            "Detalles del pedido del fabricante"),
        "makerOrder": MessageLookupByLibrary.simpleMessage("Orden de Vendedor"),
        "marketplace": MessageLookupByLibrary.simpleMessage("Mercado"),
        "marketsChart": MessageLookupByLibrary.simpleMessage("Gráfico"),
        "marketsDepth": MessageLookupByLibrary.simpleMessage("Profundidad"),
        "marketsNoAsks": MessageLookupByLibrary.simpleMessage(
            "No se encontraron solicitudes"),
        "marketsNoBids":
            MessageLookupByLibrary.simpleMessage("No se encontraron ofertas"),
        "marketsOrderDetails":
            MessageLookupByLibrary.simpleMessage("Detalles del Pedido"),
        "marketsOrderbook":
            MessageLookupByLibrary.simpleMessage("LIBRO DE ORDENES"),
        "marketsPrice": MessageLookupByLibrary.simpleMessage("PRECIO"),
        "marketsSelectCoins": MessageLookupByLibrary.simpleMessage(
            "Por favor seleccione monedas"),
        "marketsTab": MessageLookupByLibrary.simpleMessage("Mercados"),
        "marketsTitle": MessageLookupByLibrary.simpleMessage("MERCADOS"),
        "matchExportPass": MessageLookupByLibrary.simpleMessage(
            "Las contraseñas deben coincidir"),
        "matchingCamoChange": MessageLookupByLibrary.simpleMessage("Cambiar"),
        "matchingCamoPinError": MessageLookupByLibrary.simpleMessage(
            "Su PIN general y el PIN de camuflaje son los mismos.\nEl modo de camuflaje no estará disponible.\nCambie el PIN de camuflaje."),
        "matchingCamoTitle":
            MessageLookupByLibrary.simpleMessage("PIN Invalido"),
        "max": MessageLookupByLibrary.simpleMessage("MAXIMO"),
        "maxOrder":
            MessageLookupByLibrary.simpleMessage("Volumen máximo de pedidos:"),
        "media": MessageLookupByLibrary.simpleMessage("Noticias"),
        "mediaBrowse": MessageLookupByLibrary.simpleMessage("NAVEGAR"),
        "mediaBrowseFeed": MessageLookupByLibrary.simpleMessage("NAVEGAR RSS"),
        "mediaBy": MessageLookupByLibrary.simpleMessage("By"),
        "mediaNotSavedDescription": MessageLookupByLibrary.simpleMessage(
            "NO TIENES ARTÍCULOS GUARDADOS"),
        "mediaSaved": MessageLookupByLibrary.simpleMessage("GUARDADO"),
        "memo": MessageLookupByLibrary.simpleMessage("Memorándum"),
        "merge": MessageLookupByLibrary.simpleMessage("Unir"),
        "mergedValue": MessageLookupByLibrary.simpleMessage("Valor combinado:"),
        "milliseconds": MessageLookupByLibrary.simpleMessage("ms"),
        "min": MessageLookupByLibrary.simpleMessage("Min"),
        "minOrder":
            MessageLookupByLibrary.simpleMessage("Volumen mínimo de pedido:"),
        "minValue": m61,
        "minValueBuy": m62,
        "minValueOrder": m63,
        "minValueSell": m64,
        "minVolumeInput": m65,
        "minVolumeIsTDH": MessageLookupByLibrary.simpleMessage(
            "Debe ser menor que el monto de venta"),
        "minVolumeTitle":
            MessageLookupByLibrary.simpleMessage("Volumen mínimo requerido"),
        "minVolumeToggle": MessageLookupByLibrary.simpleMessage(
            "Usar volumen mínimo personalizado"),
        "minimizingWillTerminate": MessageLookupByLibrary.simpleMessage(
            "Advertencia: Minimizar la aplicación en iOS finalizará el proceso de activación."),
        "minutes": MessageLookupByLibrary.simpleMessage("m"),
        "mobileDataWarning": m66,
        "moreInfo": MessageLookupByLibrary.simpleMessage("Más información"),
        "moreTab": MessageLookupByLibrary.simpleMessage("Mas"),
        "multiActivateGas": m67,
        "multiBaseAmtPlaceholder":
            MessageLookupByLibrary.simpleMessage("Cantidad"),
        "multiBasePlaceholder": MessageLookupByLibrary.simpleMessage("Moneda"),
        "multiBaseSelectTitle": MessageLookupByLibrary.simpleMessage("Vender"),
        "multiConfirmCancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "multiConfirmConfirm":
            MessageLookupByLibrary.simpleMessage("Confirmar"),
        "multiConfirmTitle": m68,
        "multiCreate": MessageLookupByLibrary.simpleMessage("Crear"),
        "multiCreateOrder": MessageLookupByLibrary.simpleMessage("Orden"),
        "multiCreateOrders": MessageLookupByLibrary.simpleMessage("Ordenes"),
        "multiEthFee": MessageLookupByLibrary.simpleMessage("costo"),
        "multiFiatCancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "multiFiatDesc": MessageLookupByLibrary.simpleMessage(
            "Ingrese la cantidad de dinero para recibir:"),
        "multiFiatFill": MessageLookupByLibrary.simpleMessage("Autollenarl"),
        "multiFixErrors": MessageLookupByLibrary.simpleMessage(
            "Corrija todos los errores antes de continuar"),
        "multiInvalidAmt":
            MessageLookupByLibrary.simpleMessage("Monto invalido"),
        "multiInvalidSellAmt":
            MessageLookupByLibrary.simpleMessage("Cantidad de venta no válido"),
        "multiLowGas": m69,
        "multiLowerThanFee": m70,
        "multiMaxSellAmt": MessageLookupByLibrary.simpleMessage(
            "La cantidad máxima de venta es"),
        "multiMinReceiveAmt": MessageLookupByLibrary.simpleMessage(
            "La cantidad mínima recibida es"),
        "multiMinSellAmt": MessageLookupByLibrary.simpleMessage(
            "La cantidad mínima de venta es"),
        "multiReceiveTitle": MessageLookupByLibrary.simpleMessage("Recibir:"),
        "multiSellTitle": MessageLookupByLibrary.simpleMessage("Vender:"),
        "multiTab": MessageLookupByLibrary.simpleMessage("Multi"),
        "multiTableAmt": MessageLookupByLibrary.simpleMessage("Recibir Cntd."),
        "multiTablePrice": MessageLookupByLibrary.simpleMessage("Precio/CEX"),
        "networkFee": MessageLookupByLibrary.simpleMessage("Tarifa de red"),
        "newAccount": MessageLookupByLibrary.simpleMessage("nueva cuenta"),
        "newAccountUpper": MessageLookupByLibrary.simpleMessage("Nueva Cuenta"),
        "newValue": MessageLookupByLibrary.simpleMessage("Nuevo valor:"),
        "newsFeed": MessageLookupByLibrary.simpleMessage("Noticias"),
        "next": MessageLookupByLibrary.simpleMessage("próximo"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noArticles": MessageLookupByLibrary.simpleMessage(
            "No hay noticias. Vuelva a consultar más tarde."),
        "noCoinFound": MessageLookupByLibrary.simpleMessage(
            "No se encontró ninguna moneda"),
        "noFunds": MessageLookupByLibrary.simpleMessage("Sin Fondos"),
        "noFundsDetected": MessageLookupByLibrary.simpleMessage(
            "No hay fondos disponibles, por favor deposite."),
        "noInternet":
            MessageLookupByLibrary.simpleMessage("Sin conexión a Internet"),
        "noItemsToExport": MessageLookupByLibrary.simpleMessage(
            "No hay artículos seleccionados"),
        "noItemsToImport": MessageLookupByLibrary.simpleMessage(
            "No hay artículos seleccionados"),
        "noMatchingOrders": MessageLookupByLibrary.simpleMessage(
            "No se encontraron pedidos coincidentes"),
        "noOrder": m71,
        "noOrderAvailable": MessageLookupByLibrary.simpleMessage(
            "Haga clic para crear un pedido"),
        "noOrders": MessageLookupByLibrary.simpleMessage(
            "No hay pedidos, por favor vaya al comercio."),
        "noRewardYet": MessageLookupByLibrary.simpleMessage(
            "No se puede reclamar ninguna recompensa. Vuelva a intentarlo en 1 hora."),
        "noRewards": MessageLookupByLibrary.simpleMessage(
            "No hay recompensas reclamables"),
        "noSuchCoin": MessageLookupByLibrary.simpleMessage("No hay tal moneda"),
        "noSwaps": MessageLookupByLibrary.simpleMessage("No historia."),
        "noTxs": MessageLookupByLibrary.simpleMessage("Sin transacciones"),
        "nonNumericInput":
            MessageLookupByLibrary.simpleMessage("El valor debe ser numérico."),
        "none": MessageLookupByLibrary.simpleMessage("Ninguno"),
        "notEnoughGas": m72,
        "notEnoughtBalanceForFee": MessageLookupByLibrary.simpleMessage(
            "No hay suficiente saldo para las tarifas: opere con una cantidad menor"),
        "noteOnOrder": MessageLookupByLibrary.simpleMessage(
            "Nota: el pedido emparejado no se puede cancelar de nuevo"),
        "notePlaceholder": MessageLookupByLibrary.simpleMessage("Añadir Nota"),
        "noteTitle": MessageLookupByLibrary.simpleMessage("Nota"),
        "nothingFound": MessageLookupByLibrary.simpleMessage("Nada Encontrado"),
        "notifSwapCompletedText": m73,
        "notifSwapCompletedTitle":
            MessageLookupByLibrary.simpleMessage("Intercambio completado"),
        "notifSwapFailedText": m74,
        "notifSwapFailedTitle":
            MessageLookupByLibrary.simpleMessage("Intercambio fallido"),
        "notifSwapStartedText": m75,
        "notifSwapStartedTitle":
            MessageLookupByLibrary.simpleMessage("Nuevo intercambio iniciado"),
        "notifSwapStatusTitle":
            MessageLookupByLibrary.simpleMessage("Cambio de estado cambiado"),
        "notifSwapTimeoutText": m76,
        "notifSwapTimeoutTitle": MessageLookupByLibrary.simpleMessage(
            "Se agotó el tiempo de intercambio"),
        "notifTxText": m77,
        "notifTxTitle":
            MessageLookupByLibrary.simpleMessage("Transaccion entrante"),
        "numberAssets": m78,
        "officialPressRelease": MessageLookupByLibrary.simpleMessage(
            "comunicado de prensa oficial"),
        "okButton": MessageLookupByLibrary.simpleMessage("Ok"),
        "oldLogsDelete": MessageLookupByLibrary.simpleMessage("Borrar"),
        "oldLogsTitle":
            MessageLookupByLibrary.simpleMessage("Registros antiguos"),
        "oldLogsUsed": MessageLookupByLibrary.simpleMessage("Espacio usado"),
        "openMessage":
            MessageLookupByLibrary.simpleMessage("Abrir mensaje de error"),
        "orderBookLess": MessageLookupByLibrary.simpleMessage("Menos"),
        "orderBookMore": MessageLookupByLibrary.simpleMessage("Más"),
        "orderCancel": m79,
        "orderCreated": MessageLookupByLibrary.simpleMessage("Pedido creado"),
        "orderCreatedInfo":
            MessageLookupByLibrary.simpleMessage("Pedido creado con éxito"),
        "orderDetailsAddress":
            MessageLookupByLibrary.simpleMessage("Direccion"),
        "orderDetailsCancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "orderDetailsExpedient": m80,
        "orderDetailsExpensive": m81,
        "orderDetailsFor": MessageLookupByLibrary.simpleMessage("for"),
        "orderDetailsIdentical":
            MessageLookupByLibrary.simpleMessage("Idéntico a CEX"),
        "orderDetailsMin": MessageLookupByLibrary.simpleMessage("min."),
        "orderDetailsPrice": MessageLookupByLibrary.simpleMessage("Precio"),
        "orderDetailsReceive": MessageLookupByLibrary.simpleMessage("Recibir"),
        "orderDetailsSelect":
            MessageLookupByLibrary.simpleMessage("Seleccione"),
        "orderDetailsSells": MessageLookupByLibrary.simpleMessage("Ventas"),
        "orderDetailsSettings": MessageLookupByLibrary.simpleMessage(
            "Abra detalles con un solo toque y seleccione Ordenar con un toque largo"),
        "orderDetailsSpend": MessageLookupByLibrary.simpleMessage("Gastar"),
        "orderDetailsTitle": MessageLookupByLibrary.simpleMessage("Detalles"),
        "orderFilled": m82,
        "orderMatched":
            MessageLookupByLibrary.simpleMessage("Orden Triangulada"),
        "orderMatching":
            MessageLookupByLibrary.simpleMessage("Triangulación de órdenes"),
        "orderTypePartial": MessageLookupByLibrary.simpleMessage("Orden"),
        "orderTypeUnknown":
            MessageLookupByLibrary.simpleMessage("Orden desconocida"),
        "orders": MessageLookupByLibrary.simpleMessage("ordenes"),
        "ordersActive": MessageLookupByLibrary.simpleMessage("Activo"),
        "ordersHistory": MessageLookupByLibrary.simpleMessage("Historial"),
        "ordersTableAmount": m83,
        "ordersTablePrice": m84,
        "ordersTableTotal": m85,
        "overwrite": MessageLookupByLibrary.simpleMessage("Sobrescribir"),
        "ownOrder":
            MessageLookupByLibrary.simpleMessage("Esta es tu propia orden!"),
        "paidFromBalance":
            MessageLookupByLibrary.simpleMessage("Pagado del saldo:"),
        "paidFromVolume": MessageLookupByLibrary.simpleMessage(
            "Pagado del volumen recibido:"),
        "paidWith": MessageLookupByLibrary.simpleMessage("Pagado con"),
        "passwordRequirement": MessageLookupByLibrary.simpleMessage(
            "La contraseña debe contener al menos 12 caracteres, con una minúscula, una mayúscula y un símbolo especial."),
        "pastTransactionsFromDate": MessageLookupByLibrary.simpleMessage(
            "Su billetera mostrará sus transacciones pasadas realizadas después de la fecha especificada."),
        "paymentUriDetailsAccept":
            MessageLookupByLibrary.simpleMessage("Pagar"),
        "paymentUriDetailsAcceptQuestion":
            MessageLookupByLibrary.simpleMessage("¿Acepta esta transacción?"),
        "paymentUriDetailsAddressSpan":
            MessageLookupByLibrary.simpleMessage("A Direccion"),
        "paymentUriDetailsAmountSpan":
            MessageLookupByLibrary.simpleMessage("Monto:"),
        "paymentUriDetailsCoinSpan":
            MessageLookupByLibrary.simpleMessage("Moneda:"),
        "paymentUriDetailsDeny":
            MessageLookupByLibrary.simpleMessage("Cancelar"),
        "paymentUriDetailsTitle":
            MessageLookupByLibrary.simpleMessage("Pago solicitado"),
        "paymentUriInactiveCoin": m86,
        "placeOrder": MessageLookupByLibrary.simpleMessage("Haga su pedido"),
        "pleaseAcceptAllCoinActivationRequests":
            MessageLookupByLibrary.simpleMessage(
                "Acepte todas las solicitudes especiales de activación de monedas o anule la selección de las monedas."),
        "pleaseAddCoin": MessageLookupByLibrary.simpleMessage(
            "Por favor agregue una moneda"),
        "pleaseRestart": MessageLookupByLibrary.simpleMessage(
            "Reinicie la aplicación para volver a intentarlo o presione el botón a continuación."),
        "portfolio": MessageLookupByLibrary.simpleMessage("Portfolio"),
        "poweredOnKmd":
            MessageLookupByLibrary.simpleMessage("Desarrollado por Gleec"),
        "price": MessageLookupByLibrary.simpleMessage("price"),
        "privateKey": MessageLookupByLibrary.simpleMessage("Llave Privada"),
        "privateKeys": MessageLookupByLibrary.simpleMessage("Llaves Privadas"),
        "protectionCtrlConfirmations":
            MessageLookupByLibrary.simpleMessage("Confirmaciones"),
        "protectionCtrlCustom": MessageLookupByLibrary.simpleMessage(
            "Usar configuraciones de protección personalizadas"),
        "protectionCtrlOff":
            MessageLookupByLibrary.simpleMessage("DESACTIVADO"),
        "protectionCtrlOn": MessageLookupByLibrary.simpleMessage("ACTIVADO"),
        "protectionCtrlWarning": MessageLookupByLibrary.simpleMessage(
            "Advertencia, este intercambio atómico no está protegido por dPoW."),
        "pubkey": MessageLookupByLibrary.simpleMessage("Llave Publica"),
        "qrCodeScanner":
            MessageLookupByLibrary.simpleMessage("Escáner de código QR"),
        "question_1": MessageLookupByLibrary.simpleMessage(
            "¿Guardás mis llaves privadas?"),
        "question_10": m87,
        "question_2": m88,
        "question_3": MessageLookupByLibrary.simpleMessage(
            "¿Cuánto tiempo toma cada intercambio atómico?"),
        "question_4": MessageLookupByLibrary.simpleMessage(
            "¿Necesito estar en línea durante la duración del intercambio?"),
        "question_5": m89,
        "question_6": MessageLookupByLibrary.simpleMessage(
            "¿Ofrecen soporte al usuario?"),
        "question_7": MessageLookupByLibrary.simpleMessage(
            "¿Tiene restricciones de país?"),
        "question_8": m90,
        "question_9": m91,
        "rebrandingAnnouncement": MessageLookupByLibrary.simpleMessage(
            "¡Es una nueva era! Hemos cambiado oficialmente nuestro nombre de \'AtomicDEX\' a \'Gleec Wallet\'"),
        "receive": MessageLookupByLibrary.simpleMessage("RECIBIR"),
        "receiveLower": MessageLookupByLibrary.simpleMessage("Recibir"),
        "recommendSeedMessage": MessageLookupByLibrary.simpleMessage(
            "Recomendamos almacenarlo fuera de línea."),
        "remove": MessageLookupByLibrary.simpleMessage("Desactivar"),
        "requestedTrade":
            MessageLookupByLibrary.simpleMessage("Comercio solicitado"),
        "reset": MessageLookupByLibrary.simpleMessage("RESETEAR"),
        "resetTitle":
            MessageLookupByLibrary.simpleMessage("Restablecer formulario"),
        "restoreWallet": MessageLookupByLibrary.simpleMessage("RESTAURAR"),
        "retryActivating": MessageLookupByLibrary.simpleMessage(
            "Volviendo a intentar activar todas las monedas..."),
        "retryAll": MessageLookupByLibrary.simpleMessage(
            "Vuelva a intentar activar todo"),
        "rewardsButton":
            MessageLookupByLibrary.simpleMessage("Reclama tus recompensas"),
        "rewardsCancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "rewardsError": MessageLookupByLibrary.simpleMessage(
            "Algo salió mal. Por favor, inténtelo de nuevo más tarde."),
        "rewardsInProgressLong": MessageLookupByLibrary.simpleMessage(
            "La transacción está en curso"),
        "rewardsInProgressShort":
            MessageLookupByLibrary.simpleMessage("procesando"),
        "rewardsLowAmountLong": MessageLookupByLibrary.simpleMessage(
            "Cantidad de UTXO inferior a 10 KMD"),
        "rewardsLowAmountShort":
            MessageLookupByLibrary.simpleMessage("<10 KMD"),
        "rewardsOneHourLong":
            MessageLookupByLibrary.simpleMessage("Aún no ha pasado una hora"),
        "rewardsOneHourShort": MessageLookupByLibrary.simpleMessage("<1 hora"),
        "rewardsPopupOk": MessageLookupByLibrary.simpleMessage("Ok"),
        "rewardsPopupTitle":
            MessageLookupByLibrary.simpleMessage("Estado de recompensas:"),
        "rewardsReadMore": MessageLookupByLibrary.simpleMessage(
            "Obtenga más información sobre las recompensas para usuarios activos de KMD"),
        "rewardsReceive": MessageLookupByLibrary.simpleMessage("Recibir"),
        "rewardsSuccess": m92,
        "rewardsTableFiat": MessageLookupByLibrary.simpleMessage("Fiat"),
        "rewardsTableRewards":
            MessageLookupByLibrary.simpleMessage("Recompensas,\nKMD"),
        "rewardsTableStatus": MessageLookupByLibrary.simpleMessage("Estado"),
        "rewardsTableTime":
            MessageLookupByLibrary.simpleMessage("Tiempo\nrestante"),
        "rewardsTableTitle":
            MessageLookupByLibrary.simpleMessage("Información de recompensas:"),
        "rewardsTableUXTO":
            MessageLookupByLibrary.simpleMessage("UTXO\ncantidad,\nKMD"),
        "rewardsTimeDays": m93,
        "rewardsTimeHours": m94,
        "rewardsTimeMin": m95,
        "rewardsTitle":
            MessageLookupByLibrary.simpleMessage("Información de recompensas"),
        "russianLanguage": MessageLookupByLibrary.simpleMessage("Ruso"),
        "saveMerged": MessageLookupByLibrary.simpleMessage("Guardar combinado"),
        "scrollToContinue": MessageLookupByLibrary.simpleMessage(
            "Desplácese hacia abajo para continuar..."),
        "searchFilterCoin":
            MessageLookupByLibrary.simpleMessage("Buscar una moneda"),
        "searchFilterSubtitleAVX": MessageLookupByLibrary.simpleMessage(
            "Seleccionar todos los tokens de Avax"),
        "searchFilterSubtitleBEP": MessageLookupByLibrary.simpleMessage(
            "Seleccionar todos los tokens BEP"),
        "searchFilterSubtitleCosmos": MessageLookupByLibrary.simpleMessage(
            "Seleccionar todo Cosmos Network"),
        "searchFilterSubtitleERC": MessageLookupByLibrary.simpleMessage(
            "Seleccionar todos los tokens ERC"),
        "searchFilterSubtitleETC": MessageLookupByLibrary.simpleMessage(
            "Seleccionar todos los tokens ETC"),
        "searchFilterSubtitleFTM": MessageLookupByLibrary.simpleMessage(
            "Seleccionar todas las fichas de Fantom"),
        "searchFilterSubtitleHCO": MessageLookupByLibrary.simpleMessage(
            "Seleccionar todos los tokens de HecoChain"),
        "searchFilterSubtitleHRC": MessageLookupByLibrary.simpleMessage(
            "Seleccionar todas las fichas de armonía"),
        "searchFilterSubtitleIris": MessageLookupByLibrary.simpleMessage(
            "Seleccionar todo Iris Network"),
        "searchFilterSubtitleKRC": MessageLookupByLibrary.simpleMessage(
            "Seleccionar todos los tokens de Kucoin"),
        "searchFilterSubtitleMVR": MessageLookupByLibrary.simpleMessage(
            "Seleccione todas las fichas de Moonriver"),
        "searchFilterSubtitlePLG": MessageLookupByLibrary.simpleMessage(
            "Seleccione todas las fichas de polígono"),
        "searchFilterSubtitleQRC": MessageLookupByLibrary.simpleMessage(
            "Seleccionar todos los tokens QRC"),
        "searchFilterSubtitleSBCH": MessageLookupByLibrary.simpleMessage(
            "Seleccione todos los tokens SmartBCH"),
        "searchFilterSubtitleSLP": MessageLookupByLibrary.simpleMessage(
            "Seleccionar todos los tokens SLP"),
        "searchFilterSubtitleSmartChain": MessageLookupByLibrary.simpleMessage(
            "Seleccione todos los SmartChains"),
        "searchFilterSubtitleTestCoins": MessageLookupByLibrary.simpleMessage(
            "Seleccionar todos los activos de prueba"),
        "searchFilterSubtitleUBQ": MessageLookupByLibrary.simpleMessage(
            "Seleccionar todas las monedas Ubiq"),
        "searchFilterSubtitleZHTLC": MessageLookupByLibrary.simpleMessage(
            "Seleccione todas las monedas ZHTLC"),
        "searchFilterSubtitleutxo": MessageLookupByLibrary.simpleMessage(
            "Seleccione todas las monedas UTXO"),
        "searchForTicker":
            MessageLookupByLibrary.simpleMessage("Buscar teletipo"),
        "seconds": MessageLookupByLibrary.simpleMessage("s"),
        "security": MessageLookupByLibrary.simpleMessage("Seguridad"),
        "seeOrders": m96,
        "seeTxHistory": MessageLookupByLibrary.simpleMessage(
            "Ver historial de transacciones"),
        "seedPhrase": MessageLookupByLibrary.simpleMessage("Frase Semilla"),
        "seedPhraseTitle":
            MessageLookupByLibrary.simpleMessage("Tu nueva frase semilla"),
        "selectCoin":
            MessageLookupByLibrary.simpleMessage("Seleccionar moneda"),
        "selectCoinInfo": MessageLookupByLibrary.simpleMessage(
            "Seleccione las monedas que desea agregar a su cartera."),
        "selectCoinTitle":
            MessageLookupByLibrary.simpleMessage("Activar monedas:"),
        "selectCoinToBuy": MessageLookupByLibrary.simpleMessage(
            "Seleccione la moneda que desea COMPRAR"),
        "selectCoinToSell": MessageLookupByLibrary.simpleMessage(
            "Seleccione la moneda que desea VENDER"),
        "selectDate":
            MessageLookupByLibrary.simpleMessage("Seleccione una fecha"),
        "selectFileImport":
            MessageLookupByLibrary.simpleMessage("Seleccione Archivo"),
        "selectLanguage":
            MessageLookupByLibrary.simpleMessage("Seleccione el idioma"),
        "selectPaymentMethod":
            MessageLookupByLibrary.simpleMessage("Selecciona tu forma de pago"),
        "selectedOrder":
            MessageLookupByLibrary.simpleMessage("Orden seleccionado:"),
        "sell": MessageLookupByLibrary.simpleMessage("Vender"),
        "sellTestCoinWarning": MessageLookupByLibrary.simpleMessage(
            "¡Advertencia, estás dispuesto a vender monedas de prueba SIN valor real!"),
        "send": MessageLookupByLibrary.simpleMessage("ENVIAR"),
        "setUpPassword":
            MessageLookupByLibrary.simpleMessage("CONFIGURAR UNA CONTRASEÑA"),
        "settingDialogSpan1": MessageLookupByLibrary.simpleMessage(
            "Estás seguro de que quieres eliminar"),
        "settingDialogSpan2":
            MessageLookupByLibrary.simpleMessage("billetera?"),
        "settingDialogSpan3":
            MessageLookupByLibrary.simpleMessage("Si es así, asegúrese de"),
        "settingDialogSpan4":
            MessageLookupByLibrary.simpleMessage("guardar su frase inicial."),
        "settingDialogSpan5": MessageLookupByLibrary.simpleMessage(
            "Para restaurar su billetera en el futuro."),
        "settingLanguageTitle": MessageLookupByLibrary.simpleMessage("Idiomas"),
        "settings": MessageLookupByLibrary.simpleMessage("Ajustes"),
        "share": MessageLookupByLibrary.simpleMessage("Compartir"),
        "shareAddress": m97,
        "showAddress":
            MessageLookupByLibrary.simpleMessage("Mostrar dirección"),
        "showDetails": MessageLookupByLibrary.simpleMessage("Mostrar detalles"),
        "showMyOrders":
            MessageLookupByLibrary.simpleMessage("Mostrar mis pedidos"),
        "showingOrders": m99,
        "signInWithPassword": MessageLookupByLibrary.simpleMessage(
            "Iniciar sesión con contraseña"),
        "signInWithSeedPhrase": MessageLookupByLibrary.simpleMessage(
            "¿Olvidó la contraseña? Restaurar billetera desde semilla"),
        "simple": MessageLookupByLibrary.simpleMessage("Sencillo"),
        "simpleTradeActivate": MessageLookupByLibrary.simpleMessage("Activar"),
        "simpleTradeBuyHint": m100,
        "simpleTradeBuyTitle": MessageLookupByLibrary.simpleMessage("Comprar"),
        "simpleTradeClose": MessageLookupByLibrary.simpleMessage("Cerrar"),
        "simpleTradeMaxActiveCoins": m101,
        "simpleTradeNotActive": m102,
        "simpleTradeRecieve": MessageLookupByLibrary.simpleMessage("Recibir"),
        "simpleTradeSellHint": m103,
        "simpleTradeSellTitle": MessageLookupByLibrary.simpleMessage("Vender"),
        "simpleTradeSend": MessageLookupByLibrary.simpleMessage("Enviar"),
        "simpleTradeShowLess":
            MessageLookupByLibrary.simpleMessage("Muestra menos"),
        "simpleTradeShowMore":
            MessageLookupByLibrary.simpleMessage("Mostrar mas"),
        "simpleTradeUnableActivate": m104,
        "skip": MessageLookupByLibrary.simpleMessage("Omitir"),
        "snackbarDismiss": MessageLookupByLibrary.simpleMessage("Descartar"),
        "soundCantPlayThatMsg": m105,
        "soundPlayedWhen": m106,
        "soundSettingsLink": MessageLookupByLibrary.simpleMessage("Sonido"),
        "soundSettingsTitle":
            MessageLookupByLibrary.simpleMessage("Ajustes de sonido"),
        "soundsDialogTitle": MessageLookupByLibrary.simpleMessage("Sonidos"),
        "soundsDoNotShowAgain": MessageLookupByLibrary.simpleMessage(
            "Entendido, no lo muestres más."),
        "soundsExplanation": MessageLookupByLibrary.simpleMessage(
            "Escuchará notificaciones de sonido durante el proceso de intercambio y cuando tenga un pedido de fabricante activo.\nEl protocolo de intercambios atómicos requiere que los participantes estén en línea para un intercambio exitoso, y las notificaciones de sonido ayudan a lograrlo."),
        "soundsNote": MessageLookupByLibrary.simpleMessage(
            "Tenga en cuenta que puede configurar sus sonidos personalizados en la configuración de la aplicación."),
        "spanishLanguage": MessageLookupByLibrary.simpleMessage("Español"),
        "startDate": MessageLookupByLibrary.simpleMessage("Fecha de inicio"),
        "startSwap":
            MessageLookupByLibrary.simpleMessage("Iniciar intercambio"),
        "step": MessageLookupByLibrary.simpleMessage("Paso"),
        "success": MessageLookupByLibrary.simpleMessage("¡Éxito!"),
        "support": MessageLookupByLibrary.simpleMessage("Apoyo"),
        "supportLinksDesc": m107,
        "swap": MessageLookupByLibrary.simpleMessage("intercambio"),
        "swapCurrent": MessageLookupByLibrary.simpleMessage("Actual"),
        "swapDetailTitle": MessageLookupByLibrary.simpleMessage(
            "CONFIRMAR DETALLES DE CAMBIO"),
        "swapEstimated": MessageLookupByLibrary.simpleMessage("Estimado"),
        "swapFailed":
            MessageLookupByLibrary.simpleMessage("Intercambio fallido"),
        "swapGasActivate": m108,
        "swapGasAmount": m109,
        "swapGasAmountRequired": m110,
        "swapOngoing":
            MessageLookupByLibrary.simpleMessage("Intercambio en curso"),
        "swapProgress":
            MessageLookupByLibrary.simpleMessage("Detalles del Progreso"),
        "swapStarted": MessageLookupByLibrary.simpleMessage("Iniciado"),
        "swapSucceful":
            MessageLookupByLibrary.simpleMessage("Intercambio exitoso"),
        "swapTotal": MessageLookupByLibrary.simpleMessage("Total"),
        "swapUUID": MessageLookupByLibrary.simpleMessage("Intercambiar UUID"),
        "switchTheme": MessageLookupByLibrary.simpleMessage("Cambiar Tema"),
        "syncFromDate": MessageLookupByLibrary.simpleMessage(
            "Sincronización desde la fecha especificada"),
        "syncFromSaplingActivation": MessageLookupByLibrary.simpleMessage(
            "Sincronización desde la activación del retoño"),
        "syncNewTransactions": MessageLookupByLibrary.simpleMessage(
            "Sincronizar nuevas transacciones"),
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
        "takerOrder":
            MessageLookupByLibrary.simpleMessage("Orden de Comprador"),
        "timeOut": MessageLookupByLibrary.simpleMessage("Se acabó el tiempo"),
        "titleCreatePassword":
            MessageLookupByLibrary.simpleMessage("CREA UNA CONTRASEÑA"),
        "titleCurrentAsk":
            MessageLookupByLibrary.simpleMessage("Pedido seleccionado"),
        "to": MessageLookupByLibrary.simpleMessage("Para"),
        "toAddress": MessageLookupByLibrary.simpleMessage("Hacia:"),
        "tooManyAssetsEnabledSpan1":
            MessageLookupByLibrary.simpleMessage("Tu tienes"),
        "tooManyAssetsEnabledSpan2": MessageLookupByLibrary.simpleMessage(
            "activos habilitados. El límite máximo de activos habilitados es"),
        "tooManyAssetsEnabledSpan3": MessageLookupByLibrary.simpleMessage(
            ". Desactive algunos antes de agregar otros nuevos."),
        "tooManyAssetsEnabledTitle": MessageLookupByLibrary.simpleMessage(
            "Demasiados recursos habilitados"),
        "totalFees": MessageLookupByLibrary.simpleMessage("Tarifas totales:"),
        "trade": MessageLookupByLibrary.simpleMessage("INTERCAMBIO"),
        "tradeCompleted":
            MessageLookupByLibrary.simpleMessage("¡CAMBIO COMPLETADO!"),
        "tradeDetail":
            MessageLookupByLibrary.simpleMessage("DETALLES INTERCAMBIO"),
        "tradePreimageError": MessageLookupByLibrary.simpleMessage(
            "Error al calcular las tarifas comerciales"),
        "tradingFee":
            MessageLookupByLibrary.simpleMessage("tarifa de negociación:"),
        "tradingMode":
            MessageLookupByLibrary.simpleMessage("Modo de comercio:"),
        "transactionAddress":
            MessageLookupByLibrary.simpleMessage("Dirección de transacción"),
        "transactionHidden":
            MessageLookupByLibrary.simpleMessage("Transacción oculta"),
        "transactionHiddenPhishing": MessageLookupByLibrary.simpleMessage(
            "Esta transacción fue ocultada debido a un posible intento de phishing."),
        "tryRestarting": MessageLookupByLibrary.simpleMessage(
            "Si aún así algunas monedas aún no están activadas, intente reiniciar la aplicación."),
        "turkishLanguage": MessageLookupByLibrary.simpleMessage("Turco"),
        "txBlock": MessageLookupByLibrary.simpleMessage("Bloque"),
        "txConfirmations":
            MessageLookupByLibrary.simpleMessage("Confirmaciones"),
        "txConfirmed": MessageLookupByLibrary.simpleMessage("CONFIRMADO"),
        "txFee": MessageLookupByLibrary.simpleMessage("Tarifa"),
        "txFeeTitle":
            MessageLookupByLibrary.simpleMessage("tarifa de transacción:"),
        "txHash": MessageLookupByLibrary.simpleMessage("ID de transacción"),
        "txLimitExceeded": MessageLookupByLibrary.simpleMessage(
            "Demasiadas solicitudes.\nSe excedió el límite de solicitudes del historial de transacciones.\nVuelva a intentarlo más tarde."),
        "txNotConfirmed": MessageLookupByLibrary.simpleMessage("INCONFIRMADO"),
        "txleft": m112,
        "ukrainianLanguage": MessageLookupByLibrary.simpleMessage("Ucranio"),
        "unlock": MessageLookupByLibrary.simpleMessage("desbloquear"),
        "unlockFunds":
            MessageLookupByLibrary.simpleMessage("Desbloquear fondos"),
        "unlockSuccess": m113,
        "unspendable": MessageLookupByLibrary.simpleMessage("ingastable"),
        "updatesAvailable":
            MessageLookupByLibrary.simpleMessage("Nueva versión disponible"),
        "updatesChecking": MessageLookupByLibrary.simpleMessage(
            "Comprobando actualizaciones..."),
        "updatesCurrentVersion": m114,
        "updatesNotifAvailable": MessageLookupByLibrary.simpleMessage(
            "Nueva versión disponible. Por favor actualice."),
        "updatesNotifAvailableVersion": m115,
        "updatesNotifTitle":
            MessageLookupByLibrary.simpleMessage("Actualización disponible"),
        "updatesSkip": MessageLookupByLibrary.simpleMessage("Saltar por ahora"),
        "updatesTitle": m116,
        "updatesUpToDate":
            MessageLookupByLibrary.simpleMessage("Ya está actualizado"),
        "updatesUpdate": MessageLookupByLibrary.simpleMessage("Actualizar"),
        "uriInsufficientBalanceSpan1": MessageLookupByLibrary.simpleMessage(
            "No hay suficiente saldo para escaneado"),
        "uriInsufficientBalanceSpan2":
            MessageLookupByLibrary.simpleMessage("solicitud de pago."),
        "uriInsufficientBalanceTitle":
            MessageLookupByLibrary.simpleMessage("Saldo insuficiente"),
        "value": MessageLookupByLibrary.simpleMessage("Valor:"),
        "version": MessageLookupByLibrary.simpleMessage("version"),
        "viewInExplorerButton":
            MessageLookupByLibrary.simpleMessage("Explorador"),
        "viewSeedAndKeys":
            MessageLookupByLibrary.simpleMessage("Semilla y Claves Privadas"),
        "volumes": MessageLookupByLibrary.simpleMessage("Volumenes"),
        "walletInUse": MessageLookupByLibrary.simpleMessage(
            "El nombre de la billetera ya está en uso"),
        "walletMaxChar": MessageLookupByLibrary.simpleMessage(
            "El nombre de la billetera debe tener un máximo de 40 caracteres"),
        "walletOnly": MessageLookupByLibrary.simpleMessage("Solo billetera"),
        "warning": MessageLookupByLibrary.simpleMessage("¡Advertencia!"),
        "warningOkBtn": MessageLookupByLibrary.simpleMessage("Ok"),
        "warningShareLogs": MessageLookupByLibrary.simpleMessage(
            "Advertencia: en casos especiales, estos datos de registro contienen información confidencial que se puede usar para gastar monedas de intercambios fallidos."),
        "weFailedTo": m117,
        "weFailedToActivate": m118,
        "welcomeInfo": m119,
        "welcomeLetSetUp":
            MessageLookupByLibrary.simpleMessage("¡VAMOS A PREPARARNOS!"),
        "welcomeTitle": MessageLookupByLibrary.simpleMessage("BIENVENIDO"),
        "welcomeWallet": MessageLookupByLibrary.simpleMessage("wallet"),
        "willBeRedirected": MessageLookupByLibrary.simpleMessage(
            "Se le redirigirá a la página del portafolio al finalizar."),
        "willTakeTime": MessageLookupByLibrary.simpleMessage(
            "Esto llevará un tiempo y la aplicación deberá mantenerse en primer plano.\nCerrar la aplicación mientras la activación está en curso podría generar problemas."),
        "withdraw": MessageLookupByLibrary.simpleMessage("Retirar"),
        "withdrawCameraAccessText": m120,
        "withdrawCameraAccessTitle":
            MessageLookupByLibrary.simpleMessage("Acceso Denegado"),
        "withdrawConfirm":
            MessageLookupByLibrary.simpleMessage("Confirmar Retiro"),
        "withdrawConfirmError": MessageLookupByLibrary.simpleMessage(
            "Algo salió mal. Vuelva a intentarlo más tarde."),
        "withdrawValue": m121,
        "wrongCoinSpan1": MessageLookupByLibrary.simpleMessage(
            "Está intentando escanear un código QR de pago para"),
        "wrongCoinSpan2":
            MessageLookupByLibrary.simpleMessage("pero tu estas en la"),
        "wrongCoinSpan3":
            MessageLookupByLibrary.simpleMessage("pantalla de retirar"),
        "wrongCoinTitle":
            MessageLookupByLibrary.simpleMessage("Moneda equivocada"),
        "wrongPassword": MessageLookupByLibrary.simpleMessage(
            "Las contraseñas no coinciden. Inténtalo de nuevo."),
        "yes": MessageLookupByLibrary.simpleMessage("Sí"),
        "you have a fresh order that is trying to match with an existing order":
            MessageLookupByLibrary.simpleMessage(
                "tiene un pedido nuevo que está tratando de coincidir con un pedido existente"),
        "you have an active swap in progress":
            MessageLookupByLibrary.simpleMessage(
                "tienes un intercambio activo en curso"),
        "you have an order that new orders can match with":
            MessageLookupByLibrary.simpleMessage(
                "tiene un pedido con el que pueden coincidir nuevos pedidos"),
        "youAreSending":
            MessageLookupByLibrary.simpleMessage("Usted está enviando:"),
        "youWillReceiveClaim": m122,
        "youWillReceived":
            MessageLookupByLibrary.simpleMessage("Usted recibirá:"),
        "yourWallet": MessageLookupByLibrary.simpleMessage("Su billetera")
      };
}
