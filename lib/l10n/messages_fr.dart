// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static m0(protocolName) => "Activer les pièces ${protocolName} ?";

  static m1(coinName) => "Activation de ${coinName}";

  static m2(coinName) => "Activation de ${coinName}";

  static m3(protocolName) => "${protocolName} Activation en cours";

  static m4(name) => "${name} activé avec succès !";

  static m5(title) => "Seules les adresses ${title} sont affichées";

  static m6(abbr) =>
      "Impossible d\'envoyer les fonds sur l\'adresse ${abbr} car elle n\'est pas activée. Veuillez ouvrir le portfolio.";

  static m7(appName) =>
      "Non ! ${appName} est non-custodial. Aucune donnée sensible n\'est sauvegardé, ni votre clé privé, ni votre passphrases, ni votre PIN. Toutes ces données sont stockées sur votre appareil et ne sont jamais transmises.";

  static m8(appName) =>
      "${appName} est disponible pour mobile sur Android et iPhone, et pour ordinateur sur <a href=\"https://gleec.com/\">systèmes d\'exploitation Windows, Mac et Linux</a>.";

  static m9(appName) =>
      "Les autres DEX ne vous permettent généralement que d\'échanger des actifs basés sur un seul réseau de blockchain, d\'utiliser des jetons proxy et de ne permettre de passer qu\'une seule commande avec les mêmes fonds.\n\n${appName} vous permet d\'échanger nativement sur deux réseaux blockchain différents sans jetons proxy. Vous pouvez également passer plusieurs commandes avec les mêmes fonds. Par exemple, vous pouvez vendre 0,1 BTC pour KMD, QTUM ou VRSC — la première commande exécutée annule automatiquement toutes les autres commandes.";

  static m10(appName) =>
      "Plusieurs facteurs déterminent le temps de traitement de chaque échange. Le temps de blocage des actifs échangés dépend de chaque réseau (Bitcoin étant généralement le plus lent). De plus, l\'utilisateur peut personnaliser les préférences de sécurité. Par exemple, vous pouvez demander à ${appName} de considérer une transaction KMD comme finale après seulement 3 confirmations, ce qui raccourcit le temps d\'échange par rapport à l\'attente d\'une <a href=\"https://gleec.com/\">notarisation</a>.";

  static m11(appName) =>
      "Il existe deux catégories de frais à prendre en compte lors de la négociation sur ${appName}.\n\n1. ${appName} facture environ 0,13 % (1/777 du volume de négociation mais pas moins de 0,0001) comme frais de négociation pour les ordres preneurs, et les ordres fabricant n\'ont aucun frais.\n\n2. Les fabricants et les preneurs devront payer des frais de réseau normaux aux chaînes de blocs impliquées lors des transactions d\'échange atomique.\n\nLes frais de réseau peuvent varier considérablement en fonction de la paire de négociation que vous avez sélectionnée.";

  static m12(name, link, appName, appCompanyShort) =>
      "Oui! ${appName} propose une assistance via le <a href=\"${link}\">${appCompanyShort} ${name}</a>. L\'équipe et la communauté sont toujours ravies de vous aider !";

  static m13(appName) =>
      "Non! ${appName} est entièrement décentralisé. Il n\'est pas possible de limiter l\'accès des utilisateurs par un tiers.";

  static m14(appName, appCompanyShort) =>
      "${appName} est développé par l\'équipe ${appCompanyShort} . ${appCompanyShort} est l\'un des projets de blockchain les plus établis travaillant sur des solutions innovantes telles que les swaps atomiques, la preuve de travail différée et une architecture multichaîne interopérable.";

  static m15(appName) =>
      "Absolument! Vous pouvez lire notre <a href=\"https://gleec.com/\">documentation pour les développeurs</a> pour plus de détails ou nous contacter pour vos demandes de partenariat. Vous avez une question technique spécifique ? La communauté de développeurs ${appName} est toujours prête à vous aider !";

  static m16(coinName1, coinName2) => "basé sur ${coinName1}/${coinName2}";

  static m17(batteryLevelCritical) =>
      "La charge de votre batterie est essentielle (${batteryLevelCritical} %) pour effectuer un échange en toute sécurité. Veuillez le mettre en charge et réessayer.";

  static m18(batteryLevelLow) =>
      "La charge de votre batterie est inférieure à ${batteryLevelLow} %. Veuillez considérer la recharge du téléphone.";

  static m19(seconde) =>
      "Ordre en cours, veuillez patienter ${seconde} secondes!";

  static m20(index) => "Entrez le ${index} mot";

  static m21(index) => "Quel est le ${index} mot dans votre passphrase?";

  static m22(coin) => "Activation de ${coin} annulée";

  static m23(coin) => "${coin} activé avec succès";

  static m24(protocolName) => "Les pièces ${protocolName} sont activées";

  static m25(protocolName) => "${protocolName} pièces activées avec succès";

  static m26(protocolName) => "Les pièces ${protocolName} ne sont pas activées";

  static m27(name) => "Voulez-vous supprimer le contact ${name}?";

  static m28(iUnderstand) =>
      "Les phrases de départ personnalisées peuvent être moins sécurisées et plus faciles à déchiffrer qu\'une phrase de départ ou une clé privée (WIF) conforme à BIP39. Pour confirmer que vous comprenez le risque et savez ce que vous faites, saisissez \" ${iUnderstand}\" dans la case ci-dessous.";

  static m29(coinName) => "recevez des frais de transaction ${coinName}";

  static m30(coinName) => "envoyer des frais de transaction à ${coinName}";

  static m31(abbr) => "Entrez l\'adresse ${abbr} ";

  static m32(selected, remains) =>
      "Vous pouvez toujours activer ${remains}, Selected : ${selected}";

  static m33(gas) =>
      "Pas assez de gas - veuillez utiliser au moins ${gas} Gwei";

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

  static m48(coinAbbr) =>
      "Échec de l\'annulation de l\'activation de ${coinAbbr}";

  static m49(coin) => "Envoi de la demande au robinet ${coin} ...";

  static m50(appCompanyShort) => "${appCompanyShort} actualités";

  static m51(value) => "Les frais doivent être jusqu\'à ${value}";

  static m52(coin) => "${coin} commission";

  static m53(coin) => "Veuillez activer ${coin}.";

  static m54(value) => "Gwei doit atteindre ${value}";

  static m55(coinName) =>
      "Paramètres de protection des transmissions entrantes ${coinName}";

  static m56(abbr) =>
      "${abbr} balance insuffisante pour payer les frais de courtage";

  static m57(coin) => "Adresse ${coin} invalide";

  static m58(coinAbbr) => "${coinAbbr} est indisponible :(";

  static m59(coinName) =>
      "❗Attention ! Le marché pour ${coinName} a un volume de transactions inférieur à 10 000 \$ sur 24 heures !";

  static m60(value) => "La limite doit aller jusqu\'à ${value}";

  static m61(coinName, number) =>
      "Le montant minimum à vendre est ${number} ${coinName}";

  static m62(coinName, number) =>
      "Le montant minimum à acheter est ${number} ${coinName}";

  static m63(buyCoin, buyAmount, sellCoin, sellAmount) =>
      "Le montant minimum de la commande est de ${buyAmount}${buyCoin}(${sellAmount}${sellCoin})";

  static m64(coinName, number) =>
      "Le montant minimum à vendre est de ${number}${coinName}";

  static m65(minValue, coin) => "Doit être supérieur à ${minValue} ${coin}";

  static m66(appName) =>
      "Veuillez noter que vous utilisez maintenant des données cellulaires et que votre participation au réseau ${appName} P2P consomme du trafic Internet. Il est préférable d\'utiliser un réseau WiFi si votre forfait de données cellulaires est coûteux.";

  static m67(coin) => "Activez ${coin} et rechargez d\'abord le solde";

  static m68(number) => "Créer ${number} Ordre(s):";

  static m69(coin) => "La balance ${coin} est trop faible";

  static m70(coin, fee) =>
      "Pas assez de ${coin} pour payer les frais. Balance MIN necessaire ${fee} ${coin}";

  static m71(coinName) =>
      "Aucun ordre ${coinName} disponible - réessayez ultérieurement ou créez un ordre.";

  static m72(coin) => "Pas assez de ${coin} pour la transaction!";

  static m73(sell, buy) =>
      " L\'échange${sell} / ${buy} s\'est terminé avec succès";

  static m74(sell, buy) => "${sell}/${buy} échange échoué";

  static m75(sell, buy) => "${sell}/${buy} échange démarré";

  static m76(sell, buy) => "${sell}/${buy} délais d\'échange dépassé";

  static m77(coin) => "Vous avez reçu ${coin}  transaction !";

  static m78(assets) => "${assets} Actifs";

  static m79(coin) => "Tous les ordres ${coin} seront annulés.";

  static m80(delta) => "Expédient : CEX +${delta} %";

  static m81(delta) => "Cher : CEX ${delta} %";

  static m82(fill) => "${fill}% rempli";

  static m83(coin) => "Mnt. (${coin})";

  static m84(coin) => "Prix (${coin})";

  static m85(coin) => "Total (${coin})";

  static m86(abbr) =>
      "${abbr} n\'est pas actif. Veuillez activer et réessayer.";

  static m87(appName) =>
      "Quels sont les appareils compatibles avec ${appName}?";

  static m88(appName) =>
      "En quoi le trading sur ${appName} est-il différent du trading sur d\'autres DEX ?";

  static m89(appName) => "Comment sont calculés les frais sur ${appName}  ?";

  static m90(appName) => "Qui est derrière ${appName}?";

  static m91(appName) =>
      "Est-il possible de développer mon propre échange en marque blanche sur ${appName} ?";

  static m92(amount) => "Succès! ${amount} KMD reçu.";

  static m93(dd) => "${dd} jour(s)";

  static m94(hh, minutes) => "${hh}h ${minutes}m";

  static m95(mm) => "${mm}min";

  static m96(amount) => "Cliquez pour voir ${amount} orders";

  static m97(coinName, address) => "Mon adresse ${coinName}:\n${address}";

  static m98(coin) => "Rechercher les transactions ${coin} passées ?";

  static m99(count, maxCount) =>
      "Affichage de ${count} commandes sur ${maxCount}.";

  static m100(coin) => "Veuillez entrer le montant de ${coin} à acheter";

  static m101(maxCoins) =>
      "Le nombre maximum de pièces actives est de ${maxCoins}. Veuillez en désactiver certains.";

  static m102(coin) => "${coin} pas activé!";

  static m103(coin) => "Veuillez entrer le montant de ${coin} à vendre";

  static m104(coin) => "Impossible d\'activer ${coin}";

  static m105(description) =>
      "Choisissez un fichier mp3 ou wav s\'il vous plaît. Nous y jouerons quand ${description}.";

  static m106(description) => "Joué quand ${description}";

  static m107(appName) =>
      "Si vous avez des questions ou si vous pensez avoir rencontré un problème technique avec l\'application ${appName} , vous pouvez le signaler et obtenir de l\'aide de notre équipe.";

  static m108(coin) =>
      "Veuillez d\'abord activer ${coin} et recharger le solde";

  static m109(coin) =>
      "${coin}  solde insuffisant pour payer les frais de transaction.";

  static m110(coin, amount) =>
      "${coin}  solde insuffisant pour payer les frais de transaction. ${coin} ${amount} requis.";

  static m111(name) =>
      "Quelles transactions ${name} souhaitez-vous synchroniser ?";

  static m112(left) => "Transactions restantes : ${left}";

  static m113(amnt, hash) =>
      " ${amnt}  fonds ont été débloqués avec succès - TX : ${hash}";

  static m114(version) => "Version ${version} en cours d\'utilisation";

  static m115(version) =>
      "Version ${version} disponible. Veuillez mettre à jour.";

  static m116(appName) => "Mise à jour ${appName}";

  static m117(coinAbbr) => "Activation ${coinAbbr} échoué";

  static m118(coinAbbr) =>
      "Activation ${coinAbbr} échoué.\nVeuillez redémarrer l\'application et réessayer.";

  static m119(appName) =>
      "Gleec Wallet est un portefeuille multi crypto-monnaies de nouvelle génération doté de la fonctionnalité DEX native de troisième génération et encore bien plus.";

  static m120(appName) =>
      "Vous avez précédemment refusé à ${appName} l\'accès à la caméra.\nVeuillez modifier manuellement l\'autorisation de l\'appareil photo dans les paramètres de votre téléphone pour procéder à l\'analyse du code QR.";

  static m121(amount, coinName) => "ENVOYER ${amount} ${coinName}";

  static m122(amount, coin) => "Vous recevrez ${amount} ${coin}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "Active": MessageLookupByLibrary.simpleMessage("Active"),
        "Applause": MessageLookupByLibrary.simpleMessage("Applause"),
        "Can\'t play that":
            MessageLookupByLibrary.simpleMessage("Lecture impossible"),
        "Failed": MessageLookupByLibrary.simpleMessage("Erreur"),
        "Maker": MessageLookupByLibrary.simpleMessage("Maker"),
        "Optional": MessageLookupByLibrary.simpleMessage("Facultatif"),
        "Play at full volume":
            MessageLookupByLibrary.simpleMessage("\n\nÉcouter au volume max"),
        "Sound": MessageLookupByLibrary.simpleMessage("Son"),
        "Taker": MessageLookupByLibrary.simpleMessage("Taker"),
        "a swap fails":
            MessageLookupByLibrary.simpleMessage("un échange a échoué"),
        "a swap runs to completion":
            MessageLookupByLibrary.simpleMessage("un échange est en cours"),
        "accepteula": MessageLookupByLibrary.simpleMessage(
            "Accepter les conditions générales de ventes"),
        "accepttac": MessageLookupByLibrary.simpleMessage(
            "Accepter les conditions générales d\'utilisations"),
        "activateAccessBiometric": MessageLookupByLibrary.simpleMessage(
            "Activer la protection Biométrique"),
        "activateAccessPin":
            MessageLookupByLibrary.simpleMessage("Activer la protection PIN"),
        "activateCoins": m0,
        "activating": m1,
        "activation": m2,
        "activationCancelled": MessageLookupByLibrary.simpleMessage(
            "Activation des pièces annulée"),
        "activationInProgress": m3,
        "addCoin":
            MessageLookupByLibrary.simpleMessage("Activer la crypto-monnaie"),
        "addingCoinSuccess": m4,
        "addressAdd": MessageLookupByLibrary.simpleMessage("Ajouter Adresse"),
        "addressBook": MessageLookupByLibrary.simpleMessage("Répertoire"),
        "addressBookEmpty":
            MessageLookupByLibrary.simpleMessage("Répertoire vide"),
        "addressBookFilter": m5,
        "addressBookTitle": MessageLookupByLibrary.simpleMessage("Répertoire"),
        "addressCoinInactive": m6,
        "addressNotFound":
            MessageLookupByLibrary.simpleMessage("Pas de résultats"),
        "addressSelectCoin":
            MessageLookupByLibrary.simpleMessage("Choisir Crypto-monnaie"),
        "addressSend":
            MessageLookupByLibrary.simpleMessage("Adresse du destinataire"),
        "advanced": MessageLookupByLibrary.simpleMessage("Avancé"),
        "all": MessageLookupByLibrary.simpleMessage("Tout"),
        "allPastTransactions": MessageLookupByLibrary.simpleMessage(
            "Votre portefeuille affichera toutes les transactions passées. Cela prendra beaucoup de temps et de stockage car tous les blocs seront téléchargés et analysés."),
        "allowCustomSeed": MessageLookupByLibrary.simpleMessage(
            "Autoriser les passphrases personnalisées"),
        "alreadyExists":
            MessageLookupByLibrary.simpleMessage("Doublon existant"),
        "amount": MessageLookupByLibrary.simpleMessage("Montant"),
        "amountToSell":
            MessageLookupByLibrary.simpleMessage("Montant à vendre"),
        "answer_1": m7,
        "answer_10": m8,
        "answer_2": m9,
        "answer_3": m10,
        "answer_4": MessageLookupByLibrary.simpleMessage(
            "Oui. Vous devez rester connecté à Internet et exécuter votre application pour réussir chaque échange atomique (de très courtes pauses de connectivité sont généralement acceptables). Sinon, il y a un risque d\'annulation de transaction si vous êtes un fabricant et un risque de perte de fonds si vous êtes un preneur. Le protocole d\'échange atomique exige que les deux participants restent en ligne et surveillent les chaînes de blocs impliquées pour que le processus reste atomique."),
        "answer_5": m11,
        "answer_6": m12,
        "answer_7": m13,
        "answer_8": m14,
        "answer_9": m15,
        "areYouSure": MessageLookupByLibrary.simpleMessage("ÊTES-VOUS SÛR?"),
        "authenticate":
            MessageLookupByLibrary.simpleMessage("authentification"),
        "automaticRedirected": MessageLookupByLibrary.simpleMessage(
            "Vous serez automatiquement redirigé vers la page du portfolio une fois le processus de réactivation terminé."),
        "availableVolume": MessageLookupByLibrary.simpleMessage("vol max"),
        "back": MessageLookupByLibrary.simpleMessage("retour"),
        "backupTitle": MessageLookupByLibrary.simpleMessage("Sauvegarde"),
        "basedOnCoinRatio": m16,
        "batteryCriticalError": m17,
        "batteryLowWarning": m18,
        "batterySavingWarning": MessageLookupByLibrary.simpleMessage(
            "Votre téléphone est en mode d\'économie de batterie. Veuillez désactiver ce mode ou ne PAS mettre l\'application en arrière-plan, sinon l\'application pourrait être tuée par le système d\'exploitation et l\'échange échouerait."),
        "bestAvailableRate":
            MessageLookupByLibrary.simpleMessage("Meilleur tarif disponible"),
        "builtKomodo": MessageLookupByLibrary.simpleMessage("Conçu sur Gleec"),
        "builtOnKmd": MessageLookupByLibrary.simpleMessage("Conçu sur Gleec"),
        "buy": MessageLookupByLibrary.simpleMessage("Acheter"),
        "buyOrderType": MessageLookupByLibrary.simpleMessage(
            "Convertir en Maker s\'il n\'y a pas de correspondance"),
        "buySuccessWaiting": MessageLookupByLibrary.simpleMessage(
            "Échange émis, veuillez patienter!"),
        "buySuccessWaitingError": m19,
        "buyTestCoinWarning": MessageLookupByLibrary.simpleMessage(
            "Attention, vous êtes prêt à acheter des pièces test SANS valeur réelle !"),
        "camoPinBioProtectionConflict": MessageLookupByLibrary.simpleMessage(
            "Le code PIN de camouflage et la protection bio ne peuvent pas être activés en même temps."),
        "camoPinBioProtectionConflictTitle":
            MessageLookupByLibrary.simpleMessage(
                "Camo PIN et conflit de protection Bio."),
        "camoPinChange":
            MessageLookupByLibrary.simpleMessage("Changer Masque PIN"),
        "camoPinCreate":
            MessageLookupByLibrary.simpleMessage("Créer Masque PIN"),
        "camoPinDesc": MessageLookupByLibrary.simpleMessage(
            "Si vous déverrouillez l\'application avec le code PIN de camouflage, un faux solde FAIBLE sera affiché et l\'option de configuration du code PIN de camouflage ne sera PAS visible dans les paramètres."),
        "camoPinInvalid":
            MessageLookupByLibrary.simpleMessage("Masque PIN incorrect"),
        "camoPinLink": MessageLookupByLibrary.simpleMessage("Masque PIN"),
        "camoPinNotFound":
            MessageLookupByLibrary.simpleMessage("Masque PIN introuvable"),
        "camoPinOff": MessageLookupByLibrary.simpleMessage("Off"),
        "camoPinOn": MessageLookupByLibrary.simpleMessage("On"),
        "camoPinSaved":
            MessageLookupByLibrary.simpleMessage("Masque PIN sauvegardé"),
        "camoPinTitle": MessageLookupByLibrary.simpleMessage("Masque PIN"),
        "camoSetupSubtitle": MessageLookupByLibrary.simpleMessage(
            "Entrer un nouveau Masque PIN"),
        "camoSetupTitle":
            MessageLookupByLibrary.simpleMessage("Configuration Masque PIN"),
        "camouflageSetup":
            MessageLookupByLibrary.simpleMessage("Configuration Masque PIN"),
        "cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "cancelActivation":
            MessageLookupByLibrary.simpleMessage("Annuler l\'activation"),
        "cancelActivationQuestion": MessageLookupByLibrary.simpleMessage(
            "Etes-vous sûr de vouloir annuler l\'activation ?"),
        "cancelButton": MessageLookupByLibrary.simpleMessage("Annuler"),
        "cancelOrder": MessageLookupByLibrary.simpleMessage("Annuler l\'ordre"),
        "candleChartError": MessageLookupByLibrary.simpleMessage(
            "Un problème est survenu. Réessayez plus tard."),
        "cantDeleteDefaultCoinOk": MessageLookupByLibrary.simpleMessage("Ok"),
        "cantDeleteDefaultCoinSpan": MessageLookupByLibrary.simpleMessage(
            " est une pièce par défaut. Les pièces par défaut ne peuvent pas être désactivées."),
        "cantDeleteDefaultCoinTitle":
            MessageLookupByLibrary.simpleMessage("Désactivation impossible"),
        "cex": MessageLookupByLibrary.simpleMessage("CEX"),
        "cexChangeRate":
            MessageLookupByLibrary.simpleMessage("Taux de change CEX"),
        "cexData": MessageLookupByLibrary.simpleMessage("Données CEX"),
        "cexDataDesc": MessageLookupByLibrary.simpleMessage(
            "Les données de marché (prix, graphiques, etc.) marquées de cette icône proviennent de sources tierces (<a href=\"https://www.coingecko.com/\">coingecko.com</a>, <a href=\"https://openrates.io/\">openrates.io</a>)."),
        "cexRate": MessageLookupByLibrary.simpleMessage("Taux CEX"),
        "changePin": MessageLookupByLibrary.simpleMessage("Changer code PIN"),
        "checkForUpdates":
            MessageLookupByLibrary.simpleMessage("Vérifier les mises à jours"),
        "checkOut": MessageLookupByLibrary.simpleMessage("Check-out"),
        "checkSeedPhrase":
            MessageLookupByLibrary.simpleMessage("Vérifier la passphrase"),
        "checkSeedPhraseButton1":
            MessageLookupByLibrary.simpleMessage("CONTINUER"),
        "checkSeedPhraseButton2": MessageLookupByLibrary.simpleMessage(
            "RETOURNEZ ET VÉRIFIEZ À NOUVEAU"),
        "checkSeedPhraseHint": m20,
        "checkSeedPhraseInfo": MessageLookupByLibrary.simpleMessage(
            "Votre passphrase est importante - c\'est pourquoi nous voulons nous assurer qu\'elle est correcte. Nous vous poserons trois questions différentes sur votre passphrase pour vous assurer que vous pourrez facilement restaurer votre portefeuille à tout moment."),
        "checkSeedPhraseSubtile": m21,
        "checkSeedPhraseTitle": MessageLookupByLibrary.simpleMessage(
            "VERIFIONS UNE NOUVELLE FOIS VOTRE PASSPHRASE"),
        "chineseLanguage": MessageLookupByLibrary.simpleMessage("Chinois"),
        "claim": MessageLookupByLibrary.simpleMessage("réclamer"),
        "claimTitle": MessageLookupByLibrary.simpleMessage(
            "Réclamer votre récompense KMD?"),
        "clickToSee": MessageLookupByLibrary.simpleMessage("Cliquez pour voir"),
        "clipboard": MessageLookupByLibrary.simpleMessage(
            "Copié dans le presse-papiers"),
        "clipboardCopy": MessageLookupByLibrary.simpleMessage(
            "Copier dans le presse-papiers"),
        "close": MessageLookupByLibrary.simpleMessage("Fermer"),
        "closeMessage":
            MessageLookupByLibrary.simpleMessage("Fermer Message d\'Erreur"),
        "closePreview": MessageLookupByLibrary.simpleMessage("Fermer aperçu"),
        "code": MessageLookupByLibrary.simpleMessage("Code:"),
        "cofirmCancelActivation": MessageLookupByLibrary.simpleMessage(
            "Etes-vous sûr de vouloir annuler l\'activation ?"),
        "coinActivationCancelled": m22,
        "coinActivationSuccessfull": m23,
        "coinSelectClear": MessageLookupByLibrary.simpleMessage("Effacer"),
        "coinSelectNotFound": MessageLookupByLibrary.simpleMessage(
            "Aucune crypto-monnaie active"),
        "coinSelectTitle":
            MessageLookupByLibrary.simpleMessage("Choisir crypto-monnaie"),
        "coinsActivatedLimitReached": MessageLookupByLibrary.simpleMessage(
            "Vous avez sélectionné le nombre maximum d\'éléments"),
        "coinsAreActivated": m24,
        "coinsAreActivatedSuccessfully": m25,
        "coinsAreNotActivated": m26,
        "comingSoon": MessageLookupByLibrary.simpleMessage("A venir..."),
        "commingsoon":
            MessageLookupByLibrary.simpleMessage("TX détails à venir!"),
        "commingsoonGeneral":
            MessageLookupByLibrary.simpleMessage("Détails à venir!"),
        "commissionFee":
            MessageLookupByLibrary.simpleMessage("frais de commission"),
        "comparedTo24hrCex": MessageLookupByLibrary.simpleMessage(
            "par rapport à la moyenne Prix CEX 24h"),
        "comparedToCex": MessageLookupByLibrary.simpleMessage("comparé au CEX"),
        "configureWallet": MessageLookupByLibrary.simpleMessage(
            "Portefeuille en cours de configuration, veuillez patienter..."),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirmer"),
        "confirmCamouflageSetup":
            MessageLookupByLibrary.simpleMessage("Confirmer Masque PIN"),
        "confirmCancel": MessageLookupByLibrary.simpleMessage(
            "Êtes-vous sûr d\'annuler l\'odre"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirmez le mot de passe"),
        "confirmPin":
            MessageLookupByLibrary.simpleMessage("Confirmer le code PIN"),
        "confirmSeed":
            MessageLookupByLibrary.simpleMessage("Confirmer la passphrase"),
        "confirmeula": MessageLookupByLibrary.simpleMessage(
            "En cliquant sur le bouton ci-dessous vous confrimez avec lu et accepté les CGV et CGU"),
        "connecting": MessageLookupByLibrary.simpleMessage("Connexion…"),
        "contactCancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "contactDelete":
            MessageLookupByLibrary.simpleMessage("Supprimer Contact"),
        "contactDeleteBtn": MessageLookupByLibrary.simpleMessage("Supprimer"),
        "contactDeleteWarning": m27,
        "contactDiscardBtn": MessageLookupByLibrary.simpleMessage("Annuler"),
        "contactEdit": MessageLookupByLibrary.simpleMessage("Editer"),
        "contactExit": MessageLookupByLibrary.simpleMessage("Fermer"),
        "contactExitWarning":
            MessageLookupByLibrary.simpleMessage("Annuler vos modifications ?"),
        "contactNotFound":
            MessageLookupByLibrary.simpleMessage("Aucun contact trouvé"),
        "contactSave": MessageLookupByLibrary.simpleMessage("Enregistrer"),
        "contactTitle": MessageLookupByLibrary.simpleMessage("Détail Contact"),
        "contactTitleName": MessageLookupByLibrary.simpleMessage("Nom"),
        "contract": MessageLookupByLibrary.simpleMessage("Contracter"),
        "convert": MessageLookupByLibrary.simpleMessage("Convertir"),
        "couldNotLaunchUrl":
            MessageLookupByLibrary.simpleMessage("Impossible de lancer l\'URL"),
        "couldntImportError":
            MessageLookupByLibrary.simpleMessage("Import impossible:"),
        "create": MessageLookupByLibrary.simpleMessage("Échange"),
        "createAWallet":
            MessageLookupByLibrary.simpleMessage("CRÉER UN PORTEFEUILLE"),
        "createContact": MessageLookupByLibrary.simpleMessage("Créer contact"),
        "createPin": MessageLookupByLibrary.simpleMessage("Créer PIN"),
        "currency": MessageLookupByLibrary.simpleMessage("Monnaie"),
        "currencyDialogTitle": MessageLookupByLibrary.simpleMessage("Monnaie"),
        "currentValue": MessageLookupByLibrary.simpleMessage("Prix actuel:"),
        "customFee":
            MessageLookupByLibrary.simpleMessage("Frais personnalisés"),
        "customFeeWarning": MessageLookupByLibrary.simpleMessage(
            "N\'utiliser les frais personnalisés que si vous savez ce que vous faite!"),
        "customSeedWarning": m28,
        "dPow": MessageLookupByLibrary.simpleMessage("Gleec sécurité dPoW"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "decryptingWallet": MessageLookupByLibrary.simpleMessage(
            "Décryptage du portefeuille..."),
        "delete": MessageLookupByLibrary.simpleMessage("Supprimer"),
        "deleteConfirm":
            MessageLookupByLibrary.simpleMessage("Confirmer désactivation"),
        "deleteSpan1":
            MessageLookupByLibrary.simpleMessage("Voulez-vous supprimer"),
        "deleteSpan2": MessageLookupByLibrary.simpleMessage(
            " de votre portefeuille ? Toutes les commandes sans correspondance seront annulées."),
        "deleteSpan3":
            MessageLookupByLibrary.simpleMessage(" sera également désactivé"),
        "deleteWallet":
            MessageLookupByLibrary.simpleMessage("Supprimer le portefeuille"),
        "deletingWallet":
            MessageLookupByLibrary.simpleMessage("Supression portefeuille…"),
        "detailedFeesReceiveCoinTransactionFee": m29,
        "detailedFeesSendCoinTransactionFee": m30,
        "detailedFeesSendTradingFeeTransactionFee":
            MessageLookupByLibrary.simpleMessage(
                "envoyer des frais de négociation frais de transaction"),
        "detailedFeesTradingFee":
            MessageLookupByLibrary.simpleMessage("frais de négociation"),
        "details": MessageLookupByLibrary.simpleMessage("détails"),
        "deutscheLanguage": MessageLookupByLibrary.simpleMessage("Allemand"),
        "developerTitle": MessageLookupByLibrary.simpleMessage("Développeur"),
        "dex": MessageLookupByLibrary.simpleMessage("DEX"),
        "dexIsNotAvailable": MessageLookupByLibrary.simpleMessage(
            "Cette crypto-monnaie n\'est pas supporté par DEX"),
        "disableScreenshots": MessageLookupByLibrary.simpleMessage(
            "Désactiver les captures d\'écran/aperçu"),
        "disclaimerAndTos": MessageLookupByLibrary.simpleMessage(
            "Avertissement et Conditions d\'utilisation"),
        "doNotCloseTheAppTapForMoreInfo": MessageLookupByLibrary.simpleMessage(
            "Ne fermez pas l\'application. Appuyez pour plus d\'informations..."),
        "done": MessageLookupByLibrary.simpleMessage("Terminé"),
        "dontAskAgain":
            MessageLookupByLibrary.simpleMessage("Ne plus demander"),
        "dontWantPassword": MessageLookupByLibrary.simpleMessage(
            "Je ne veux pas de mot de passe"),
        "duration": MessageLookupByLibrary.simpleMessage("Durée"),
        "editContact": MessageLookupByLibrary.simpleMessage("Editer contact"),
        "emptyCoin": m31,
        "emptyExportPass": MessageLookupByLibrary.simpleMessage(
            "Le mot de passe chiffré ne peut être nul"),
        "emptyImportPass": MessageLookupByLibrary.simpleMessage(
            "Le mot de passe ne peut être nul"),
        "emptyName": MessageLookupByLibrary.simpleMessage(
            "Le nom du contact ne peut être nul"),
        "emptyWallet": MessageLookupByLibrary.simpleMessage(
            "Le nom du portefeuille ne peut être nul"),
        "enable": m32,
        "enableNotificationsForActivationProgress":
            MessageLookupByLibrary.simpleMessage(
                "Veuillez activer les notifications pour obtenir des mises à jour sur la progression de l\'activation."),
        "enableTestCoins": MessageLookupByLibrary.simpleMessage(
            "Activer les crypto-monnaies de Test"),
        "enablingTooManyAssetsSpan1":
            MessageLookupByLibrary.simpleMessage("Vous avez"),
        "enablingTooManyAssetsSpan2": MessageLookupByLibrary.simpleMessage(
            " actifs activés et tentative d\'activation"),
        "enablingTooManyAssetsSpan3": MessageLookupByLibrary.simpleMessage(
            " Suite. La limite maximale des éléments activés est"),
        "enablingTooManyAssetsSpan4": MessageLookupByLibrary.simpleMessage(
            ". Veuillez en désactiver certains avant d\'en ajouter de nouveaux."),
        "enablingTooManyAssetsTitle": MessageLookupByLibrary.simpleMessage(
            "Tentative d\'activation d\'un trop grand nombre d\'éléments"),
        "encryptingWallet": MessageLookupByLibrary.simpleMessage(
            "Chiffrement du portefeuille..."),
        "englishLanguage": MessageLookupByLibrary.simpleMessage("Anglais"),
        "enterNewPinCode":
            MessageLookupByLibrary.simpleMessage("Enter votre nouveau PIN"),
        "enterOldPinCode":
            MessageLookupByLibrary.simpleMessage("Entrer votre ancien PIN"),
        "enterPinCode":
            MessageLookupByLibrary.simpleMessage("Entrez votre code PIN"),
        "enterSeedPhrase":
            MessageLookupByLibrary.simpleMessage("Entrez votre passphrase"),
        "enterSellAmount": MessageLookupByLibrary.simpleMessage(
            "Vous devez d\'abord entrer le prix de vente"),
        "enterpassword": MessageLookupByLibrary.simpleMessage(
            "Veuillez entrer votre mot de passe pour continuer."),
        "errorAmountBalance":
            MessageLookupByLibrary.simpleMessage("Solde insuffisant"),
        "errorNotAValidAddress":
            MessageLookupByLibrary.simpleMessage("Adresse non valide"),
        "errorNotAValidAddressSegWit": MessageLookupByLibrary.simpleMessage(
            "Adresses Segwit non supportées (pour le moment)"),
        "errorNotEnoughGas": m33,
        "errorTryAgain":
            MessageLookupByLibrary.simpleMessage("Erreur, veuillez réessayer"),
        "errorTryLater": MessageLookupByLibrary.simpleMessage(
            "Erreur, merci d\'essayer plus tard"),
        "errorValueEmpty": MessageLookupByLibrary.simpleMessage(
            "La valeur est trop élevée ou trop basse"),
        "errorValueNotEmpty": MessageLookupByLibrary.simpleMessage(
            "S\'il vous plaît entrer des données"),
        "estimateValue":
            MessageLookupByLibrary.simpleMessage("Valeur totale estimée"),
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
            "Exemple: build case level ..."),
        "exchangeExpedient": MessageLookupByLibrary.simpleMessage("Opportun"),
        "exchangeExpensive": MessageLookupByLibrary.simpleMessage("Coûteux"),
        "exchangeIdentical":
            MessageLookupByLibrary.simpleMessage("Identique au CEX"),
        "exchangeRate": MessageLookupByLibrary.simpleMessage("Taux de change:"),
        "exchangeTitle": MessageLookupByLibrary.simpleMessage("ÉCHANGE"),
        "exportButton": MessageLookupByLibrary.simpleMessage("Exporter"),
        "exportContactsTitle": MessageLookupByLibrary.simpleMessage("Contacts"),
        "exportDesc": MessageLookupByLibrary.simpleMessage(
            "Veuillez selectionner les objets à exporter dans le fichier chiffré."),
        "exportLink": MessageLookupByLibrary.simpleMessage("Exporter"),
        "exportNotesTitle": MessageLookupByLibrary.simpleMessage("Notes"),
        "exportSuccessTitle": MessageLookupByLibrary.simpleMessage(
            "Les objets ont été exportés avec succès:"),
        "exportSwapsTitle": MessageLookupByLibrary.simpleMessage("Échange"),
        "exportTitle": MessageLookupByLibrary.simpleMessage("Exporter"),
        "failedToCancelActivation": m48,
        "fakeBalanceAmt":
            MessageLookupByLibrary.simpleMessage("Montant du faux solde :"),
        "faqTitle": MessageLookupByLibrary.simpleMessage("Foire aux questions"),
        "faucetError": MessageLookupByLibrary.simpleMessage("Erreur"),
        "faucetInProgress": m49,
        "faucetName": MessageLookupByLibrary.simpleMessage("FAUCET"),
        "faucetSuccess": MessageLookupByLibrary.simpleMessage("Succès"),
        "faucetTimedOut":
            MessageLookupByLibrary.simpleMessage("La demande a expiré"),
        "feedNewsTab": MessageLookupByLibrary.simpleMessage("Actualités"),
        "feedNotFound": MessageLookupByLibrary.simpleMessage("Rien ici"),
        "feedNotifTitle": m50,
        "feedReadMore": MessageLookupByLibrary.simpleMessage("Lire plus..."),
        "feedTab": MessageLookupByLibrary.simpleMessage("Fil"),
        "feedTitle": MessageLookupByLibrary.simpleMessage("Fil d\'Actualités"),
        "feedUnableToProceed": MessageLookupByLibrary.simpleMessage(
            "Impossible de mettre à jour le fil d\'actu"),
        "feedUnableToUpdate": MessageLookupByLibrary.simpleMessage(
            "Impossible de recevoir les mises à jour du fil d\'actu"),
        "feedUpToDate": MessageLookupByLibrary.simpleMessage("Déjà à jour"),
        "feedUpdated":
            MessageLookupByLibrary.simpleMessage("Fil d\'actualité mis à jour"),
        "feedback":
            MessageLookupByLibrary.simpleMessage("Envoyer des commentaires"),
        "feesError": m51,
        "filtersAll": MessageLookupByLibrary.simpleMessage("Tout"),
        "filtersButton": MessageLookupByLibrary.simpleMessage("Filtrer"),
        "filtersClearAll":
            MessageLookupByLibrary.simpleMessage("Effacer tous les filtres"),
        "filtersFailed": MessageLookupByLibrary.simpleMessage("Échoué"),
        "filtersFrom": MessageLookupByLibrary.simpleMessage("du"),
        "filtersMaker": MessageLookupByLibrary.simpleMessage("Maker"),
        "filtersReceive":
            MessageLookupByLibrary.simpleMessage("Recevoir crypto-monnaie"),
        "filtersSell":
            MessageLookupByLibrary.simpleMessage("Vendre crypto-monnaie"),
        "filtersStatus": MessageLookupByLibrary.simpleMessage("Statut"),
        "filtersSuccessful": MessageLookupByLibrary.simpleMessage("Réussi"),
        "filtersTaker": MessageLookupByLibrary.simpleMessage("Taker"),
        "filtersTo": MessageLookupByLibrary.simpleMessage("au"),
        "filtersType": MessageLookupByLibrary.simpleMessage("Taker/Maker"),
        "fingerprint":
            MessageLookupByLibrary.simpleMessage("Empreinte digitale"),
        "finishingUp": MessageLookupByLibrary.simpleMessage(
            "Je termine, veuillez patienter"),
        "foundQrCode": MessageLookupByLibrary.simpleMessage("Code QR trouvé"),
        "frenchLanguage": MessageLookupByLibrary.simpleMessage("Français"),
        "from": MessageLookupByLibrary.simpleMessage("De"),
        "futureTransactions": MessageLookupByLibrary.simpleMessage(
            "Nous synchroniserons les futures transactions effectuées après l\'activation associée à votre clé publique. C’est l’option la plus rapide et celle qui nécessite le moins de stockage."),
        "gasFee": m52,
        "gasLimit": MessageLookupByLibrary.simpleMessage("limite Gas"),
        "gasNotActive": m53,
        "gasPrice": MessageLookupByLibrary.simpleMessage("prix Gas"),
        "generalPinNotActive": MessageLookupByLibrary.simpleMessage(
            "Protection PIN pas activé.\nCamouflage PIN non disponible.\nVeuillez activer la protection PIN."),
        "getBackupPhrase": MessageLookupByLibrary.simpleMessage(
            "Important: sauvegardez votre passphrase avant de continuer!"),
        "gettingTxWait": MessageLookupByLibrary.simpleMessage(
            "En cours de transaction, veuillez patienter"),
        "goToPorfolio":
            MessageLookupByLibrary.simpleMessage("Ouvrir portfolio"),
        "gweiError": m54,
        "helpLink": MessageLookupByLibrary.simpleMessage("Aide"),
        "helpTitle": MessageLookupByLibrary.simpleMessage("Aide et Assistance"),
        "hideBalance": MessageLookupByLibrary.simpleMessage("Masquer balances"),
        "hintConfirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirmez le Mot de passe"),
        "hintCreatePassword":
            MessageLookupByLibrary.simpleMessage("Créer Mot de passe"),
        "hintCurrentPassword":
            MessageLookupByLibrary.simpleMessage("Mot de passe actuel"),
        "hintEnterPassword":
            MessageLookupByLibrary.simpleMessage("Tapez votre Mot de passe"),
        "hintEnterSeedPhrase":
            MessageLookupByLibrary.simpleMessage("Entrez votre passphrase"),
        "hintNameYourWallet":
            MessageLookupByLibrary.simpleMessage("Nommez votre portefeuille"),
        "hintPassword": MessageLookupByLibrary.simpleMessage("Mot de passe"),
        "history": MessageLookupByLibrary.simpleMessage("historique"),
        "hours": MessageLookupByLibrary.simpleMessage("h"),
        "hungarianLanguage": MessageLookupByLibrary.simpleMessage("Hongrois"),
        "iUnderstand": MessageLookupByLibrary.simpleMessage("Je comprends"),
        "importButton": MessageLookupByLibrary.simpleMessage("Importer"),
        "importDecryptError": MessageLookupByLibrary.simpleMessage(
            "Données corrompues ou Mot de passe incorrect"),
        "importDesc":
            MessageLookupByLibrary.simpleMessage("données à importer:"),
        "importFileNotFound":
            MessageLookupByLibrary.simpleMessage("Fichier non trouvé"),
        "importInvalidSwapData": MessageLookupByLibrary.simpleMessage(
            "Données d\'échange non valides. Veuillez fournir un fichier JSON d\'état d\'échange valide."),
        "importLink": MessageLookupByLibrary.simpleMessage("Importer"),
        "importLoadDesc": MessageLookupByLibrary.simpleMessage(
            "Veuillez selectionner le chiffré à importer."),
        "importLoadSwapDesc": MessageLookupByLibrary.simpleMessage(
            "Veuillez selectionner le fichier texte d\'échange à importer."),
        "importLoading": MessageLookupByLibrary.simpleMessage("Ouverture..."),
        "importPassCancel": MessageLookupByLibrary.simpleMessage("Retour"),
        "importPassOk": MessageLookupByLibrary.simpleMessage("Ok"),
        "importPassword": MessageLookupByLibrary.simpleMessage("Mot de passe"),
        "importSingleSwapLink":
            MessageLookupByLibrary.simpleMessage("Importer Échange Simple"),
        "importSingleSwapTitle":
            MessageLookupByLibrary.simpleMessage("Importer Échange"),
        "importSomeItemsSkippedWarning": MessageLookupByLibrary.simpleMessage(
            "Des données ont été ignorées"),
        "importSuccessTitle": MessageLookupByLibrary.simpleMessage(
            "Données importé avec succès:"),
        "importSwapFailed": MessageLookupByLibrary.simpleMessage(
            "Impossible d\'importer l\'échange"),
        "importSwapJsonDecodingError": MessageLookupByLibrary.simpleMessage(
            "Erreur décodage fichier json"),
        "importTitle": MessageLookupByLibrary.simpleMessage("Importer"),
        "incomingTransactionsProtectionSettings": m55,
        "infoPasswordDialog": MessageLookupByLibrary.simpleMessage(
            "Si vous n\'entrez pas de mot de passe, vous devrez entrer votre passphrase chaque fois que vous souhaitez accéder à votre portefeuille."),
        "infoTrade1": MessageLookupByLibrary.simpleMessage(
            "La demande d\'échange ne peut pas être annulée et constitue un événement final!"),
        "infoTrade2": MessageLookupByLibrary.simpleMessage(
            "Cette transaction peut prendre jusqu\'à 10 minutes. NE FERMEZ PAS cette application!"),
        "infoWalletPassword": MessageLookupByLibrary.simpleMessage(
            "Vous pouvez choisir de chiffrer votre portefeuille avec un mot de passe. Si vous choisissez de ne pas utiliser de mot de passe, vous devrez entrer votre passphrase chaque fois que vous souhaitez accéder à votre portefeuille."),
        "insufficientBalanceToPay": m56,
        "insufficientText": MessageLookupByLibrary.simpleMessage(
            "Le volume minimum requis pour cet ordre est"),
        "insufficientTitle":
            MessageLookupByLibrary.simpleMessage("Volume insuffisant"),
        "internetRefreshButton":
            MessageLookupByLibrary.simpleMessage("Rafraichir"),
        "internetRestored":
            MessageLookupByLibrary.simpleMessage("Connexion Internet Restauré"),
        "invalidCoinAddress": m57,
        "invalidSwap":
            MessageLookupByLibrary.simpleMessage("Échange impossible"),
        "invalidSwapDetailsLink":
            MessageLookupByLibrary.simpleMessage("Détails"),
        "isUnavailable": m58,
        "japaneseLanguage": MessageLookupByLibrary.simpleMessage("Japonais"),
        "koreanLanguage": MessageLookupByLibrary.simpleMessage("Coréen"),
        "language": MessageLookupByLibrary.simpleMessage("Langue"),
        "latestTxs":
            MessageLookupByLibrary.simpleMessage("Dernières Transactions"),
        "legalTitle": MessageLookupByLibrary.simpleMessage("Légal"),
        "less": MessageLookupByLibrary.simpleMessage("Moins"),
        "lessThanCaution": m59,
        "limitError": m60,
        "loading": MessageLookupByLibrary.simpleMessage("Chargement..."),
        "loadingOrderbook":
            MessageLookupByLibrary.simpleMessage("Chargement des ordres ..."),
        "lockScreen":
            MessageLookupByLibrary.simpleMessage("L\'écran est verrouillé"),
        "lockScreenAuth": MessageLookupByLibrary.simpleMessage(
            "S\'il vous plaît authentifiez vous!"),
        "login": MessageLookupByLibrary.simpleMessage("se connecter"),
        "logout": MessageLookupByLibrary.simpleMessage("Se Déconnecter"),
        "logoutOnExit":
            MessageLookupByLibrary.simpleMessage("Déconnexion à la sortie"),
        "logoutWarning": MessageLookupByLibrary.simpleMessage(
            "Êtes-vous sur de vouloir quitter?"),
        "logoutsettings":
            MessageLookupByLibrary.simpleMessage("Paramètres de déconnexion"),
        "longMinutes": MessageLookupByLibrary.simpleMessage("minutes"),
        "makeAorder": MessageLookupByLibrary.simpleMessage("creer un ordre"),
        "makerDetailsCancel":
            MessageLookupByLibrary.simpleMessage("Annuler ordre"),
        "makerDetailsCreated": MessageLookupByLibrary.simpleMessage("Créer à"),
        "makerDetailsFor": MessageLookupByLibrary.simpleMessage("Reçu"),
        "makerDetailsId": MessageLookupByLibrary.simpleMessage("ID Ordre"),
        "makerDetailsNoSwaps": MessageLookupByLibrary.simpleMessage(
            "Aucun échange démarré par cet ordre"),
        "makerDetailsPrice": MessageLookupByLibrary.simpleMessage("Prix"),
        "makerDetailsSell": MessageLookupByLibrary.simpleMessage("Vendre"),
        "makerDetailsSwaps": MessageLookupByLibrary.simpleMessage(
            "Échange démarré par cet ordre"),
        "makerDetailsTitle":
            MessageLookupByLibrary.simpleMessage("Détails ordre des Maker"),
        "makerOrder": MessageLookupByLibrary.simpleMessage("Ordre des Maker"),
        "marketplace": MessageLookupByLibrary.simpleMessage("Marché"),
        "marketsChart": MessageLookupByLibrary.simpleMessage("Graphique"),
        "marketsDepth": MessageLookupByLibrary.simpleMessage("Profondeur"),
        "marketsNoAsks":
            MessageLookupByLibrary.simpleMessage("aucune demande trouvée"),
        "marketsNoBids":
            MessageLookupByLibrary.simpleMessage("Aucune offre trouvée"),
        "marketsOrderDetails":
            MessageLookupByLibrary.simpleMessage("Détail Ordre"),
        "marketsOrderbook":
            MessageLookupByLibrary.simpleMessage("CARNET d\'ORDRES"),
        "marketsPrice": MessageLookupByLibrary.simpleMessage("PRIX"),
        "marketsSelectCoins": MessageLookupByLibrary.simpleMessage(
            "Veuillez selectionner crypto-monnaies"),
        "marketsTab": MessageLookupByLibrary.simpleMessage("Marchés"),
        "marketsTitle": MessageLookupByLibrary.simpleMessage("MARCHÉS"),
        "matchExportPass": MessageLookupByLibrary.simpleMessage(
            "Les mots de passes doivent être identiques"),
        "matchingCamoChange": MessageLookupByLibrary.simpleMessage("Change"),
        "matchingCamoPinError": MessageLookupByLibrary.simpleMessage(
            "Votre PIN et masque PIN sont identiques.\nLe mode Masquage ne sera pas activé.\nVeuillez changer le Masque PIN."),
        "matchingCamoTitle":
            MessageLookupByLibrary.simpleMessage("PIN Incorrect"),
        "max": MessageLookupByLibrary.simpleMessage("MAX"),
        "maxOrder": MessageLookupByLibrary.simpleMessage("Volume d\'odre Max:"),
        "media": MessageLookupByLibrary.simpleMessage("Média"),
        "mediaBrowse": MessageLookupByLibrary.simpleMessage("FEUILLETER"),
        "mediaBrowseFeed": MessageLookupByLibrary.simpleMessage("PARCOURIR"),
        "mediaBy": MessageLookupByLibrary.simpleMessage("Par"),
        "mediaNotSavedDescription": MessageLookupByLibrary.simpleMessage(
            "VOUS N\'AVEZ PAS D\'ARTICLES ENREGISTRÉS"),
        "mediaSaved": MessageLookupByLibrary.simpleMessage("ENREGISTRÉ"),
        "memo": MessageLookupByLibrary.simpleMessage("Note"),
        "merge": MessageLookupByLibrary.simpleMessage("Fusionner"),
        "mergedValue":
            MessageLookupByLibrary.simpleMessage("Valeur fusionnée :"),
        "milliseconds": MessageLookupByLibrary.simpleMessage("ms"),
        "min": MessageLookupByLibrary.simpleMessage("MIN"),
        "minOrder": MessageLookupByLibrary.simpleMessage("Volume d\'odre Min:"),
        "minValue": m61,
        "minValueBuy": m62,
        "minValueOrder": m63,
        "minValueSell": m64,
        "minVolumeInput": m65,
        "minVolumeIsTDH": MessageLookupByLibrary.simpleMessage(
            "Doit être inférieur au montant de la vente"),
        "minVolumeTitle":
            MessageLookupByLibrary.simpleMessage("Volume Min requis"),
        "minVolumeToggle": MessageLookupByLibrary.simpleMessage(
            "Utiliser le volume minimal personnalisé"),
        "minimizingWillTerminate": MessageLookupByLibrary.simpleMessage(
            "Avertissement : la réduction de l\'application sur iOS mettra fin au processus d\'activation."),
        "minutes": MessageLookupByLibrary.simpleMessage("m"),
        "mobileDataWarning": m66,
        "moreInfo":
            MessageLookupByLibrary.simpleMessage("Plus d\'informations"),
        "moreTab": MessageLookupByLibrary.simpleMessage("Plus"),
        "multiActivateGas": m67,
        "multiBaseAmtPlaceholder":
            MessageLookupByLibrary.simpleMessage("Montant"),
        "multiBasePlaceholder":
            MessageLookupByLibrary.simpleMessage("Crypto-monnaie"),
        "multiBaseSelectTitle": MessageLookupByLibrary.simpleMessage("Vendre"),
        "multiConfirmCancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "multiConfirmConfirm":
            MessageLookupByLibrary.simpleMessage("Confirmer"),
        "multiConfirmTitle": m68,
        "multiCreate": MessageLookupByLibrary.simpleMessage("Créer"),
        "multiCreateOrder": MessageLookupByLibrary.simpleMessage("Ordre"),
        "multiCreateOrders": MessageLookupByLibrary.simpleMessage("Ordres"),
        "multiEthFee": MessageLookupByLibrary.simpleMessage("frais"),
        "multiFiatCancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "multiFiatDesc": MessageLookupByLibrary.simpleMessage(
            "Veuillez entrer le montant fiat à recevoir:"),
        "multiFiatFill":
            MessageLookupByLibrary.simpleMessage("Replissage auto"),
        "multiFixErrors": MessageLookupByLibrary.simpleMessage(
            "Veuillez corriger toutes les erreurs avant de continuer"),
        "multiInvalidAmt":
            MessageLookupByLibrary.simpleMessage("Montant invalide"),
        "multiInvalidSellAmt":
            MessageLookupByLibrary.simpleMessage("Montant de vente invalide"),
        "multiLowGas": m69,
        "multiLowerThanFee": m70,
        "multiMaxSellAmt":
            MessageLookupByLibrary.simpleMessage("Montant de vente Max est"),
        "multiMinReceiveAmt": MessageLookupByLibrary.simpleMessage(
            "Montant de reception Min est"),
        "multiMinSellAmt":
            MessageLookupByLibrary.simpleMessage("Montant de vente Min est"),
        "multiReceiveTitle": MessageLookupByLibrary.simpleMessage("Recevoir:"),
        "multiSellTitle": MessageLookupByLibrary.simpleMessage("Vendre:"),
        "multiTab": MessageLookupByLibrary.simpleMessage("Multi"),
        "multiTableAmt": MessageLookupByLibrary.simpleMessage("Montant reçu"),
        "multiTablePrice": MessageLookupByLibrary.simpleMessage("Prix/CEX"),
        "networkFee": MessageLookupByLibrary.simpleMessage("Frais de réseau"),
        "newAccount": MessageLookupByLibrary.simpleMessage("nouveau compte"),
        "newAccountUpper":
            MessageLookupByLibrary.simpleMessage("Nouveau compte"),
        "newValue": MessageLookupByLibrary.simpleMessage("Nouvel valeur:"),
        "newsFeed": MessageLookupByLibrary.simpleMessage("Fil d\'actualité"),
        "next": MessageLookupByLibrary.simpleMessage("suivant"),
        "no": MessageLookupByLibrary.simpleMessage("Non"),
        "noArticles": MessageLookupByLibrary.simpleMessage(
            "Pas d\'articles - s\'il vous plaît revenez plus tard!"),
        "noCoinFound": MessageLookupByLibrary.simpleMessage(
            "Pas de crypto-monnaie trouvé"),
        "noFunds": MessageLookupByLibrary.simpleMessage("Pas de fonds"),
        "noFundsDetected": MessageLookupByLibrary.simpleMessage(
            "Pas de fonds disponibles - faire un dépot s\'il vous plaît."),
        "noInternet":
            MessageLookupByLibrary.simpleMessage("Pas de connexion Internet"),
        "noItemsToExport": MessageLookupByLibrary.simpleMessage(
            "Pas d\'articles sélectionnés"),
        "noItemsToImport": MessageLookupByLibrary.simpleMessage(
            "Pas d\'articles sélectionnés"),
        "noMatchingOrders": MessageLookupByLibrary.simpleMessage(
            "Pas d\'ordres compatibles trouvés"),
        "noOrder": m71,
        "noOrderAvailable":
            MessageLookupByLibrary.simpleMessage("Cliquez pour créer un ordre"),
        "noOrders": MessageLookupByLibrary.simpleMessage(
            "Pas d\'ordres, veuillez ouvrir menu échange."),
        "noRewardYet": MessageLookupByLibrary.simpleMessage(
            "Aucune récompense ne peut être demandée - veuillez réessayer dans 1h."),
        "noRewards":
            MessageLookupByLibrary.simpleMessage("Pas de bonus disponible"),
        "noSuchCoin":
            MessageLookupByLibrary.simpleMessage("Pas une telle pièce"),
        "noSwaps": MessageLookupByLibrary.simpleMessage("Pas d\'historique."),
        "noTxs": MessageLookupByLibrary.simpleMessage("Aucune transactions"),
        "nonNumericInput":
            MessageLookupByLibrary.simpleMessage("Entrer une valeur numérique"),
        "none": MessageLookupByLibrary.simpleMessage("Aucun"),
        "notEnoughGas": m72,
        "notEnoughtBalanceForFee": MessageLookupByLibrary.simpleMessage(
            "Pas assez de solde pour les frais - échangez un montant inférieur"),
        "noteOnOrder": MessageLookupByLibrary.simpleMessage(
            "Remarque : La commande correspondante ne peut plus être annulée"),
        "notePlaceholder":
            MessageLookupByLibrary.simpleMessage("Ajouter une Note"),
        "noteTitle": MessageLookupByLibrary.simpleMessage("Note"),
        "nothingFound": MessageLookupByLibrary.simpleMessage("Pas de résultat"),
        "notifSwapCompletedText": m73,
        "notifSwapCompletedTitle":
            MessageLookupByLibrary.simpleMessage("Échange terminé"),
        "notifSwapFailedText": m74,
        "notifSwapFailedTitle":
            MessageLookupByLibrary.simpleMessage("Échange échoué"),
        "notifSwapStartedText": m75,
        "notifSwapStartedTitle":
            MessageLookupByLibrary.simpleMessage("Nouvel échange démarré"),
        "notifSwapStatusTitle": MessageLookupByLibrary.simpleMessage(
            "Statut de l\'échange modifié"),
        "notifSwapTimeoutText": m76,
        "notifSwapTimeoutTitle":
            MessageLookupByLibrary.simpleMessage("Délais d\'échange dépassé"),
        "notifTxText": m77,
        "notifTxTitle":
            MessageLookupByLibrary.simpleMessage("Transaction entrante"),
        "numberAssets": m78,
        "officialPressRelease": MessageLookupByLibrary.simpleMessage(
            "Communiqué de presse officiel"),
        "okButton": MessageLookupByLibrary.simpleMessage("Ok"),
        "oldLogsDelete": MessageLookupByLibrary.simpleMessage("Supprimer"),
        "oldLogsTitle": MessageLookupByLibrary.simpleMessage("Anciens logs"),
        "oldLogsUsed": MessageLookupByLibrary.simpleMessage("Espace utilisé"),
        "openMessage":
            MessageLookupByLibrary.simpleMessage("Ouvrir Message d\'Erreur"),
        "orderBookLess": MessageLookupByLibrary.simpleMessage("Moins"),
        "orderBookMore": MessageLookupByLibrary.simpleMessage("Plus"),
        "orderCancel": m79,
        "orderCreated": MessageLookupByLibrary.simpleMessage("Ordre créée"),
        "orderCreatedInfo":
            MessageLookupByLibrary.simpleMessage("Ordre créée avec succès"),
        "orderDetailsAddress": MessageLookupByLibrary.simpleMessage("Adresses"),
        "orderDetailsCancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "orderDetailsExpedient": m80,
        "orderDetailsExpensive": m81,
        "orderDetailsFor": MessageLookupByLibrary.simpleMessage("pour"),
        "orderDetailsIdentical":
            MessageLookupByLibrary.simpleMessage("Identique au CEX"),
        "orderDetailsMin": MessageLookupByLibrary.simpleMessage("min."),
        "orderDetailsPrice": MessageLookupByLibrary.simpleMessage("Prix"),
        "orderDetailsReceive": MessageLookupByLibrary.simpleMessage("Recevoir"),
        "orderDetailsSelect":
            MessageLookupByLibrary.simpleMessage("Selectionner"),
        "orderDetailsSells": MessageLookupByLibrary.simpleMessage("Ventes"),
        "orderDetailsSettings": MessageLookupByLibrary.simpleMessage(
            "Ouvrez les détails en un seul clic et sélectionnez Commander en appuyant longuement"),
        "orderDetailsSpend": MessageLookupByLibrary.simpleMessage("Dépenser"),
        "orderDetailsTitle": MessageLookupByLibrary.simpleMessage("Détails"),
        "orderFilled": m82,
        "orderMatched": MessageLookupByLibrary.simpleMessage("Ordre trouvé"),
        "orderMatching":
            MessageLookupByLibrary.simpleMessage("Recherche d\'ordre"),
        "orderTypePartial": MessageLookupByLibrary.simpleMessage("Ordre"),
        "orderTypeUnknown":
            MessageLookupByLibrary.simpleMessage("Type d\'odre inconnu"),
        "orders": MessageLookupByLibrary.simpleMessage("ordres"),
        "ordersActive": MessageLookupByLibrary.simpleMessage("Actif"),
        "ordersHistory": MessageLookupByLibrary.simpleMessage("Historique"),
        "ordersTableAmount": m83,
        "ordersTablePrice": m84,
        "ordersTableTotal": m85,
        "overwrite": MessageLookupByLibrary.simpleMessage("Écraser"),
        "ownOrder": MessageLookupByLibrary.simpleMessage(
            " Ceci est votre propre commande!"),
        "paidFromBalance":
            MessageLookupByLibrary.simpleMessage("Payé à partir du solde :"),
        "paidFromVolume": MessageLookupByLibrary.simpleMessage(
            "Payé à partir du volume reçu :"),
        "paidWith": MessageLookupByLibrary.simpleMessage("Payé avec"),
        "passwordRequirement": MessageLookupByLibrary.simpleMessage(
            "Le mot de passe doit contenir au moins 12 caractères, avec une minuscule, une majuscule et un symbole spécial."),
        "pastTransactionsFromDate": MessageLookupByLibrary.simpleMessage(
            "Votre portefeuille affichera vos transactions passées effectuées après la date spécifiée."),
        "paymentUriDetailsAccept":
            MessageLookupByLibrary.simpleMessage("Payer"),
        "paymentUriDetailsAcceptQuestion": MessageLookupByLibrary.simpleMessage(
            "Acceptez-vous cette transaction?"),
        "paymentUriDetailsAddressSpan":
            MessageLookupByLibrary.simpleMessage("Adresser"),
        "paymentUriDetailsAmountSpan":
            MessageLookupByLibrary.simpleMessage("Montant:"),
        "paymentUriDetailsCoinSpan":
            MessageLookupByLibrary.simpleMessage("Crypto-monnaie:"),
        "paymentUriDetailsDeny":
            MessageLookupByLibrary.simpleMessage("Annuler"),
        "paymentUriDetailsTitle":
            MessageLookupByLibrary.simpleMessage("Paiement demandé"),
        "paymentUriInactiveCoin": m86,
        "placeOrder":
            MessageLookupByLibrary.simpleMessage("Passer votre ordre"),
        "pleaseAcceptAllCoinActivationRequests":
            MessageLookupByLibrary.simpleMessage(
                "Veuillez accepter toutes les demandes spéciales d’activation de pièces ou désélectionner les pièces."),
        "pleaseAddCoin": MessageLookupByLibrary.simpleMessage(
            "Veuillez ajouter une Crypto-monnaie"),
        "pleaseRestart": MessageLookupByLibrary.simpleMessage(
            "Veuillez redémarrer l\'application pour réessayer, ou appuyer sur le bouton ci-dessous."),
        "portfolio": MessageLookupByLibrary.simpleMessage("Portfolio"),
        "poweredOnKmd":
            MessageLookupByLibrary.simpleMessage("Propulsé par Gleec"),
        "price": MessageLookupByLibrary.simpleMessage("prix"),
        "privateKey": MessageLookupByLibrary.simpleMessage("Clé privée"),
        "privateKeys": MessageLookupByLibrary.simpleMessage("Clés privées"),
        "protectionCtrlConfirmations":
            MessageLookupByLibrary.simpleMessage("Confirmations"),
        "protectionCtrlCustom": MessageLookupByLibrary.simpleMessage(
            "Utiliser les paramètres de protection personnalisés"),
        "protectionCtrlOff": MessageLookupByLibrary.simpleMessage("OFF"),
        "protectionCtrlOn": MessageLookupByLibrary.simpleMessage("ON"),
        "protectionCtrlWarning": MessageLookupByLibrary.simpleMessage(
            "Attention, cet \"atomic swap\" n\'est pas protégé par dPoW."),
        "pubkey": MessageLookupByLibrary.simpleMessage("Pubkey"),
        "qrCodeScanner":
            MessageLookupByLibrary.simpleMessage("Scanner de codes QR"),
        "question_1":
            MessageLookupByLibrary.simpleMessage("Stockez-vous ma clé privé?"),
        "question_10": m87,
        "question_2": m88,
        "question_3": MessageLookupByLibrary.simpleMessage(
            "Combien de temps dure chaque échange atomique ?"),
        "question_4": MessageLookupByLibrary.simpleMessage(
            "Dois-je être en ligne pendant toute la durée de l\'échange ?"),
        "question_5": m89,
        "question_6": MessageLookupByLibrary.simpleMessage(
            "Offrez-vous une assistance aux utilisateurs ?"),
        "question_7": MessageLookupByLibrary.simpleMessage(
            "Avez-vous des restrictions par pays ?"),
        "question_8": m90,
        "question_9": m91,
        "rebrandingAnnouncement": MessageLookupByLibrary.simpleMessage(
            "C\'est une nouvelle ère ! Nous avons officiellement changé notre nom de \'AtomicDEX\' en \'Gleec Wallet\'"),
        "receive": MessageLookupByLibrary.simpleMessage("RECEVOIR"),
        "receiveLower": MessageLookupByLibrary.simpleMessage("Recevoir"),
        "recommendSeedMessage": MessageLookupByLibrary.simpleMessage(
            "Nous vous recommandons de la stocker hors ligne."),
        "remove": MessageLookupByLibrary.simpleMessage("Désactivé"),
        "requestedTrade":
            MessageLookupByLibrary.simpleMessage("Commerce demandé"),
        "reset": MessageLookupByLibrary.simpleMessage("EFFACER"),
        "resetTitle":
            MessageLookupByLibrary.simpleMessage("Réinitialiser le formulaire"),
        "restoreWallet": MessageLookupByLibrary.simpleMessage("RESTAURER"),
        "retryActivating": MessageLookupByLibrary.simpleMessage(
            "Nouvelle tentative d\'activation de toutes les pièces..."),
        "retryAll":
            MessageLookupByLibrary.simpleMessage("Réessayez d\'activer tout"),
        "rewardsButton":
            MessageLookupByLibrary.simpleMessage("Réclamer votre récompense"),
        "rewardsCancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "rewardsError": MessageLookupByLibrary.simpleMessage(
            "Quelque chose s\'est mal passé. Veuillez réessayer plus tard."),
        "rewardsInProgressLong":
            MessageLookupByLibrary.simpleMessage("La transaction est en cours"),
        "rewardsInProgressShort":
            MessageLookupByLibrary.simpleMessage("En traitement"),
        "rewardsLowAmountLong": MessageLookupByLibrary.simpleMessage(
            "Montant UTXO inférieur à 10 KMD"),
        "rewardsLowAmountShort":
            MessageLookupByLibrary.simpleMessage("<10 KMD"),
        "rewardsOneHourLong":
            MessageLookupByLibrary.simpleMessage("Une heure pas encore passée"),
        "rewardsOneHourShort": MessageLookupByLibrary.simpleMessage("<1 hour"),
        "rewardsPopupOk": MessageLookupByLibrary.simpleMessage("Ok"),
        "rewardsPopupTitle":
            MessageLookupByLibrary.simpleMessage("Statut récompense:"),
        "rewardsReadMore": MessageLookupByLibrary.simpleMessage(
            "En savoir plus sur les récompenses des utilisateurs actifs KMD"),
        "rewardsReceive": MessageLookupByLibrary.simpleMessage("Recevoir"),
        "rewardsSuccess": m92,
        "rewardsTableFiat": MessageLookupByLibrary.simpleMessage("Fiat"),
        "rewardsTableRewards":
            MessageLookupByLibrary.simpleMessage("Récompense,\nKMD"),
        "rewardsTableStatus": MessageLookupByLibrary.simpleMessage("Statut"),
        "rewardsTableTime":
            MessageLookupByLibrary.simpleMessage("Temps restant"),
        "rewardsTableTitle":
            MessageLookupByLibrary.simpleMessage("Information récompense:"),
        "rewardsTableUXTO":
            MessageLookupByLibrary.simpleMessage("mnt UTXO,\nKMD"),
        "rewardsTimeDays": m93,
        "rewardsTimeHours": m94,
        "rewardsTimeMin": m95,
        "rewardsTitle":
            MessageLookupByLibrary.simpleMessage("Information récompense"),
        "russianLanguage": MessageLookupByLibrary.simpleMessage("Russe"),
        "saveMerged":
            MessageLookupByLibrary.simpleMessage("Enregistrer fusionné"),
        "scrollToContinue": MessageLookupByLibrary.simpleMessage(
            "Faites défiler vers le bas pour continuer..."),
        "searchFilterCoin": MessageLookupByLibrary.simpleMessage(
            "Rechercher une crypto-monnaie"),
        "searchFilterSubtitleAVX": MessageLookupByLibrary.simpleMessage(
            "Sélectionner tous les tokens Avax"),
        "searchFilterSubtitleBEP": MessageLookupByLibrary.simpleMessage(
            "Sélectionner tous les tokens BEP"),
        "searchFilterSubtitleCosmos": MessageLookupByLibrary.simpleMessage(
            "Tout sélectionner Cosmos Network"),
        "searchFilterSubtitleERC": MessageLookupByLibrary.simpleMessage(
            "Sélectionner tous les tokens ERC"),
        "searchFilterSubtitleETC": MessageLookupByLibrary.simpleMessage(
            "Sélectionner tous les tokens ETC"),
        "searchFilterSubtitleFTM": MessageLookupByLibrary.simpleMessage(
            "Sélectionner tous les tokens Fantom"),
        "searchFilterSubtitleHCO": MessageLookupByLibrary.simpleMessage(
            "Sélectionner tous les tokens HecoChain"),
        "searchFilterSubtitleHRC": MessageLookupByLibrary.simpleMessage(
            "Sélectionner tous les tokens Harmony"),
        "searchFilterSubtitleIris": MessageLookupByLibrary.simpleMessage(
            "Tout sélectionner Réseau Iris"),
        "searchFilterSubtitleKRC": MessageLookupByLibrary.simpleMessage(
            "Sélectionner tous les tokens Kucoin"),
        "searchFilterSubtitleMVR": MessageLookupByLibrary.simpleMessage(
            "Sélectionner tous les tokens Moonriver"),
        "searchFilterSubtitlePLG": MessageLookupByLibrary.simpleMessage(
            "Sélectionner tous les tokens Polygon"),
        "searchFilterSubtitleQRC": MessageLookupByLibrary.simpleMessage(
            "Sélectionner tous les tokens QRC"),
        "searchFilterSubtitleSBCH": MessageLookupByLibrary.simpleMessage(
            "Sélectionner tous les tokens SmartBCH"),
        "searchFilterSubtitleSLP": MessageLookupByLibrary.simpleMessage(
            "Sélectionner tous les jetons SLP"),
        "searchFilterSubtitleSmartChain": MessageLookupByLibrary.simpleMessage(
            "Sélectionner tous les tokens SmartChains"),
        "searchFilterSubtitleTestCoins": MessageLookupByLibrary.simpleMessage(
            "Sélectionner tous les tokens Test Assets"),
        "searchFilterSubtitleUBQ": MessageLookupByLibrary.simpleMessage(
            "Sélectionner tous les tokens Ubiq"),
        "searchFilterSubtitleZHTLC": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez toutes les pièces ZHTLC"),
        "searchFilterSubtitleutxo": MessageLookupByLibrary.simpleMessage(
            "Sélectionner tous les tokens UTXO"),
        "searchForTicker":
            MessageLookupByLibrary.simpleMessage("Rechercher un téléscripteur"),
        "seconds": MessageLookupByLibrary.simpleMessage("s"),
        "security": MessageLookupByLibrary.simpleMessage("Sécurité"),
        "seeOrders": m96,
        "seeTxHistory": MessageLookupByLibrary.simpleMessage(
            "Voir l\'historique de transaction"),
        "seedPhrase": MessageLookupByLibrary.simpleMessage("Passphrases"),
        "seedPhraseTitle":
            MessageLookupByLibrary.simpleMessage("Votre nouvelle passphrase"),
        "selectCoin":
            MessageLookupByLibrary.simpleMessage("Choisir crypto-monnaie"),
        "selectCoinInfo": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez les crypto-monnaie que vous souhaitez ajouter à votre portefeuille."),
        "selectCoinTitle":
            MessageLookupByLibrary.simpleMessage("Activer les crypto-monnaie:"),
        "selectCoinToBuy": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez la crypto-monnaie que vous souhaitez acheter"),
        "selectCoinToSell": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez la crypto-monnaie que vous souhaitez vendre"),
        "selectDate":
            MessageLookupByLibrary.simpleMessage("Sélectionnez une date"),
        "selectFileImport":
            MessageLookupByLibrary.simpleMessage("Selectionner fichier"),
        "selectLanguage":
            MessageLookupByLibrary.simpleMessage("Selectionner langue"),
        "selectPaymentMethod": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez votre méthode de paiement"),
        "selectedOrder":
            MessageLookupByLibrary.simpleMessage("Selectionner ordre:"),
        "sell": MessageLookupByLibrary.simpleMessage("Vendre"),
        "sellTestCoinWarning": MessageLookupByLibrary.simpleMessage(
            "Attention, vous êtes prêt à vendre des pièces de test SANS valeur réelle !"),
        "send": MessageLookupByLibrary.simpleMessage("ENVOYER"),
        "setUpPassword":
            MessageLookupByLibrary.simpleMessage("CONFIGURER UN MOT DE PASSE"),
        "settingDialogSpan1": MessageLookupByLibrary.simpleMessage(
            "Etes-vous sûr que vous voulez supprimer"),
        "settingDialogSpan2":
            MessageLookupByLibrary.simpleMessage("portefeuille?"),
        "settingDialogSpan3":
            MessageLookupByLibrary.simpleMessage("Si oui, assurez-vous de"),
        "settingDialogSpan4": MessageLookupByLibrary.simpleMessage(
            "enregistrez votre passphrase."),
        "settingDialogSpan5": MessageLookupByLibrary.simpleMessage(
            "Afin de restaurer votre portefeuille à l\'avenir."),
        "settingLanguageTitle": MessageLookupByLibrary.simpleMessage("Langues"),
        "settings": MessageLookupByLibrary.simpleMessage("Réglages"),
        "share": MessageLookupByLibrary.simpleMessage("Partager"),
        "shareAddress": m97,
        "shouldScanPastTransaction": m98,
        "showAddress":
            MessageLookupByLibrary.simpleMessage("Afficher l\'adresse"),
        "showDetails": MessageLookupByLibrary.simpleMessage("Afficher Détails"),
        "showMyOrders":
            MessageLookupByLibrary.simpleMessage("MONTRER MES COMMANDES"),
        "showingOrders": m99,
        "signInWithPassword": MessageLookupByLibrary.simpleMessage(
            "Se connecter avec mot de passe"),
        "signInWithSeedPhrase": MessageLookupByLibrary.simpleMessage(
            "Connectez-vous avec la passphrase"),
        "simple": MessageLookupByLibrary.simpleMessage("Facile"),
        "simpleTradeActivate": MessageLookupByLibrary.simpleMessage("Activer"),
        "simpleTradeBuyHint": m100,
        "simpleTradeBuyTitle": MessageLookupByLibrary.simpleMessage("Acheter"),
        "simpleTradeClose": MessageLookupByLibrary.simpleMessage("Fermer"),
        "simpleTradeMaxActiveCoins": m101,
        "simpleTradeNotActive": m102,
        "simpleTradeRecieve": MessageLookupByLibrary.simpleMessage("Recevoir"),
        "simpleTradeSellHint": m103,
        "simpleTradeSellTitle": MessageLookupByLibrary.simpleMessage("Vendre"),
        "simpleTradeSend": MessageLookupByLibrary.simpleMessage("Envoyer"),
        "simpleTradeShowLess":
            MessageLookupByLibrary.simpleMessage("Afficher moins"),
        "simpleTradeShowMore":
            MessageLookupByLibrary.simpleMessage("Afficher plus"),
        "simpleTradeUnableActivate": m104,
        "skip": MessageLookupByLibrary.simpleMessage("Passer"),
        "snackbarDismiss": MessageLookupByLibrary.simpleMessage("Rejeter"),
        "soundCantPlayThatMsg": m105,
        "soundPlayedWhen": m106,
        "soundSettingsLink": MessageLookupByLibrary.simpleMessage("Son"),
        "soundSettingsTitle":
            MessageLookupByLibrary.simpleMessage("Paramètres son"),
        "soundsDialogTitle": MessageLookupByLibrary.simpleMessage("Sons"),
        "soundsDoNotShowAgain":
            MessageLookupByLibrary.simpleMessage("Compris, ne plus afficher"),
        "soundsExplanation": MessageLookupByLibrary.simpleMessage(
            "Vous entendrez des notifications sonores pendant le processus d\'échange et lorsqu\'une commande de fabricant active sera passée.\nLe protocole d\'échange atomique exige que les participants soient en ligne pour un échange réussi, et des notifications sonores aident à y parvenir."),
        "soundsNote": MessageLookupByLibrary.simpleMessage(
            "Notez que vous pouvez définir vos sons personnalisés dans les paramètres de l\'application."),
        "spanishLanguage": MessageLookupByLibrary.simpleMessage("Espagnol"),
        "startDate": MessageLookupByLibrary.simpleMessage("Date de début"),
        "startSwap":
            MessageLookupByLibrary.simpleMessage("Commencer l\'échange"),
        "step": MessageLookupByLibrary.simpleMessage("Étape"),
        "success": MessageLookupByLibrary.simpleMessage("Succès!"),
        "support": MessageLookupByLibrary.simpleMessage("Support"),
        "supportLinksDesc": m107,
        "swap": MessageLookupByLibrary.simpleMessage("échanger"),
        "swapCurrent": MessageLookupByLibrary.simpleMessage("Actuel"),
        "swapDetailTitle": MessageLookupByLibrary.simpleMessage(
            "CONFIRMEZ LES DÉTAILS DE L’ÉCHANGE"),
        "swapEstimated": MessageLookupByLibrary.simpleMessage("Estimation"),
        "swapFailed":
            MessageLookupByLibrary.simpleMessage("L\'échange a échoué"),
        "swapGasActivate": m108,
        "swapGasAmount": m109,
        "swapGasAmountRequired": m110,
        "swapOngoing": MessageLookupByLibrary.simpleMessage("Echange en cours"),
        "swapProgress":
            MessageLookupByLibrary.simpleMessage("Détails de la progression"),
        "swapStarted": MessageLookupByLibrary.simpleMessage("commencé"),
        "swapSucceful": MessageLookupByLibrary.simpleMessage("Échange réussi"),
        "swapTotal": MessageLookupByLibrary.simpleMessage("Total"),
        "swapUUID": MessageLookupByLibrary.simpleMessage("UUID échange"),
        "switchTheme": MessageLookupByLibrary.simpleMessage("Changer de thème"),
        "syncFromDate": MessageLookupByLibrary.simpleMessage(
            "Synchroniser à partir de la date spécifiée"),
        "syncFromSaplingActivation": MessageLookupByLibrary.simpleMessage(
            "Synchronisation à partir de l\'activation des jeunes arbres"),
        "syncNewTransactions": MessageLookupByLibrary.simpleMessage(
            "Synchroniser les nouvelles transactions"),
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
        "takerOrder": MessageLookupByLibrary.simpleMessage("Ordre Taker"),
        "timeOut": MessageLookupByLibrary.simpleMessage("Temps écoulé"),
        "titleCreatePassword":
            MessageLookupByLibrary.simpleMessage("CRÉER UN MOT DE PASSE"),
        "titleCurrentAsk":
            MessageLookupByLibrary.simpleMessage("Ordre sélectionnés"),
        "to": MessageLookupByLibrary.simpleMessage("À"),
        "toAddress":
            MessageLookupByLibrary.simpleMessage("Adresse de destination:"),
        "tooManyAssetsEnabledSpan1":
            MessageLookupByLibrary.simpleMessage("Vous avez"),
        "tooManyAssetsEnabledSpan2": MessageLookupByLibrary.simpleMessage(
            " actifs activés. La limite maximale des éléments activés est"),
        "tooManyAssetsEnabledSpan3": MessageLookupByLibrary.simpleMessage(
            ". Veuillez en désactiver certains avant d\'en ajouter de nouveaux."),
        "tooManyAssetsEnabledTitle":
            MessageLookupByLibrary.simpleMessage("Trop d\'éléments activés"),
        "totalFees": MessageLookupByLibrary.simpleMessage("Frais totaux:"),
        "trade": MessageLookupByLibrary.simpleMessage("COMMERCE"),
        "tradeCompleted":
            MessageLookupByLibrary.simpleMessage("ECHANGE TERMINÉ!"),
        "tradeDetail":
            MessageLookupByLibrary.simpleMessage("DÉTAILS DE L\'ÉCHANGE"),
        "tradePreimageError": MessageLookupByLibrary.simpleMessage(
            "Échec du calcul des frais commerciaux"),
        "tradingFee":
            MessageLookupByLibrary.simpleMessage("frais de négociation :"),
        "tradingMode": MessageLookupByLibrary.simpleMessage("Trading Mode:"),
        "transactionAddress":
            MessageLookupByLibrary.simpleMessage("Adresse de transaction"),
        "transactionHidden":
            MessageLookupByLibrary.simpleMessage("Transaction masquée"),
        "transactionHiddenPhishing": MessageLookupByLibrary.simpleMessage(
            "Cette transaction a été masquée en raison d\'une éventuelle tentative de phishing."),
        "tryRestarting": MessageLookupByLibrary.simpleMessage(
            "Si même alors certaines pièces ne sont toujours pas activées, essayez de redémarrer l\'application."),
        "turkishLanguage": MessageLookupByLibrary.simpleMessage("Turque"),
        "txBlock": MessageLookupByLibrary.simpleMessage("Bloc"),
        "txConfirmations":
            MessageLookupByLibrary.simpleMessage("Confirmations"),
        "txConfirmed": MessageLookupByLibrary.simpleMessage("CONFIRMÉ"),
        "txFee": MessageLookupByLibrary.simpleMessage("Frais"),
        "txFeeTitle":
            MessageLookupByLibrary.simpleMessage("frais transactions:"),
        "txHash":
            MessageLookupByLibrary.simpleMessage("Identifiant de transaction"),
        "txLimitExceeded": MessageLookupByLibrary.simpleMessage(
            "Trop de demandes.\nLimite de demandes d\'historique des transactions dépassée.\nVeuillez réessayer plus tard."),
        "txNotConfirmed": MessageLookupByLibrary.simpleMessage("NON CONFIRMÉ"),
        "txleft": m112,
        "ukrainianLanguage": MessageLookupByLibrary.simpleMessage("Ukrainien"),
        "unlock": MessageLookupByLibrary.simpleMessage("ouvrir"),
        "unlockFunds": MessageLookupByLibrary.simpleMessage("Débloquer Fonds"),
        "unlockSuccess": m113,
        "unspendable": MessageLookupByLibrary.simpleMessage("indépensable"),
        "updatesAvailable":
            MessageLookupByLibrary.simpleMessage("Nouvelle version disponible"),
        "updatesChecking":
            MessageLookupByLibrary.simpleMessage("Recherche de mise à jour..."),
        "updatesCurrentVersion": m114,
        "updatesNotifAvailable": MessageLookupByLibrary.simpleMessage(
            "Nouvelle version disponible. Veuillez mettre à jour."),
        "updatesNotifAvailableVersion": m115,
        "updatesNotifTitle":
            MessageLookupByLibrary.simpleMessage("Mise à jour disponible"),
        "updatesSkip":
            MessageLookupByLibrary.simpleMessage("Ignorer pour l\'instant"),
        "updatesTitle": m116,
        "updatesUpToDate": MessageLookupByLibrary.simpleMessage("Déjà à jour"),
        "updatesUpdate": MessageLookupByLibrary.simpleMessage("Update"),
        "uriInsufficientBalanceSpan1": MessageLookupByLibrary.simpleMessage(
            "Pas assez de solde pour numériser"),
        "uriInsufficientBalanceSpan2":
            MessageLookupByLibrary.simpleMessage("demander paiement."),
        "uriInsufficientBalanceTitle":
            MessageLookupByLibrary.simpleMessage("Balance insuffisante"),
        "value": MessageLookupByLibrary.simpleMessage("Valeur:"),
        "version": MessageLookupByLibrary.simpleMessage("version"),
        "viewInExplorerButton":
            MessageLookupByLibrary.simpleMessage("Explorer"),
        "viewSeedAndKeys":
            MessageLookupByLibrary.simpleMessage("Passphrases et Clés Privées"),
        "volumes": MessageLookupByLibrary.simpleMessage("Les volumes"),
        "walletInUse": MessageLookupByLibrary.simpleMessage(
            "Le nom du Portefeuille existe déjà"),
        "walletMaxChar": MessageLookupByLibrary.simpleMessage(
            "Le nom du Portefeuille ne doit pas dépasser 40 charactères"),
        "walletOnly":
            MessageLookupByLibrary.simpleMessage("Portefeuille uniquement"),
        "warning": MessageLookupByLibrary.simpleMessage("Attention!"),
        "warningOkBtn": MessageLookupByLibrary.simpleMessage("Ok"),
        "warningShareLogs": MessageLookupByLibrary.simpleMessage(
            "Attention - dans des cas particuliers, ces données de journal contiennent des informations sensibles qui peuvent être utilisées pour dépenser des pièces à partir d\'échanges échoués !"),
        "weFailedTo": m117,
        "weFailedToActivate": m118,
        "welcomeInfo": m119,
        "welcomeLetSetUp": MessageLookupByLibrary.simpleMessage("CONFIGURONS!"),
        "welcomeTitle": MessageLookupByLibrary.simpleMessage("BIENVENUE"),
        "welcomeWallet": MessageLookupByLibrary.simpleMessage("portefeuille"),
        "willBeRedirected": MessageLookupByLibrary.simpleMessage(
            "Vous serez redirigé vers la page du portfolio à la fin."),
        "willTakeTime": MessageLookupByLibrary.simpleMessage(
            "Cela prendra un certain temps et l\'application doit rester au premier plan.\nLa fermeture de l\'application pendant l\'activation est en cours peut entraîner des problèmes."),
        "withdraw": MessageLookupByLibrary.simpleMessage("Envoyer"),
        "withdrawCameraAccessText": m120,
        "withdrawCameraAccessTitle":
            MessageLookupByLibrary.simpleMessage("Accès refusé"),
        "withdrawConfirm":
            MessageLookupByLibrary.simpleMessage("Confirmer le retrait"),
        "withdrawConfirmError": MessageLookupByLibrary.simpleMessage(
            "Un problème est survenu. Réessayez plus tard."),
        "withdrawValue": m121,
        "wrongCoinSpan1": MessageLookupByLibrary.simpleMessage(
            "Vous essayez de scanner un code QR de paiement pour"),
        "wrongCoinSpan2":
            MessageLookupByLibrary.simpleMessage(" mais tu es sur"),
        "wrongCoinSpan3":
            MessageLookupByLibrary.simpleMessage(" retirer l\'écran"),
        "wrongCoinTitle":
            MessageLookupByLibrary.simpleMessage("Mauvaise crypto-monnaie"),
        "wrongPassword": MessageLookupByLibrary.simpleMessage(
            "Le mot de passe ne correspond pas. Veuillez réessayer."),
        "yes": MessageLookupByLibrary.simpleMessage("Oui"),
        "you have a fresh order that is trying to match with an existing order":
            MessageLookupByLibrary.simpleMessage(
                "vous avez une nouvelle commande qui essaie de correspondre à une commande existante"),
        "you have an active swap in progress":
            MessageLookupByLibrary.simpleMessage(
                "vous avez un échange actif en cours"),
        "you have an order that new orders can match with":
            MessageLookupByLibrary.simpleMessage(
                "vous avez une commande avec laquelle de nouvelles commandes peuvent correspondre"),
        "youAreSending": MessageLookupByLibrary.simpleMessage("Vous envoyez:"),
        "youWillReceiveClaim": m122,
        "youWillReceived":
            MessageLookupByLibrary.simpleMessage("Vous allez recevoir:"),
        "yourWallet": MessageLookupByLibrary.simpleMessage("votre portefeuille")
      };
}
