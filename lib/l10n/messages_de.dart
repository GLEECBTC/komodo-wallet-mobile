// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  static m0(protocolName) => "${protocolName}-Münzen aktivieren?";

  static m1(coinName) => "${coinName} wird aktiviert";

  static m2(coinName) => "${coinName}-Aktivierung";

  static m3(protocolName) => "${protocolName} Aktivierung wird ausgeführt";

  static m4(name) => "${name} erfolgreich aktiviert!";

  static m5(title) => "Nur Kontakte mit ${title} Adressen anzeigen";

  static m6(abbr) =>
      "Sie können kein Guthaben an die ${abbr} Adresse senden, da ${abbr} nicht aktiviert ist. Bitte gehen Sie zum Portfolio.";

  static m7(appName) =>
      "Nein! ${appName} hat keine Vormundschaft. Wir speichern niemals sensible Daten, einschließlich Ihrer privaten Schlüssel, Seed-Phrasen oder PINs. Diese Daten werden nur auf dem Gerät des Benutzers gespeichert und verlassen es nie. Sie haben die volle Kontrolle über Ihr Vermögen.";

  static m8(appName) =>
      "${appName} ist für Mobilgeräte auf Android und iPhone sowie für Desktops auf <a href=\"https://gleec.com/\">Windows-, Mac- und Linux-Betriebssystemen</a> verfügbar.";

  static m9(appName) =>
      "Bei anderen DEXs können Sie im Allgemeinen nur Assets handeln, die auf einem einzigen Blockchain-Netzwerk basieren, Proxy-Token verwenden und nur einen einzigen Auftrag mit denselben Geldmitteln aufgeben.\n\n${appName} ermöglicht Ihnen den nativen Handel über zwei verschiedene Blockchain-Netzwerke ohne Proxy-Tokens. Sie können auch mehrere Aufträge mit demselben Guthaben platzieren. Sie können zum Beispiel 0,1 BTC für KMD, QTUM oder VRSC verkaufen - der erste Auftrag, der ausgeführt wird, storniert automatisch alle anderen Aufträge.";

  static m10(appName) =>
      "Mehrere Faktoren bestimmen die Bearbeitungszeit für einen Swap. Die Blockzeit der gehandelten Assets hängt vom jeweiligen Netzwerk ab (Bitcoin ist normalerweise das langsamste). Außerdem kann der Benutzer die Sicherheitseinstellungen anpassen. Zum Beispiel (können Sie ${appName} bitten, eine KMD-Transaktion nach nur 3 Bestätigungen als endgültig zu betrachten, wodurch die Swap-Zeit kürzer wird als beim Warten auf eine <a href=\"https://gleec.com/\">Beglaubigung</a>";

  static m11(appName) =>
      "Beim Handel auf ${appName} sind zwei Gebührenkategorien zu berücksichtigen.\n\n1. ${appName} berechnet ungefähr 0,13 % (1/777 des Handelsvolumens, aber nicht weniger als 0,0001) als Handelsgebühr für Taker-Aufträge, Maker-Aufträge haben keine Gebühren.\n\n2. Sowohl Maker als auch Taker müssen normale Netzwerkgebühren an die beteiligten Blockchains zahlen, wenn sie Atomic-Swap-Transaktionen durchführen.\n\nDie Netzwerkgebühren können je nach ausgewähltem Handelspaar stark variieren.";

  static m12(name, link, appName, appCompanyShort) =>
      "Ja! ${appName} bietet Support über den <a href=\"${link}\">${appCompanyShort} ${name}</a>. Das Team und die Community helfen Euch gerne weiter!\n";

  static m13(appName) =>
      "Nein! ${appName} ist vollständig dezentralisiert. Es ist nicht möglich, den Benutzerzugang durch Dritte zu beschränken.";

  static m14(appName, appCompanyShort) =>
      "${appName} wird vom ${appCompanyShort}-Team entwickelt. ${appCompanyShort} ist eines der etabliertesten Blockchain-Projekte, das an innovativen Lösungen wie Atomic Swaps, Delayed Proof of Work und einer interoperablen Multi-Chain-Architektur arbeitet.";

  static m15(appName) =>
      "Absolut! Weitere Informationen finden Sie in unserer <a href=\"https://gleec.com/\">Entwicklerdokumentation</a> oder kontaktieren Sie uns mit Ihren Partnerschaftsanfragen. Haben Sie eine spezielle technische Frage? Die ${appName}-Entwickler-Community ist immer bereit zu helfen!";

  static m16(coinName1, coinName2) => "basierend auf ${coinName1}/${coinName2}";

  static m17(batteryLevelCritical) =>
      "Der Akkustand ist kritisch (${batteryLevelCritical}%) um einen Swap sicher auszuführen. Bitte laden Sie ihr Handy auf und versuchen es später noch einmal.";

  static m18(batteryLevelLow) =>
      "Ihre Akkuladung ist niedriger als ${batteryLevelLow} %. Bitte denken Sie an das Aufladen des Telefons.";

  static m19(seconde) =>
      "Auftragsvermittlung läuft, bitte warten Sie ${seconde} Sekunden!";

  static m20(index) => "${index} Wort eingeben";

  static m21(index) => "Was ist das ${index}.Wort in Ihrer Seed?";

  static m22(coin) => "Aktivierung von ${coin} abgebrochen";

  static m23(coin) => "${coin} erfolgreich aktiviert";

  static m24(protocolName) => "${protocolName}-Münzen sind aktiviert";

  static m25(protocolName) =>
      "${protocolName}-Münzen wurden erfolgreich aktiviert";

  static m26(protocolName) => "${protocolName}-Münzen sind nicht aktiviert";

  static m27(name) => "Möchten Sie den Kontakt ${name} wirklich löschen?";

  static m28(iUnderstand) =>
      "Benutzerdefinierte Seed-Phrasen sind möglicherweise weniger sicher und leichter zu knacken als eine generierte BIP39-konforme Seed-Phrase oder ein privater Schlüssel (WIF). Um zu bestätigen, dass Sie das Risiko verstehen und wissen was Sie tun, geben Sie \"${iUnderstand}\" im Kasten unten an.\n";

  static m29(coinName) => "Erhalten Sie die Transaktionsgebühr ${coinName}";

  static m30(coinName) => "Transaktionsgebühr für ${coinName} senden";

  static m31(abbr) => "Geben Sie die ${abbr}  Adresse ein";

  static m32(selected, remains) =>
      "Sie können ${remains} weiterhin aktivieren, Ausgewählt: ${selected}";

  static m33(gas) => "Nicht genug Gas - verwenden Sie mindestens ${gas} Gwei";

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
      "Um abgeschlossen zu werden, ${appCompanyLong}muss jede virtuelle Währungstransaktion, die mit dem erstellt wurde, bestätigt und im Ledger für virtuelle Währungen aufgezeichnet werden, das dem jeweiligen virtuellen Währungsnetzwerk zugeordnet ist. ${appCompanyLong}Bei solchen Netzwerken handelt es sich um dezentrale Peer-to-Peer-Netzwerke, die von unabhängigen Dritten unterstützt werden, die sich nicht im Besitz, unter der Kontrolle oder unter der Kontrolle von ihnen befinden.\n${appCompanyLong}hat keine Kontrolle über virtuelle Währungsnetzwerke und kann und wird daher nicht sicherstellen, dass alle Transaktionsdetails, die Sie über unsere Dienste einreichen, im jeweiligen Netzwerk für virtuelle Währungen bestätigt werden. Sie erklären sich damit einverstanden und verstehen, dass die Transaktionsdetails, die Sie über unsere Dienste übermitteln, durch das zur Bearbeitung der Transaktion verwendete virtuelle Währungsnetzwerk möglicherweise nicht abgeschlossen oder erheblich verzögert werden können. Wir garantieren nicht, dass das Wallet das Eigentum oder die Rechte an einer virtuellen Währung übertragen kann, und geben auch keine Garantie in Bezug auf den Titel.\nSobald Transaktionsdetails an ein virtuelles Währungsnetzwerk übermittelt wurden, können wir Ihnen nicht helfen, Ihre Transaktion oder Transaktionsdetails zu stornieren oder anderweitig zu ändern. ${appCompanyLong}hat keine Kontrolle über ein Netzwerk für virtuelle Währungen und ist nicht in der Lage, Stornierungs- oder Änderungsanfragen zu bearbeiten.\nIm Falle eines Forks ${appCompanyLong}kann es sein, dass wir Aktivitäten im Zusammenhang mit Ihrer virtuellen Währung nicht unterstützen können. Sie erklären sich damit einverstanden und verstehen, dass die Transaktionen im Falle einer Fork möglicherweise nicht, teilweise, falsch abgeschlossen oder erheblich verzögert werden. ${appCompanyLong}ist nicht verantwortlich für Verluste, die Ihnen ganz oder teilweise, direkt oder indirekt, durch einen Fork entstehen.\nIn keinem Fall ${appCompanyLong}haften ihre verbundenen Unternehmen und Dienstleister oder ihre jeweiligen leitenden Angestellten, Direktoren, Agenten, Mitarbeiter oder Vertreter für entgangene Gewinne oder besondere, zufällige, indirekte, immaterielle oder Folgeschäden, unabhängig davon, ob sie auf Vertrag, unerlaubter Handlung, Fahrlässigkeit, verschuldensunabhängiger Haftung oder auf andere Weise beruhen, die sich aus oder in Verbindung mit der autorisierten oder unbefugten Nutzung der Dienste oder dieser Vereinbarung ergeben, auch wenn ein bevollmächtigter Vertreter ${appCompanyLong}von darauf hingewiesen wurde, hat davon gewusst oder hätte von der Möglichkeit solcher Schäden bekannt. \nBeispielsweise (und ohne den Umfang des vorstehenden Satzes einzuschränken) dürfen Sie sich nicht für entgangene Gewinne, entgangene Geschäftschancen oder andere Arten von besonderen, zufälligen, indirekten, immateriellen oder Folgeschäden zurückfordern. In einigen Rechtsordnungen ist der Ausschluss oder die Beschränkung von Neben- oder Folgeschäden nicht zulässig, sodass die obige Beschränkung möglicherweise nicht für Sie gilt. \nWir sind Ihnen gegenüber nicht verantwortlich oder haftbar für Verluste und übernehmen keine Verantwortung für Schäden oder Ansprüche, die sich ganz oder teilweise, direkt oder indirekt ergeben aus: \n(a) Benutzerfehler wie vergessene Passwörter, falsch erstellte Transaktionen oder falsch eingegebene Adressen für virtuelle Währungen; \n(b) Serverausfall oder Datenverlust; \n(c) beschädigte oder anderweitig nicht funktionierende Wallets oder Wallet-Dateien; \n(d) unbefugter Zugriff auf Anwendungen; \n(e) alle nicht autorisierten Aktivitäten, einschließlich, aber nicht beschränkt auf den Einsatz von Hacking, Viren, Phishing, Brute-Forcing oder anderen Angriffsmethoden gegen die Dienste.\n\n";

  static m40(appCompanyShort, appCompanyLong) =>
      "For the avoidance of doubt, ${appCompanyLong} does not provide investment, tax or legal advice, nor does ${appCompanyLong} broker trades on your behalf. All ${appCompanyLong} trades are executed automatically, based on the parameters of your order instructions and in accordance with posted Trade execution procedures, and You are solely responsible for determining whether any investment, investment strategy or related transaction is appropriate for You based on your personal investment objectives, financial circumstances and risk tolerance. You should consult your legal or tax professional regarding your specific situation. Neither ${appCompanyShort} nor its owners, members, officers, directors, partners, consultants, nor anyone involved in the publication of this application, is a registered investment adviser or broker-dealer or associated person with a registered investment adviser or broker-dealer and none of the foregoing make any recommendation that the purchase or sale of crypto-assets or securities of any company profiled in the mobile Application is suitable or advisable for any person or that an investment or transaction in such crypto-assets or securities will be profitable. The information contained in the mobile Application is not intended to be, and shall not constitute, an offer to sell or the solicitation of any offer to buy any crypto-asset or security. The information presented in the mobile Application is provided for informational purposes only and is not to be treated as advice or a recommendation to make any specific investment or transaction. Please, consult with a qualified professional before making any decisions. The opinions and analysis included in this applications are based on information from sources deemed to be reliable and are provided “as is” in good faith. ${appCompanyShort} makes no representation or warranty, expressed, implied, or statutory, as to the accuracy or completeness of such information, which may be subject to change without notice. ${appCompanyShort} shall not be liable for any errors or any actions taken in relation to the above. Statements of opinion and belief are those of the authors and/or editors who contribute to this application, and are based solely upon the information possessed by such authors and/or editors. No inference should be drawn that ${appCompanyShort} or such authors or editors have any special or greater knowledge about the crypto-assets or companies profiled or any particular expertise in the industries or markets in which the profiled crypto-assets and companies operate and compete. Information on this application is obtained from sources deemed to be reliable; however, ${appCompanyShort} takes no responsibility for verifying the accuracy of such information and makes no representation that such information is accurate or complete. Certain statements included in this application may be forward-looking statements based on current expectations. ${appCompanyShort} makes no representation and provides no assurance or guarantee that such forward-looking statements will prove to be accurate. Persons using the ${appCompanyShort} application are urged to consult with a qualified professional with respect to an investment or transaction in any crypto-asset or company profiled herein. Additionally, persons using this application expressly represent that the content in this application is not and will not be a consideration in such persons’ investment or transaction decisions. Traders should verify independently information provided in the ${appCompanyShort} application by completing their own due diligence on any crypto-asset or company in which they are contemplating an investment or transaction of any kind and review a complete information package on that crypto-asset or company, which should include, but not be limited to, related blog updates and press releases. Past performance of profiled crypto-assets and securities is not indicative of future results. Crypto-assets and companies profiled on this site may lack an active trading market and invest in a crypto-asset or security that lacks an active trading market or trade on certain media, platforms and markets are deemed highly speculative and carry a high degree of risk. Anyone holding such crypto-assets and securities should be financially able and prepared to bear the risk of loss and the actual loss of his or her entire trade. The information in this application is not designed to be used as a basis for an investment decision. Persons using the ${appCompanyShort} application should confirm to their own satisfaction the veracity of any information prior to entering into any investment or making any transaction. The decision to buy or sell any crypto-asset or security that may be featured by ${appCompanyShort} is done purely and entirely at the reader’s own risk. As a reader and user of this application, You agree that under no circumstances will You seek to hold liable owners, members, officers, directors, partners, consultants or other persons involved in the publication of this application for any losses incurred by the use of information contained in this application ${appCompanyShort} and its contractors and affiliates may profit in the event the crypto-assets and securities increase or decrease in value. Such crypto-assets and securities may be bought or sold from time to time, even after ${appCompanyShort} has distributed positive information regarding the crypto-assets and companies. ${appCompanyShort} has no obligation to inform readers of its trading activities or the trading activities of any of its owners, members, officers, directors, contractors and affiliates and/or any companies affiliated with BC Relations’ owners, members, officers, directors, contractors and affiliates. ${appCompanyShort} and its affiliates may from time to time enter into agreements to purchase crypto-assets or securities to provide a method to reach their goals.\n\n";

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

  static m48(coinAbbr) =>
      "Aktivierung von ${coinAbbr} konnte nicht abgebrochen werden";

  static m49(coin) => "Anfrage an ${coin} faucet senden...";

  static m50(appCompanyShort) => "${appCompanyShort} Neuigkeiten";

  static m51(value) => "Die Gebühren müssen bis zu ${value} betragen.";

  static m52(coin) => "${coin}-Gebühr";

  static m53(coin) => "Bitte aktivieren Sie ${coin}.";

  static m54(value) => "Gwei muss bis zu ${value} sein";

  static m55(coinName) => "Eingehende ${coinName}-TXS-Schutzeinstellungen";

  static m56(abbr) =>
      "${abbr} Guthaben reicht nicht aus, um die Handelsgebühr zu bezahlen";

  static m57(coin) => "Ungültige ${coin}-Adresse";

  static m58(coinAbbr) => "${coinAbbr} ist nicht verfügbar :(";

  static m59(coinName) =>
      "❗Vorsicht! Der Markt für ${coinName} hat ein 24-Stunden-Handelsvolumen von weniger als 10.000 US-Dollar!";

  static m60(value) => "Das Limit muss bis zu ${value} betragen";

  static m61(coinName, number) =>
      "Die Mindestmenge für den Verkauf ist ${number} ${coinName}";

  static m62(coinName, number) =>
      "Die Mindestmenge für den Kauf ist ${number} ${coinName}";

  static m63(buyCoin, buyAmount, sellCoin, sellAmount) =>
      "Die Mindestmenge des Auftrags ist ${buyAmount} ${buyCoin}\n(${sellAmount} ${sellCoin})";

  static m64(coinName, number) =>
      "Die Mindestmenge für den Verkauf ist ${number} ${coinName}";

  static m65(minValue, coin) => "Muss größer sein als ${minValue} ${coin}";

  static m66(appName) =>
      "Bitte beachten Sie, dass Sie jetzt Mobilfunkdaten verwenden und die Teilnahme am P2P-Netzwerk von ${appName} Internetverkehr verbraucht. Es ist besser, ein WiFi-Netzwerk zu verwenden, wenn Ihr mobiler Datentarif kostspielig ist.";

  static m67(coin) =>
      "Aktivieren Sie ${coin} und laden Sie zuerst Ihr Guthaben auf";

  static m68(number) => "${number} Auftrag/Aufträge erstellen:";

  static m69(coin) => "${coin} Guthaben ist zu niedrig";

  static m70(coin, fee) =>
      "Nicht genug ${coin} vorhanden, um die Gebühren zu zahlen. MIN Guthaben beträgt ${fee} ${coin}";

  static m71(coinName) => "Bitte geben Sie die ${coinName} Menge ein.";

  static m72(coin) => "Nicht genug ${coin} für die Transaktion!";

  static m73(sell, buy) =>
      "${sell}/${buy} swap wurde erfolgreich abgeschlossen";

  static m74(sell, buy) => "${sell}/${buy} swap fehlgeschlagen";

  static m75(sell, buy) => "${sell}/${buy} swap gestartet";

  static m76(sell, buy) =>
      "${sell}/${buy} swap ist abgelaufen(Zeitüberschreitung)";

  static m77(coin) => "Du hast eine ${coin} Transaktion erhalten!";

  static m78(assets) => "${assets} Assets";

  static m79(coin) => "Alle ${coin} Aufträge werden storniert.";

  static m80(delta) => "Sinnvoll: CEX +${delta}%";

  static m81(delta) => "Teuer: CEX ${delta}%";

  static m82(fill) => "${fill}% ausgefüllt";

  static m83(coin) => "(${coin}) Menge";

  static m84(coin) => "(${coin}) Preis";

  static m85(coin) => "(${coin}) Gesamt";

  static m86(abbr) =>
      "${abbr} ist nicht aktiviert. Bitte aktivieren und erneut versuchen.";

  static m87(appName) => "Auf welchen Geräten kann ich ${appName} verwenden?";

  static m88(appName) =>
      "Wie unterscheidet sich der Handel auf ${appName} vom Handel auf anderen DEXs?";

  static m89(appName) => "Wie werden die Gebühren für ${appName} berechnet?";

  static m90(appName) => "Wer steckt hinter ${appName}?";

  static m91(appName) =>
      "Ist es möglich, meine eigene White-Label-Börse auf ${appName} zu entwickeln?";

  static m92(amount) => "Erfolgreich! ${amount} KMD erhalten";

  static m93(dd) => "${dd} Tag(e)";

  static m94(hh, minutes) => "${hh}h ${minutes}m";

  static m95(mm) => "${mm}min";

  static m96(amount) => "Klicken Sie hier, um ${amount} Aufträge zu sehen";

  static m97(coinName, address) => "Meine ${coinName} Adresse:\n${address}";

  static m98(coin) => "Nach vergangenen ${coin}-Transaktionen suchen?";

  static m99(count, maxCount) =>
      "Es werden ${count} von ${maxCount} Bestellungen angezeigt.";

  static m100(coin) =>
      "Bitte geben Sie die ${coin} Menge an, die Sie kaufen möchten";

  static m101(maxCoins) =>
      "Maximum an aktivierbaren Coins ist ${maxCoins}. Bitte deaktivieren Sie welche.";

  static m102(coin) => "${coin} ist nicht aktiviert!";

  static m103(coin) =>
      "Bitte geben Sie die ${coin} Menge an, die Sie verkaufen möchten";

  static m104(coin) => "${coin} kann nicht aktiviert werden";

  static m105(description) =>
      "Wählen Sie bitte eine mp3- oder wav-Datei aus. Wir spielen es, wenn ${description}.";

  static m106(description) => "Abgespielt, wenn ${description}";

  static m107(appName) =>
      "Wenn Sie Fragen haben oder glauben, dass Sie ein technisches Problem mit der ${appName} App gefunden haben, können Sie dies melden und Unterstützung von unserem Team erhalten.";

  static m108(coin) =>
      "Bitte aktivieren Sie zuerst ${coin} und laden Sie Ihr Guthaben auf";

  static m109(coin) =>
      "Das ${coin} Guthaben reicht nicht aus, um die Transaktionsgebühren zu bezahlen.";

  static m110(coin, amount) =>
      "Das ${coin} Guthaben reicht nicht aus, um die Transaktionsgebühren zu bezahlen. ${coin} ${amount} sind erforderlich.";

  static m111(name) =>
      "Welche ${name}-Transaktionen möchten Sie synchronisieren?";

  static m112(left) => "Verbleibende Transaktionen: ${left}";

  static m113(amnt, hash) =>
      "${amnt} Geldmittel wurden erfolgreich freigeschaltet - TX: ${hash}";

  static m114(version) => "Sie nutzen Version ${version}";

  static m115(version) => "Version ${version} verfügbar. Bitte updaten.";

  static m116(appName) => "${appName} Update";

  static m117(coinAbbr) => "Wir konnten ${coinAbbr} nicht aktivieren";

  static m118(coinAbbr) =>
      "Wir konnten ${coinAbbr} nicht aktivieren.\nBitte starten Sie die App neu, um es erneut zu versuchen.";

  static m119(appName) =>
      "${appName} ist eine Multi-Coin-Wallet der nächsten Generation mit nativer DEX-Funktionalität der dritten Generation und mehr.";

  static m120(appName) =>
      "Sie haben ${appName} zuvor den Zugriff auf die Kamera verweigert.\nBitte ändern Sie die Kamerazugriffsrechte manuell in den Telefoneinstellungen, um mit dem QR-Code-Scan fortzufahren.";

  static m121(amount, coinName) => "${amount} ${coinName} ABHEBEN";

  static m122(amount, coin) => "Sie erhalten ${amount} ${coin}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "Active": MessageLookupByLibrary.simpleMessage("Aktiv"),
        "Applause": MessageLookupByLibrary.simpleMessage("Beifall"),
        "Can\'t play that": MessageLookupByLibrary.simpleMessage(
            "Kann nicht abgespielt werden"),
        "Failed": MessageLookupByLibrary.simpleMessage("Fehlgeschlagen"),
        "Maker": MessageLookupByLibrary.simpleMessage("Maker"),
        "Optional": MessageLookupByLibrary.simpleMessage("Optional"),
        "Play at full volume": MessageLookupByLibrary.simpleMessage(
            "In voller Lautstärke abspielen"),
        "Sound": MessageLookupByLibrary.simpleMessage("Sound"),
        "Taker": MessageLookupByLibrary.simpleMessage("Taker"),
        "a swap fails":
            MessageLookupByLibrary.simpleMessage("ein Swap ist fehlgeschlagen"),
        "a swap runs to completion": MessageLookupByLibrary.simpleMessage(
            "ein Swap läuft bis zur Fertigstellung"),
        "accepteula": MessageLookupByLibrary.simpleMessage("EULA akzeptieren"),
        "accepttac": MessageLookupByLibrary.simpleMessage(
            "Allgemeine Geschäftsbedingungen akzeptieren"),
        "activateAccessBiometric": MessageLookupByLibrary.simpleMessage(
            "Biometrischen Schutz aktivieren"),
        "activateAccessPin":
            MessageLookupByLibrary.simpleMessage("PIN-Schutz aktivieren"),
        "activateCoins": m0,
        "activating": m1,
        "activation": m2,
        "activationCancelled":
            MessageLookupByLibrary.simpleMessage("Münzaktivierung abgebrochen"),
        "activationInProgress": m3,
        "addCoin": MessageLookupByLibrary.simpleMessage("Coin aktivieren"),
        "addingCoinSuccess": m4,
        "addressAdd":
            MessageLookupByLibrary.simpleMessage("Adresse hinzufügen"),
        "addressBook": MessageLookupByLibrary.simpleMessage("Adressbuch"),
        "addressBookEmpty":
            MessageLookupByLibrary.simpleMessage("Adressbuch ist leer"),
        "addressBookFilter": m5,
        "addressBookTitle": MessageLookupByLibrary.simpleMessage("Adressbuch"),
        "addressCoinInactive": m6,
        "addressNotFound":
            MessageLookupByLibrary.simpleMessage("Nichts gefunden"),
        "addressSelectCoin":
            MessageLookupByLibrary.simpleMessage("Coin auswählen"),
        "addressSend": MessageLookupByLibrary.simpleMessage("Empfängeradresse"),
        "advanced": MessageLookupByLibrary.simpleMessage("Fortgeschritten"),
        "all": MessageLookupByLibrary.simpleMessage("Alle"),
        "allPastTransactions": MessageLookupByLibrary.simpleMessage(
            "In Ihrem Wallet werden alle vergangenen Transaktionen angezeigt. Dies wird viel Speicherplatz und Zeit in Anspruch nehmen, da alle Blöcke heruntergeladen und gescannt werden."),
        "allowCustomSeed": MessageLookupByLibrary.simpleMessage(
            "Benutzerdefinierten Seed erlauben"),
        "alreadyExists":
            MessageLookupByLibrary.simpleMessage("Ist bereits vorhanden"),
        "amount": MessageLookupByLibrary.simpleMessage("Menge"),
        "amountToSell":
            MessageLookupByLibrary.simpleMessage("Zu verkaufende Menge"),
        "answer_1": m7,
        "answer_10": m8,
        "answer_2": m9,
        "answer_3": m10,
        "answer_4": MessageLookupByLibrary.simpleMessage(
            "Ja. Sie müssen mit dem Internet verbunden bleiben und die App ausführen, um jeden Atomic Swap erfolgreich abzuschließen (sehr kurze Verbindungsunterbrechungen sind normalerweise in Ordnung). Andernfalls besteht das Risiko einer Auftragsstornierung, wenn Sie ein Maker sind, und das Risiko eines Geldverlusts, wenn Sie ein Taker sind.\n\nDas Atomic-Swap-Protokoll erfordert, dass beide Teilnehmer online bleiben und die beteiligten Blockchains überwachen, damit der Prozess atomar bleibt."),
        "answer_5": m11,
        "answer_6": m12,
        "answer_7": m13,
        "answer_8": m14,
        "answer_9": m15,
        "areYouSure": MessageLookupByLibrary.simpleMessage("BIST DU SICHER?"),
        "authenticate":
            MessageLookupByLibrary.simpleMessage("authentifizieren"),
        "automaticRedirected": MessageLookupByLibrary.simpleMessage(
            "Sie werden automatisch zur Portfolio-Seite weitergeleitet, wenn der erneute Aktivierungsprozess abgeschlossen ist."),
        "availableVolume": MessageLookupByLibrary.simpleMessage("max vol"),
        "back": MessageLookupByLibrary.simpleMessage("zurück"),
        "backupTitle": MessageLookupByLibrary.simpleMessage("Sicherung"),
        "basedOnCoinRatio": m16,
        "batteryCriticalError": m17,
        "batteryLowWarning": m18,
        "batterySavingWarning": MessageLookupByLibrary.simpleMessage(
            "Ihr  Handy ist im Energissparmodus. Bitte deaktivieren Sie diesen Modus oder gehen Sie mit der App NICHT im Hintergrundmodus. Andernfalls könnte die App durch das Betriebssystem beendet werden und der Swap schlägt fehl."),
        "bestAvailableRate":
            MessageLookupByLibrary.simpleMessage("Wechselkurs"),
        "builtKomodo":
            MessageLookupByLibrary.simpleMessage("Auf Gleec aufgebaut"),
        "builtOnKmd":
            MessageLookupByLibrary.simpleMessage("Auf Gleec aufgebaut"),
        "buy": MessageLookupByLibrary.simpleMessage("Kaufen"),
        "buyOrderType": MessageLookupByLibrary.simpleMessage(
            "In Maker-Auftrag umwandeln, wenn kein match stattgefunden hat"),
        "buySuccessWaiting": MessageLookupByLibrary.simpleMessage(
            "Swap gestartet, bitte warten!"),
        "buySuccessWaitingError": m19,
        "buyTestCoinWarning": MessageLookupByLibrary.simpleMessage(
            "Warnung, Sie möchten Test-Coins ohne tatsächlichen Wert kaufen!"),
        "camoPinBioProtectionConflict": MessageLookupByLibrary.simpleMessage(
            "Tarnungs-PIN und Bio-Schutz können nicht gleichzeitig aktiviert werden."),
        "camoPinBioProtectionConflictTitle":
            MessageLookupByLibrary.simpleMessage(
                "Konflikt zwischen Carmo-PIN und Bio-Schutz."),
        "camoPinChange":
            MessageLookupByLibrary.simpleMessage("Tarnungs-PIN ändern"),
        "camoPinCreate":
            MessageLookupByLibrary.simpleMessage("Tarnungs-PIN erstellen"),
        "camoPinDesc": MessageLookupByLibrary.simpleMessage(
            "Wenn Sie die App mit der Tarnungs-PIN entsperren, wird ein gefälschtes NIEDRIGERES Guthaben angezeigt und die Konfigurationsoption Tarnungs-PIN ist in den Einstellungen NICHT sichtbar."),
        "camoPinInvalid":
            MessageLookupByLibrary.simpleMessage("ungültiger Tarnungs-PIN"),
        "camoPinLink": MessageLookupByLibrary.simpleMessage("Tarnungs-PIN"),
        "camoPinNotFound":
            MessageLookupByLibrary.simpleMessage("Tarnungs-PIN nicht gefunden"),
        "camoPinOff": MessageLookupByLibrary.simpleMessage("Aus"),
        "camoPinOn": MessageLookupByLibrary.simpleMessage("An"),
        "camoPinSaved":
            MessageLookupByLibrary.simpleMessage("Tarnungs-PIN gespeichert"),
        "camoPinTitle": MessageLookupByLibrary.simpleMessage("Tarnungs-PIN"),
        "camoSetupSubtitle":
            MessageLookupByLibrary.simpleMessage("Neuen Tarnungs-PIN eingeben"),
        "camoSetupTitle":
            MessageLookupByLibrary.simpleMessage("Tarnungs-PIN Einrichtung"),
        "camouflageSetup":
            MessageLookupByLibrary.simpleMessage("Tarnungs-PIN Einrichtung"),
        "cancel": MessageLookupByLibrary.simpleMessage("stornieren"),
        "cancelActivation":
            MessageLookupByLibrary.simpleMessage("Aktivierung abbrechen"),
        "cancelActivationQuestion": MessageLookupByLibrary.simpleMessage(
            "Sind Sie sicher, dass Sie die Aktivierung abbrechen möchten?"),
        "cancelButton": MessageLookupByLibrary.simpleMessage("stornieren"),
        "cancelOrder":
            MessageLookupByLibrary.simpleMessage("Auftrag stornieren"),
        "candleChartError": MessageLookupByLibrary.simpleMessage(
            "Es ist ein Fehler aufgetreten. Bitte versuchen Sie es später noch einmal."),
        "cantDeleteDefaultCoinOk": MessageLookupByLibrary.simpleMessage("Ok"),
        "cantDeleteDefaultCoinSpan": MessageLookupByLibrary.simpleMessage(
            "ist ein Standard-Coin. Standard-Coins können nicht deaktiviert werden."),
        "cantDeleteDefaultCoinTitle": MessageLookupByLibrary.simpleMessage(
            "Kann nicht deaktiviert werden"),
        "cex": MessageLookupByLibrary.simpleMessage("CEX"),
        "cexChangeRate": MessageLookupByLibrary.simpleMessage("CEX-Tauschrate"),
        "cexData": MessageLookupByLibrary.simpleMessage("CEX-Daten"),
        "cexDataDesc": MessageLookupByLibrary.simpleMessage(
            "Die mit diesem Symbol gekennzeichneten Marktdaten (Kurse, Charts usw.) stammen aus Drittquellen (<a href=\"https://www.coingecko.com/\">coingecko.com</a>, <a href=\"https://openrates.io/\">openrates.io</a>)."),
        "cexRate": MessageLookupByLibrary.simpleMessage("CEX-Kurs"),
        "changePin": MessageLookupByLibrary.simpleMessage("PIN-Code ändern"),
        "checkForUpdates":
            MessageLookupByLibrary.simpleMessage("Nach Updates suchen"),
        "checkOut": MessageLookupByLibrary.simpleMessage("Abmelden"),
        "checkSeedPhrase":
            MessageLookupByLibrary.simpleMessage("Seed-Phrase überprüfen"),
        "checkSeedPhraseButton1":
            MessageLookupByLibrary.simpleMessage("WEITER"),
        "checkSeedPhraseButton2": MessageLookupByLibrary.simpleMessage(
            "ZURÜCK UND ERNEUT ÜBERPRÜFEN"),
        "checkSeedPhraseHint": m20,
        "checkSeedPhraseInfo": MessageLookupByLibrary.simpleMessage(
            "Ihr Seed ist wichtig - deshalb stellen wir Ihnen drei verschiedene Fragen, um sicherzustellen, dass dieser korrekt ist und Sie Ihr Wallet jederzeit problemlos wiederherstellen können."),
        "checkSeedPhraseSubtile": m21,
        "checkSeedPhraseTitle": MessageLookupByLibrary.simpleMessage(
            "LASSEN SIE UNS IHREN SEED DOPPELT ÜBERPRÜFEN"),
        "chineseLanguage": MessageLookupByLibrary.simpleMessage("Chinesisch"),
        "claim": MessageLookupByLibrary.simpleMessage("Anfordern"),
        "claimTitle":
            MessageLookupByLibrary.simpleMessage("KMD Prämie anfordern?"),
        "clickToSee":
            MessageLookupByLibrary.simpleMessage("Zum Anzeigen klicken"),
        "clipboard": MessageLookupByLibrary.simpleMessage(
            "In die Zwischenablage kopiert"),
        "clipboardCopy": MessageLookupByLibrary.simpleMessage(
            "In die Zwischenablage kopieren"),
        "close": MessageLookupByLibrary.simpleMessage("Schließen"),
        "closeMessage":
            MessageLookupByLibrary.simpleMessage("Fehlermeldung schließen"),
        "closePreview":
            MessageLookupByLibrary.simpleMessage("Vorschau schließen"),
        "code": MessageLookupByLibrary.simpleMessage("Code:"),
        "cofirmCancelActivation": MessageLookupByLibrary.simpleMessage(
            "Sind Sie sicher, dass Sie die Aktivierung abbrechen möchten?"),
        "coinActivationCancelled": m22,
        "coinActivationSuccessfull": m23,
        "coinSelectClear": MessageLookupByLibrary.simpleMessage("Löschen"),
        "coinSelectNotFound":
            MessageLookupByLibrary.simpleMessage("keine aktivierten Coins"),
        "coinSelectTitle":
            MessageLookupByLibrary.simpleMessage("Coin auswählen"),
        "coinsActivatedLimitReached": MessageLookupByLibrary.simpleMessage(
            "Sie haben die maximale Anzahl an Assets ausgewählt"),
        "coinsAreActivated": m24,
        "coinsAreActivatedSuccessfully": m25,
        "coinsAreNotActivated": m26,
        "comingSoon": MessageLookupByLibrary.simpleMessage("Demnächst..."),
        "commingsoon":
            MessageLookupByLibrary.simpleMessage("TX Details folgen in Kürze!"),
        "commingsoonGeneral":
            MessageLookupByLibrary.simpleMessage("Details folgen in Kürze!"),
        "commissionFee": MessageLookupByLibrary.simpleMessage("Provision"),
        "comparedTo24hrCex": MessageLookupByLibrary.simpleMessage(
            "im Vergleich zum Durchschnitt. 24h CEX-Preis"),
        "comparedToCex":
            MessageLookupByLibrary.simpleMessage("im Vergleich zu CEX"),
        "configureWallet": MessageLookupByLibrary.simpleMessage(
            "Bitte warten, ihre Wallet wird konfiguriert..."),
        "confirm": MessageLookupByLibrary.simpleMessage("Bestätigen"),
        "confirmCamouflageSetup":
            MessageLookupByLibrary.simpleMessage("Tarnungs-PIN bestätigen"),
        "confirmCancel": MessageLookupByLibrary.simpleMessage(
            "Wollen Sie die Order wirklich stornieren?"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Kennwort bestätigen"),
        "confirmPin":
            MessageLookupByLibrary.simpleMessage("PIN-Code bestätigen"),
        "confirmSeed":
            MessageLookupByLibrary.simpleMessage("Seed-Phrase bestätigen"),
        "confirmeula": MessageLookupByLibrary.simpleMessage(
            "Durch Klicken auf die folgenden Schaltflächen bestätigen Sie, dass Sie die \"EULA\" und die \"Allgemeinen Geschäftsbedingungen\" gelesen haben und diese akzeptieren"),
        "connecting": MessageLookupByLibrary.simpleMessage(
            "Verbindung wird hergestellt ..."),
        "contactCancel": MessageLookupByLibrary.simpleMessage("Abbrechen"),
        "contactDelete":
            MessageLookupByLibrary.simpleMessage("Kontakt löschen"),
        "contactDeleteBtn": MessageLookupByLibrary.simpleMessage("Löschen"),
        "contactDeleteWarning": m27,
        "contactDiscardBtn": MessageLookupByLibrary.simpleMessage("Verwerfen"),
        "contactEdit": MessageLookupByLibrary.simpleMessage("Bearbeiten"),
        "contactExit": MessageLookupByLibrary.simpleMessage("Beenden"),
        "contactExitWarning":
            MessageLookupByLibrary.simpleMessage("Änderungen verwerfen?"),
        "contactNotFound":
            MessageLookupByLibrary.simpleMessage("Keine Kontakte gefunden"),
        "contactSave": MessageLookupByLibrary.simpleMessage("Sichern"),
        "contactTitle": MessageLookupByLibrary.simpleMessage("Kontaktdetails"),
        "contactTitleName": MessageLookupByLibrary.simpleMessage("Name"),
        "contract": MessageLookupByLibrary.simpleMessage("Vertrag"),
        "convert": MessageLookupByLibrary.simpleMessage("Umwandeln"),
        "couldNotLaunchUrl": MessageLookupByLibrary.simpleMessage(
            "URL konnte nicht gestartet werden"),
        "couldntImportError": MessageLookupByLibrary.simpleMessage(
            "Konnte nicht importiert werden:"),
        "create": MessageLookupByLibrary.simpleMessage("Handeln"),
        "createAWallet":
            MessageLookupByLibrary.simpleMessage("Wallet erstellen"),
        "createContact":
            MessageLookupByLibrary.simpleMessage("Kontakt erstellen"),
        "createPin": MessageLookupByLibrary.simpleMessage("PIN erstellen"),
        "currency": MessageLookupByLibrary.simpleMessage("Währung"),
        "currencyDialogTitle": MessageLookupByLibrary.simpleMessage("Währung"),
        "currentValue": MessageLookupByLibrary.simpleMessage("Aktueller Wert:"),
        "customFee":
            MessageLookupByLibrary.simpleMessage("Individuelle Gebühr"),
        "customFeeWarning": MessageLookupByLibrary.simpleMessage(
            "Individuelle Gebühr nur nutzen, wenn Sie wissen was darunter zu verstehen ist!"),
        "customSeedWarning": m28,
        "dPow": MessageLookupByLibrary.simpleMessage("Gleec dPoW Sicherheit"),
        "date": MessageLookupByLibrary.simpleMessage("Datum"),
        "decryptingWallet":
            MessageLookupByLibrary.simpleMessage("Wallet entschlüsseln"),
        "delete": MessageLookupByLibrary.simpleMessage("Löschen"),
        "deleteConfirm":
            MessageLookupByLibrary.simpleMessage("Deaktivierung bestätigen"),
        "deleteSpan1": MessageLookupByLibrary.simpleMessage("Möchten Sie"),
        "deleteSpan2": MessageLookupByLibrary.simpleMessage(
            "von ihrem Portfolio entfernen? Alle offenen Aufträge werden storniert."),
        "deleteSpan3":
            MessageLookupByLibrary.simpleMessage(" wird ebenfalls deaktiviert"),
        "deleteWallet": MessageLookupByLibrary.simpleMessage("Wallet löschen"),
        "deletingWallet":
            MessageLookupByLibrary.simpleMessage("Wallet wird gelöscht..."),
        "detailedFeesReceiveCoinTransactionFee": m29,
        "detailedFeesSendCoinTransactionFee": m30,
        "detailedFeesSendTradingFeeTransactionFee":
            MessageLookupByLibrary.simpleMessage(
                "Handelsgebühr senden Transaktionsgebühr"),
        "detailedFeesTradingFee":
            MessageLookupByLibrary.simpleMessage("Handelsgebühr"),
        "details": MessageLookupByLibrary.simpleMessage("Details"),
        "deutscheLanguage": MessageLookupByLibrary.simpleMessage("Deutsch"),
        "developerTitle": MessageLookupByLibrary.simpleMessage("Entwickler/in"),
        "dex": MessageLookupByLibrary.simpleMessage("DEX"),
        "dexIsNotAvailable": MessageLookupByLibrary.simpleMessage(
            "DEX ist für diesen Coin nicht verfügbar"),
        "disableScreenshots": MessageLookupByLibrary.simpleMessage(
            "Deaktivieren Sie Screenshots/Vorschau"),
        "disclaimerAndTos":
            MessageLookupByLibrary.simpleMessage("Haftungsausschluss & AGB"),
        "doNotCloseTheAppTapForMoreInfo": MessageLookupByLibrary.simpleMessage(
            "Schließen Sie die App nicht. Für weitere Informationen tippen ..."),
        "done": MessageLookupByLibrary.simpleMessage("Erledigt"),
        "dontAskAgain":
            MessageLookupByLibrary.simpleMessage("Nicht mehr nachfragen"),
        "dontWantPassword":
            MessageLookupByLibrary.simpleMessage("Ich möchte kein Kennwort"),
        "duration": MessageLookupByLibrary.simpleMessage("Dauer"),
        "editContact":
            MessageLookupByLibrary.simpleMessage("Kontakt bearbeiten"),
        "emptyCoin": m31,
        "emptyExportPass": MessageLookupByLibrary.simpleMessage(
            "Verschlüsselungskennwort darf nicht leer sein"),
        "emptyImportPass": MessageLookupByLibrary.simpleMessage(
            "Kennwort darf nicht leer sein"),
        "emptyName": MessageLookupByLibrary.simpleMessage(
            "Kontakt-Name darf nicht leer sein"),
        "emptyWallet": MessageLookupByLibrary.simpleMessage(
            "Wallet-Name darf nicht leer sein"),
        "enable": m32,
        "enableNotificationsForActivationProgress":
            MessageLookupByLibrary.simpleMessage(
                "Bitte aktivieren Sie Benachrichtigungen, um Updates zum Aktivierungsfortschritt zu erhalten."),
        "enableTestCoins":
            MessageLookupByLibrary.simpleMessage("Test-Coins aktivieren"),
        "enablingTooManyAssetsSpan1":
            MessageLookupByLibrary.simpleMessage("Sie haben"),
        "enablingTooManyAssetsSpan2": MessageLookupByLibrary.simpleMessage(
            "Assets aktivert und versuchen"),
        "enablingTooManyAssetsSpan3": MessageLookupByLibrary.simpleMessage(
            "weitere zu aktivieren. Das Maximallimit beträgt"),
        "enablingTooManyAssetsSpan4": MessageLookupByLibrary.simpleMessage(
            ". Bitte deaktivieren sie welche, bevor neue aktiviert werden."),
        "enablingTooManyAssetsTitle": MessageLookupByLibrary.simpleMessage(
            "Es wurde versucht, zu viele Assets zu aktivieren"),
        "encryptingWallet":
            MessageLookupByLibrary.simpleMessage("Wallet verschlüsseln"),
        "englishLanguage": MessageLookupByLibrary.simpleMessage("Englisch"),
        "enterNewPinCode": MessageLookupByLibrary.simpleMessage(
            "Geben Sie ihren neuen PIN ein"),
        "enterOldPinCode": MessageLookupByLibrary.simpleMessage(
            "Geben Sie ihren alten PIN ein"),
        "enterPinCode": MessageLookupByLibrary.simpleMessage(
            "Geben Sie Ihren PIN-Code ein"),
        "enterSeedPhrase": MessageLookupByLibrary.simpleMessage(
            "Geben Sie Ihre Seed-Phrase ein"),
        "enterSellAmount": MessageLookupByLibrary.simpleMessage(
            "Sie müssen zuerst die Verkaufsmenge eingeben"),
        "enterpassword": MessageLookupByLibrary.simpleMessage(
            "Bitte Kennwort eingeben um fortzufahren."),
        "errorAmountBalance":
            MessageLookupByLibrary.simpleMessage("Guthaben unzureichend"),
        "errorNotAValidAddress":
            MessageLookupByLibrary.simpleMessage("Ungültige Adresse"),
        "errorNotAValidAddressSegWit": MessageLookupByLibrary.simpleMessage(
            "Segwit-Adressen werden (noch) nicht unterstützt"),
        "errorNotEnoughGas": m33,
        "errorTryAgain": MessageLookupByLibrary.simpleMessage(
            "Fehler, bitte versuchen Sie es erneut"),
        "errorTryLater": MessageLookupByLibrary.simpleMessage(
            "Fehler, bitte versuchen Sie es später"),
        "errorValueEmpty": MessageLookupByLibrary.simpleMessage(
            "Wert ist zu hoch oder zu niedrig"),
        "errorValueNotEmpty":
            MessageLookupByLibrary.simpleMessage("Bitte Daten eintippen"),
        "estimateValue":
            MessageLookupByLibrary.simpleMessage("Geschätzter Gesamtwert"),
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
            "Beispiel: build case level ..."),
        "exchangeExpedient": MessageLookupByLibrary.simpleMessage("Sinnvoll"),
        "exchangeExpensive": MessageLookupByLibrary.simpleMessage("Teuer"),
        "exchangeIdentical":
            MessageLookupByLibrary.simpleMessage("Identisch mit CEX"),
        "exchangeRate": MessageLookupByLibrary.simpleMessage("Wechselkurs:"),
        "exchangeTitle": MessageLookupByLibrary.simpleMessage("TAUSCHEN"),
        "exportButton": MessageLookupByLibrary.simpleMessage("Exportieren"),
        "exportContactsTitle": MessageLookupByLibrary.simpleMessage("Kontakte"),
        "exportDesc": MessageLookupByLibrary.simpleMessage(
            "Bitte wählen Sie die Elemente aus, die in eine verschlüsselte Datei exportiert werden sollen."),
        "exportLink": MessageLookupByLibrary.simpleMessage("Exportieren"),
        "exportNotesTitle": MessageLookupByLibrary.simpleMessage("Hinweise"),
        "exportSuccessTitle": MessageLookupByLibrary.simpleMessage(
            "Die Elemente wurden erfolgreich exportiert:"),
        "exportSwapsTitle": MessageLookupByLibrary.simpleMessage("Swaps"),
        "exportTitle": MessageLookupByLibrary.simpleMessage("Exportieren"),
        "failedToCancelActivation": m48,
        "fakeBalanceAmt":
            MessageLookupByLibrary.simpleMessage("Gefälschter Guthaben:"),
        "faqTitle":
            MessageLookupByLibrary.simpleMessage("Häufig gestellte Fragen"),
        "faucetError": MessageLookupByLibrary.simpleMessage("Fehler"),
        "faucetInProgress": m49,
        "faucetName": MessageLookupByLibrary.simpleMessage("FAUCET"),
        "faucetSuccess": MessageLookupByLibrary.simpleMessage("Erfolg"),
        "faucetTimedOut": MessageLookupByLibrary.simpleMessage(
            "Zeitüberschreitung der Anfrage"),
        "feedNewsTab": MessageLookupByLibrary.simpleMessage("Neuigkeiten"),
        "feedNotFound":
            MessageLookupByLibrary.simpleMessage("Hier gibt es nichts"),
        "feedNotifTitle": m50,
        "feedReadMore": MessageLookupByLibrary.simpleMessage("Mehr lesen..."),
        "feedTab": MessageLookupByLibrary.simpleMessage("Feed"),
        "feedTitle": MessageLookupByLibrary.simpleMessage("Newsfeed"),
        "feedUnableToProceed": MessageLookupByLibrary.simpleMessage(
            "Aktualisierung der Nachrichten kann nicht fortgesetzt werden"),
        "feedUnableToUpdate": MessageLookupByLibrary.simpleMessage(
            "Nachrichten können nicht aktualisiert werden"),
        "feedUpToDate": MessageLookupByLibrary.simpleMessage(
            "Bereits auf dem neuesten Stand"),
        "feedUpdated":
            MessageLookupByLibrary.simpleMessage("Newsfeed aktualisiert"),
        "feedback":
            MessageLookupByLibrary.simpleMessage("Protokolldatei teilen"),
        "feesError": m51,
        "filtersAll": MessageLookupByLibrary.simpleMessage("Alle"),
        "filtersButton": MessageLookupByLibrary.simpleMessage("Filter"),
        "filtersClearAll":
            MessageLookupByLibrary.simpleMessage("Alle Filter löschen"),
        "filtersFailed": MessageLookupByLibrary.simpleMessage("Fehlgeschlagen"),
        "filtersFrom": MessageLookupByLibrary.simpleMessage("Von Datum"),
        "filtersMaker": MessageLookupByLibrary.simpleMessage("Maker"),
        "filtersReceive": MessageLookupByLibrary.simpleMessage("Coin erhalten"),
        "filtersSell": MessageLookupByLibrary.simpleMessage("Coin verkaufen"),
        "filtersStatus": MessageLookupByLibrary.simpleMessage("Status"),
        "filtersSuccessful":
            MessageLookupByLibrary.simpleMessage("Erfolgreich"),
        "filtersTaker": MessageLookupByLibrary.simpleMessage("Taker"),
        "filtersTo": MessageLookupByLibrary.simpleMessage("Bis Datum"),
        "filtersType": MessageLookupByLibrary.simpleMessage("Taker/Maker"),
        "fingerprint": MessageLookupByLibrary.simpleMessage("Fingerabdruck"),
        "finishingUp": MessageLookupByLibrary.simpleMessage(
            "Bitte warten Sie, bis der Vorgang abgeschlossen ist"),
        "foundQrCode": MessageLookupByLibrary.simpleMessage("QR-Code gefunden"),
        "frenchLanguage": MessageLookupByLibrary.simpleMessage("Französisch"),
        "from": MessageLookupByLibrary.simpleMessage("Von"),
        "futureTransactions": MessageLookupByLibrary.simpleMessage(
            "Wir synchronisieren zukünftige Transaktionen, die nach der Aktivierung in Verbindung mit Ihrem öffentlichen Schlüssel durchgeführt werden. Dies ist die schnellste Option und beansprucht am wenigsten Speicherplatz."),
        "gasFee": m52,
        "gasLimit": MessageLookupByLibrary.simpleMessage("Gas-Limit"),
        "gasNotActive": m53,
        "gasPrice": MessageLookupByLibrary.simpleMessage("Gas-Preis"),
        "generalPinNotActive": MessageLookupByLibrary.simpleMessage(
            "Der allgemeine PIN-Schutz ist nicht aktiv.\nDer Tarnungsmodus ist nicht verfügbar.\nBitte aktivieren Sie den PIN-Schutz."),
        "getBackupPhrase": MessageLookupByLibrary.simpleMessage(
            "Wichtig: Sichern Sie Ihren Seed bevor Sie fortfahren!"),
        "gettingTxWait": MessageLookupByLibrary.simpleMessage(
            "Die Transaktion wird ausgeführt. Bitte warten Sie"),
        "goToPorfolio":
            MessageLookupByLibrary.simpleMessage("Zum Portfolio gehen"),
        "gweiError": m54,
        "helpLink": MessageLookupByLibrary.simpleMessage("Hilfe"),
        "helpTitle": MessageLookupByLibrary.simpleMessage("Hilfe und Support"),
        "hideBalance":
            MessageLookupByLibrary.simpleMessage("Guthaben ausblenden"),
        "hintConfirmPassword":
            MessageLookupByLibrary.simpleMessage("Kennwort bestätigen"),
        "hintCreatePassword":
            MessageLookupByLibrary.simpleMessage("Kennwort erstellen"),
        "hintCurrentPassword":
            MessageLookupByLibrary.simpleMessage("Aktuelles Kennwort"),
        "hintEnterPassword":
            MessageLookupByLibrary.simpleMessage("Geben Sie Ihr Kennwort ein"),
        "hintEnterSeedPhrase":
            MessageLookupByLibrary.simpleMessage("Geben Sie Ihren Seed ein"),
        "hintNameYourWallet":
            MessageLookupByLibrary.simpleMessage("Benennen Sie Ihr Wallet"),
        "hintPassword": MessageLookupByLibrary.simpleMessage("Kennwort"),
        "history": MessageLookupByLibrary.simpleMessage("Verlauf"),
        "hours": MessageLookupByLibrary.simpleMessage("h"),
        "hungarianLanguage": MessageLookupByLibrary.simpleMessage("Ungarisch"),
        "iUnderstand":
            MessageLookupByLibrary.simpleMessage("Ich habe verstanden"),
        "importButton": MessageLookupByLibrary.simpleMessage("Importieren"),
        "importDecryptError": MessageLookupByLibrary.simpleMessage(
            "Ungültiges Kennwort oder beschädigte Daten"),
        "importDesc": MessageLookupByLibrary.simpleMessage(
            "Zu importierende Gegenstände:"),
        "importFileNotFound":
            MessageLookupByLibrary.simpleMessage("Datei nicht gefunden"),
        "importInvalidSwapData": MessageLookupByLibrary.simpleMessage(
            "Ungültige Swap-Daten. Bitte geben Sie eine gültige Swap-Status JSON-Datei an."),
        "importLink": MessageLookupByLibrary.simpleMessage("Importieren"),
        "importLoadDesc": MessageLookupByLibrary.simpleMessage(
            "Bitte wählen Sie eine verschlüsselte Datei zum Importieren aus."),
        "importLoadSwapDesc": MessageLookupByLibrary.simpleMessage(
            "Bitte wählen Sie eine einfache Textauslagerungsdatei zum Importieren aus."),
        "importLoading": MessageLookupByLibrary.simpleMessage("Öffnung..."),
        "importPassCancel": MessageLookupByLibrary.simpleMessage("Abbrechen"),
        "importPassOk": MessageLookupByLibrary.simpleMessage("Ok"),
        "importPassword": MessageLookupByLibrary.simpleMessage("Kennwort"),
        "importSingleSwapLink":
            MessageLookupByLibrary.simpleMessage("Einzigen Swap importieren"),
        "importSingleSwapTitle":
            MessageLookupByLibrary.simpleMessage("Swaps importieren"),
        "importSomeItemsSkippedWarning": MessageLookupByLibrary.simpleMessage(
            "Einige Elemente wurden übersprungen"),
        "importSuccessTitle": MessageLookupByLibrary.simpleMessage(
            "Die Elemente wurden erfolgreich importiert:"),
        "importSwapFailed": MessageLookupByLibrary.simpleMessage(
            "Import von Swaps fehlgeschlagen"),
        "importSwapJsonDecodingError": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Dekodieren der json-Datei"),
        "importTitle": MessageLookupByLibrary.simpleMessage("Importieren"),
        "incomingTransactionsProtectionSettings": m55,
        "infoPasswordDialog": MessageLookupByLibrary.simpleMessage(
            "Verwenden Sie ein sicheres Kennwort und speichern Sie es nicht auf demselben Gerät"),
        "infoTrade1": MessageLookupByLibrary.simpleMessage(
            "Der Swap kann nicht rückgängig gemacht werden und ist ein endgültiges Ereignis!"),
        "infoTrade2": MessageLookupByLibrary.simpleMessage(
            "Der Swap kann bis zu 60 Minuten dauern. Schließen Sie diese Anwendung NICHT!"),
        "infoWalletPassword": MessageLookupByLibrary.simpleMessage(
            "Aus Sicherheitsgründen müssen Sie ein Kennwort für die Verschlüsselung ihres Wallets angeben."),
        "insufficientBalanceToPay": m56,
        "insufficientText": MessageLookupByLibrary.simpleMessage(
            "Die Mindestmenge, die für diesen Auftrag erforderlich ist, beträgt"),
        "insufficientTitle":
            MessageLookupByLibrary.simpleMessage("Unzureichendes Volumen"),
        "internetRefreshButton":
            MessageLookupByLibrary.simpleMessage("Aktualisieren"),
        "internetRestored": MessageLookupByLibrary.simpleMessage(
            "Internetverbindung wiederhergestellt"),
        "invalidCoinAddress": m57,
        "invalidSwap": MessageLookupByLibrary.simpleMessage(
            "Swap kann nicht durchgeführt werden"),
        "invalidSwapDetailsLink":
            MessageLookupByLibrary.simpleMessage("Details"),
        "isUnavailable": m58,
        "japaneseLanguage": MessageLookupByLibrary.simpleMessage("Japanisch"),
        "koreanLanguage": MessageLookupByLibrary.simpleMessage("Koreanisch"),
        "language": MessageLookupByLibrary.simpleMessage("Sprache"),
        "latestTxs":
            MessageLookupByLibrary.simpleMessage("Letzte Transaktionen"),
        "legalTitle": MessageLookupByLibrary.simpleMessage("Rechtliches"),
        "less": MessageLookupByLibrary.simpleMessage("Weniger"),
        "lessThanCaution": m59,
        "limitError": m60,
        "loading": MessageLookupByLibrary.simpleMessage("Wird geladen..."),
        "loadingOrderbook": MessageLookupByLibrary.simpleMessage(
            "Auftragsbuch wird geladen..."),
        "lockScreen":
            MessageLookupByLibrary.simpleMessage("Bildschirm ist gesperrt"),
        "lockScreenAuth":
            MessageLookupByLibrary.simpleMessage("Bitte authentifizieren!"),
        "login": MessageLookupByLibrary.simpleMessage("Anmeldung"),
        "logout": MessageLookupByLibrary.simpleMessage("Ausloggen"),
        "logoutOnExit":
            MessageLookupByLibrary.simpleMessage("Beim Beenden abmelden"),
        "logoutWarning": MessageLookupByLibrary.simpleMessage(
            "Sind Sie sicher, dass Sie sich jetzt abmelden möchten?"),
        "logoutsettings":
            MessageLookupByLibrary.simpleMessage("Abmelde-Einstellungen"),
        "longMinutes": MessageLookupByLibrary.simpleMessage("Minuten"),
        "makeAorder":
            MessageLookupByLibrary.simpleMessage("Einen Auftrag erstellen"),
        "makerDetailsCancel":
            MessageLookupByLibrary.simpleMessage("Auftrag stornieren"),
        "makerDetailsCreated":
            MessageLookupByLibrary.simpleMessage("Erstellt am"),
        "makerDetailsFor": MessageLookupByLibrary.simpleMessage("Erhalten"),
        "makerDetailsId": MessageLookupByLibrary.simpleMessage("Auftrags-ID"),
        "makerDetailsNoSwaps": MessageLookupByLibrary.simpleMessage(
            "Durch diesen Auftrag wurden keine Swaps gestartet"),
        "makerDetailsPrice": MessageLookupByLibrary.simpleMessage("Preis"),
        "makerDetailsSell": MessageLookupByLibrary.simpleMessage("Verkauf"),
        "makerDetailsSwaps": MessageLookupByLibrary.simpleMessage(
            "Durch diesen Auftrag gestartete Swaps"),
        "makerDetailsTitle":
            MessageLookupByLibrary.simpleMessage("Details des Maker-Auftrag"),
        "makerOrder": MessageLookupByLibrary.simpleMessage("Maker-Auftrag"),
        "marketplace": MessageLookupByLibrary.simpleMessage("Marktplatz"),
        "marketsChart": MessageLookupByLibrary.simpleMessage("Chart"),
        "marketsDepth": MessageLookupByLibrary.simpleMessage("Tiefe"),
        "marketsNoAsks":
            MessageLookupByLibrary.simpleMessage("Keine Anfragen gefunden"),
        "marketsNoBids":
            MessageLookupByLibrary.simpleMessage("Keine Angebote gefunden"),
        "marketsOrderDetails":
            MessageLookupByLibrary.simpleMessage("Details zum Auftrag"),
        "marketsOrderbook":
            MessageLookupByLibrary.simpleMessage("AUFTRAGSBUCH"),
        "marketsPrice": MessageLookupByLibrary.simpleMessage("PREIS"),
        "marketsSelectCoins":
            MessageLookupByLibrary.simpleMessage("Bitte Coins auswählen"),
        "marketsTab": MessageLookupByLibrary.simpleMessage("Märkte"),
        "marketsTitle": MessageLookupByLibrary.simpleMessage("MÄRKTE"),
        "matchExportPass": MessageLookupByLibrary.simpleMessage(
            "Kennwörter müssen übereinstimmen"),
        "matchingCamoChange": MessageLookupByLibrary.simpleMessage("Ändern"),
        "matchingCamoPinError": MessageLookupByLibrary.simpleMessage(
            "Ihre allgemeine PIN und die Tarnungs-PIN sind identisch.\nDer Tarnmodus wird nicht verfügbar sein.\nBitte ändern Sie die Tarnungs-PIN."),
        "matchingCamoTitle":
            MessageLookupByLibrary.simpleMessage("Ungültige PIN"),
        "max": MessageLookupByLibrary.simpleMessage("MAX"),
        "maxOrder":
            MessageLookupByLibrary.simpleMessage("Max Auftragsvolumen:"),
        "media": MessageLookupByLibrary.simpleMessage("Neuigkeiten"),
        "mediaBrowse": MessageLookupByLibrary.simpleMessage("DURCHBLÄTTERN"),
        "mediaBrowseFeed":
            MessageLookupByLibrary.simpleMessage("FEED DURCHBLÄTTERN"),
        "mediaBy": MessageLookupByLibrary.simpleMessage("Von"),
        "mediaNotSavedDescription": MessageLookupByLibrary.simpleMessage(
            "SIE HABEN KEINE GESPEICHERTEN ARTIKEL"),
        "mediaSaved": MessageLookupByLibrary.simpleMessage("GESPEICHERT"),
        "memo": MessageLookupByLibrary.simpleMessage("Memo"),
        "merge": MessageLookupByLibrary.simpleMessage("Zusammenfassen"),
        "mergedValue":
            MessageLookupByLibrary.simpleMessage("Zusammengefasster Wert:"),
        "milliseconds": MessageLookupByLibrary.simpleMessage("ms"),
        "min": MessageLookupByLibrary.simpleMessage("MIN"),
        "minOrder":
            MessageLookupByLibrary.simpleMessage("Min Auftragsvolumen:"),
        "minValue": m61,
        "minValueBuy": m62,
        "minValueOrder": m63,
        "minValueSell": m64,
        "minVolumeInput": m65,
        "minVolumeIsTDH": MessageLookupByLibrary.simpleMessage(
            "Muss niedriger als die Verkaufsmenge sein"),
        "minVolumeTitle": MessageLookupByLibrary.simpleMessage(
            "Erforderliches Mindestvolumen"),
        "minVolumeToggle": MessageLookupByLibrary.simpleMessage(
            "Benutzerdefiniertes Mindestvolumen verwenden"),
        "minimizingWillTerminate": MessageLookupByLibrary.simpleMessage(
            "Warnung: Durch das Minimieren der App auf iOS wird der Aktivierungsprozess abgebrochen."),
        "minutes": MessageLookupByLibrary.simpleMessage("m"),
        "mobileDataWarning": m66,
        "moreInfo": MessageLookupByLibrary.simpleMessage("Mehr Info"),
        "moreTab": MessageLookupByLibrary.simpleMessage("Mehr"),
        "multiActivateGas": m67,
        "multiBaseAmtPlaceholder":
            MessageLookupByLibrary.simpleMessage("Menge"),
        "multiBasePlaceholder": MessageLookupByLibrary.simpleMessage("Coin"),
        "multiBaseSelectTitle":
            MessageLookupByLibrary.simpleMessage("Verkaufen"),
        "multiConfirmCancel": MessageLookupByLibrary.simpleMessage("Abbrechen"),
        "multiConfirmConfirm":
            MessageLookupByLibrary.simpleMessage("Bestätigen"),
        "multiConfirmTitle": m68,
        "multiCreate": MessageLookupByLibrary.simpleMessage("Erstellen"),
        "multiCreateOrder": MessageLookupByLibrary.simpleMessage("Auftrag"),
        "multiCreateOrders": MessageLookupByLibrary.simpleMessage("Aufträge"),
        "multiEthFee": MessageLookupByLibrary.simpleMessage("Gebühr"),
        "multiFiatCancel": MessageLookupByLibrary.simpleMessage("Abbrechen"),
        "multiFiatDesc": MessageLookupByLibrary.simpleMessage(
            "Bitte geben Sie den gewünschten Fiat-Betrag ein:"),
        "multiFiatFill":
            MessageLookupByLibrary.simpleMessage("Automatisch ausfüllen"),
        "multiFixErrors": MessageLookupByLibrary.simpleMessage(
            "Bitte beheben Sie alle Fehler, bevor Sie fortfahren"),
        "multiInvalidAmt":
            MessageLookupByLibrary.simpleMessage("Ungültige Menge"),
        "multiInvalidSellAmt":
            MessageLookupByLibrary.simpleMessage("Ungültige Verkaufsmenge"),
        "multiLowGas": m69,
        "multiLowerThanFee": m70,
        "multiMaxSellAmt":
            MessageLookupByLibrary.simpleMessage("Max Verkaufsmenge beträgt"),
        "multiMinReceiveAmt": MessageLookupByLibrary.simpleMessage(
            "Der Mindestbetrag, den Sie erhalten, beträgt"),
        "multiMinSellAmt":
            MessageLookupByLibrary.simpleMessage("Min Verkaufsmenge beträgt"),
        "multiReceiveTitle": MessageLookupByLibrary.simpleMessage("Erhalten:"),
        "multiSellTitle": MessageLookupByLibrary.simpleMessage("Verkaufen:"),
        "multiTab": MessageLookupByLibrary.simpleMessage("Mehrfach"),
        "multiTableAmt": MessageLookupByLibrary.simpleMessage("Menge erhalten"),
        "multiTablePrice": MessageLookupByLibrary.simpleMessage("Preis/CEX"),
        "networkFee": MessageLookupByLibrary.simpleMessage("Netzwerkgebühr"),
        "newAccount": MessageLookupByLibrary.simpleMessage("neues Konto"),
        "newAccountUpper": MessageLookupByLibrary.simpleMessage("Neues Konto"),
        "newValue": MessageLookupByLibrary.simpleMessage("Neuer Wert:"),
        "newsFeed": MessageLookupByLibrary.simpleMessage("Newsfeed"),
        "next": MessageLookupByLibrary.simpleMessage("Weiter"),
        "no": MessageLookupByLibrary.simpleMessage("Nein"),
        "noArticles": MessageLookupByLibrary.simpleMessage(
            "Keine Neuigkeiten - bitte versuchen Sie es später erneut!"),
        "noCoinFound":
            MessageLookupByLibrary.simpleMessage("Kein Coin gefunden"),
        "noFunds": MessageLookupByLibrary.simpleMessage("Kein Guthaben"),
        "noFundsDetected": MessageLookupByLibrary.simpleMessage(
            "Kein Guthaben vorhanden - bitte zuerst einzahlen."),
        "noInternet":
            MessageLookupByLibrary.simpleMessage("Keine Internetverbindung"),
        "noItemsToExport":
            MessageLookupByLibrary.simpleMessage("Keine Elemente ausgewählt"),
        "noItemsToImport":
            MessageLookupByLibrary.simpleMessage("Keine Elemente ausgewählt"),
        "noMatchingOrders": MessageLookupByLibrary.simpleMessage(
            "Keine übereinstimmenden Aufträge gefunden"),
        "noOrder": m71,
        "noOrderAvailable": MessageLookupByLibrary.simpleMessage(
            "Klicken Sie hier, um einen Auftrag zu erstellen"),
        "noOrders": MessageLookupByLibrary.simpleMessage(
            "Keine Aufträge, bitte gehen Sie zum Handel."),
        "noRewardYet": MessageLookupByLibrary.simpleMessage(
            "Keine Belohnung verfügbar. Bitte versuchen Sie es in 1 Stunde erneut."),
        "noRewards": MessageLookupByLibrary.simpleMessage(
            "Keine anforderungsfähigen Belohnungen"),
        "noSuchCoin":
            MessageLookupByLibrary.simpleMessage("Diese Münze gibt es nicht"),
        "noSwaps":
            MessageLookupByLibrary.simpleMessage("Kein Verlauf vorhanden"),
        "noTxs": MessageLookupByLibrary.simpleMessage(
            "Keine Transaktionen vorhanden"),
        "nonNumericInput": MessageLookupByLibrary.simpleMessage(
            "Der Wert muss numerisch sein"),
        "none": MessageLookupByLibrary.simpleMessage("Keiner"),
        "notEnoughGas": m72,
        "notEnoughtBalanceForFee": MessageLookupByLibrary.simpleMessage(
            "Nicht genügend Guthaben für Gebühren - handeln Sie einen kleinere Menge"),
        "noteOnOrder": MessageLookupByLibrary.simpleMessage(
            "Hinweis: Übereinstimmende Aufträge können nicht mehr storniert werden."),
        "notePlaceholder":
            MessageLookupByLibrary.simpleMessage("Notiz hinzufügen"),
        "noteTitle": MessageLookupByLibrary.simpleMessage("Notiz"),
        "nothingFound": MessageLookupByLibrary.simpleMessage("Nichts gefunden"),
        "notifSwapCompletedText": m73,
        "notifSwapCompletedTitle":
            MessageLookupByLibrary.simpleMessage("Swap abgeschlossen"),
        "notifSwapFailedText": m74,
        "notifSwapFailedTitle":
            MessageLookupByLibrary.simpleMessage("Swap fehlgeschlagen"),
        "notifSwapStartedText": m75,
        "notifSwapStartedTitle":
            MessageLookupByLibrary.simpleMessage("Neuer swap gestartet"),
        "notifSwapStatusTitle":
            MessageLookupByLibrary.simpleMessage("Swap-Status geändert"),
        "notifSwapTimeoutText": m76,
        "notifSwapTimeoutTitle": MessageLookupByLibrary.simpleMessage(
            "Swap ist abgelaufen(Zeitüberschreitung)"),
        "notifTxText": m77,
        "notifTxTitle":
            MessageLookupByLibrary.simpleMessage("Eingehende Transaktion"),
        "numberAssets": m78,
        "officialPressRelease":
            MessageLookupByLibrary.simpleMessage("Offizielle Pressemitteilung"),
        "okButton": MessageLookupByLibrary.simpleMessage("Ok"),
        "oldLogsDelete": MessageLookupByLibrary.simpleMessage("Löschen"),
        "oldLogsTitle": MessageLookupByLibrary.simpleMessage("Alte Protokolle"),
        "oldLogsUsed":
            MessageLookupByLibrary.simpleMessage("Genutzter Speicher"),
        "openMessage":
            MessageLookupByLibrary.simpleMessage("Fehlermeldung öffnen"),
        "orderBookLess": MessageLookupByLibrary.simpleMessage("Weniger"),
        "orderBookMore": MessageLookupByLibrary.simpleMessage("Mehr"),
        "orderCancel": m79,
        "orderCreated":
            MessageLookupByLibrary.simpleMessage("Auftrag erstellt"),
        "orderCreatedInfo": MessageLookupByLibrary.simpleMessage(
            "Auftrag erfolgreich erstellt"),
        "orderDetailsAddress": MessageLookupByLibrary.simpleMessage("Adresse"),
        "orderDetailsCancel": MessageLookupByLibrary.simpleMessage("Abbrechen"),
        "orderDetailsExpedient": m80,
        "orderDetailsExpensive": m81,
        "orderDetailsFor": MessageLookupByLibrary.simpleMessage("für"),
        "orderDetailsIdentical":
            MessageLookupByLibrary.simpleMessage("Identisch mit CEX"),
        "orderDetailsMin": MessageLookupByLibrary.simpleMessage("min."),
        "orderDetailsPrice": MessageLookupByLibrary.simpleMessage("Preis"),
        "orderDetailsReceive": MessageLookupByLibrary.simpleMessage("Erhalten"),
        "orderDetailsSelect": MessageLookupByLibrary.simpleMessage("Auswählen"),
        "orderDetailsSells": MessageLookupByLibrary.simpleMessage("Verkäufe"),
        "orderDetailsSettings": MessageLookupByLibrary.simpleMessage(
            "Durch einmaliges antippen öffnen Sie die Details, durch langes antippen wählen Sie einen Auftrag"),
        "orderDetailsSpend": MessageLookupByLibrary.simpleMessage("Ausgegeben"),
        "orderDetailsTitle": MessageLookupByLibrary.simpleMessage("Details"),
        "orderFilled": m82,
        "orderMatched":
            MessageLookupByLibrary.simpleMessage("Auftrag gematched!"),
        "orderMatching":
            MessageLookupByLibrary.simpleMessage("Auftrag wird gematched"),
        "orderTypePartial": MessageLookupByLibrary.simpleMessage("Auftrag"),
        "orderTypeUnknown":
            MessageLookupByLibrary.simpleMessage("Unbekannter Auftragstyp"),
        "orders": MessageLookupByLibrary.simpleMessage("Aufträge"),
        "ordersActive": MessageLookupByLibrary.simpleMessage("Aktiv"),
        "ordersHistory": MessageLookupByLibrary.simpleMessage("Verlauf"),
        "ordersTableAmount": m83,
        "ordersTablePrice": m84,
        "ordersTableTotal": m85,
        "overwrite": MessageLookupByLibrary.simpleMessage("Überschreiben"),
        "ownOrder": MessageLookupByLibrary.simpleMessage(
            "Dies ist Ihr eigener Auftrag!"),
        "paidFromBalance":
            MessageLookupByLibrary.simpleMessage("Bezahlt aus dem Guthaben:"),
        "paidFromVolume": MessageLookupByLibrary.simpleMessage(
            "Bezahlt aus dem eingegangenen Volumen:"),
        "paidWith": MessageLookupByLibrary.simpleMessage("Bezahlt mit"),
        "passwordRequirement": MessageLookupByLibrary.simpleMessage(
            "Das Kennwort muss mindestens 12 Zeichen enthalten, davon ein Kleinbuchstabe, ein Großbuchstabe und ein Sonderzeichen."),
        "pastTransactionsFromDate": MessageLookupByLibrary.simpleMessage(
            "In Ihrem Wallet werden Ihre vergangenen Transaktionen angezeigt, die nach dem angegebenen Datum getätigt wurden."),
        "paymentUriDetailsAccept":
            MessageLookupByLibrary.simpleMessage("Bezahlen"),
        "paymentUriDetailsAcceptQuestion": MessageLookupByLibrary.simpleMessage(
            "Akzeptieren Sie diese Transaktion?"),
        "paymentUriDetailsAddressSpan":
            MessageLookupByLibrary.simpleMessage("Nach Adresse"),
        "paymentUriDetailsAmountSpan":
            MessageLookupByLibrary.simpleMessage("Menge:"),
        "paymentUriDetailsCoinSpan":
            MessageLookupByLibrary.simpleMessage("Coin:"),
        "paymentUriDetailsDeny":
            MessageLookupByLibrary.simpleMessage("Abbrechen"),
        "paymentUriDetailsTitle":
            MessageLookupByLibrary.simpleMessage("Zahlung angefordert"),
        "paymentUriInactiveCoin": m86,
        "placeOrder":
            MessageLookupByLibrary.simpleMessage("Auftrag platzieren"),
        "pleaseAcceptAllCoinActivationRequests":
            MessageLookupByLibrary.simpleMessage(
                "Bitte akzeptieren Sie alle speziellen Münzaktivierungsanfragen oder heben Sie die Auswahl der Münzen auf."),
        "pleaseAddCoin": MessageLookupByLibrary.simpleMessage(
            "Bitte fügen Sie einen Coin hinzu"),
        "pleaseRestart": MessageLookupByLibrary.simpleMessage(
            "Bitte starten Sie die App neu, um es erneut zu versuchen, oder drücken Sie die Schaltfläche unten."),
        "portfolio": MessageLookupByLibrary.simpleMessage("Portfolio"),
        "poweredOnKmd":
            MessageLookupByLibrary.simpleMessage("Unterstützt von Gleec"),
        "price": MessageLookupByLibrary.simpleMessage("Preis"),
        "privateKey":
            MessageLookupByLibrary.simpleMessage("Privater Schlüssel"),
        "privateKeys":
            MessageLookupByLibrary.simpleMessage("Private Schlüssel"),
        "protectionCtrlConfirmations":
            MessageLookupByLibrary.simpleMessage("Bestätigungen"),
        "protectionCtrlCustom": MessageLookupByLibrary.simpleMessage(
            "Individuelle Schutzeinstellungen verwenden"),
        "protectionCtrlOff": MessageLookupByLibrary.simpleMessage("AUS"),
        "protectionCtrlOn": MessageLookupByLibrary.simpleMessage("AN"),
        "protectionCtrlWarning": MessageLookupByLibrary.simpleMessage(
            "Achtung, dieser Atomic Swap ist nicht durch dPoW geschützt."),
        "pubkey": MessageLookupByLibrary.simpleMessage(
            "Öffentlicher Schlüssel (Pubkey)"),
        "qrCodeScanner":
            MessageLookupByLibrary.simpleMessage("QR-Code-Scanner"),
        "question_1": MessageLookupByLibrary.simpleMessage(
            "Speichern Sie meine privaten Schlüssel?"),
        "question_10": m87,
        "question_2": m88,
        "question_3": MessageLookupByLibrary.simpleMessage(
            "Wie lange dauert ein Atomic Swap?"),
        "question_4": MessageLookupByLibrary.simpleMessage(
            "Muss ich für die Dauer des Swaps online sein?"),
        "question_5": m89,
        "question_6": MessageLookupByLibrary.simpleMessage(
            "Bieten Sie einen Support für die Nutzer an?"),
        "question_7": MessageLookupByLibrary.simpleMessage(
            "Gibt es länderspezifische Einschränkungen?"),
        "question_8": m90,
        "question_9": m91,
        "rebrandingAnnouncement": MessageLookupByLibrary.simpleMessage(
            "Es ist eine neue Ära! Wir haben unseren Namen offiziell von „AtomicDEX“ in „Gleec Wallet“ geändert."),
        "receive": MessageLookupByLibrary.simpleMessage("ERHALTEN"),
        "receiveLower": MessageLookupByLibrary.simpleMessage("Erhalten"),
        "recommendSeedMessage": MessageLookupByLibrary.simpleMessage(
            "Wir empfehlen die Offline-Sicherung."),
        "remove": MessageLookupByLibrary.simpleMessage("Deaktivieren"),
        "requestedTrade":
            MessageLookupByLibrary.simpleMessage("Angeforderter Handel"),
        "reset": MessageLookupByLibrary.simpleMessage("LÖSCHEN"),
        "resetTitle":
            MessageLookupByLibrary.simpleMessage("Formular zurücksetzen"),
        "restoreWallet":
            MessageLookupByLibrary.simpleMessage("WIEDERHERSTELLEN"),
        "retryActivating": MessageLookupByLibrary.simpleMessage(
            "Erneuter Versuch, alle Münzen zu aktivieren..."),
        "retryAll": MessageLookupByLibrary.simpleMessage(
            "Erneuter Versuch, alle zu aktivieren"),
        "rewardsButton":
            MessageLookupByLibrary.simpleMessage("Belohnungen beantragen"),
        "rewardsCancel": MessageLookupByLibrary.simpleMessage("Stornieren"),
        "rewardsError": MessageLookupByLibrary.simpleMessage(
            "Es ist ein Fehler aufgetreten. Bitte versuchen Sie es später noch einmal."),
        "rewardsInProgressLong": MessageLookupByLibrary.simpleMessage(
            "Transaktion ist in Bearbeitung"),
        "rewardsInProgressShort":
            MessageLookupByLibrary.simpleMessage("in Bearbeitung"),
        "rewardsLowAmountLong": MessageLookupByLibrary.simpleMessage(
            "UTXO-Menge ist geringer als 10 KMD"),
        "rewardsLowAmountShort":
            MessageLookupByLibrary.simpleMessage("<10 KMD"),
        "rewardsOneHourLong": MessageLookupByLibrary.simpleMessage(
            "Eine Stunde ist noch nicht vergangen"),
        "rewardsOneHourShort":
            MessageLookupByLibrary.simpleMessage("<1 Stunde"),
        "rewardsPopupOk": MessageLookupByLibrary.simpleMessage("Ok"),
        "rewardsPopupTitle":
            MessageLookupByLibrary.simpleMessage("Belohnungsstatus:"),
        "rewardsReadMore": MessageLookupByLibrary.simpleMessage(
            "Lesen Sie mehr über KMD-Belohnungen für aktive Nutzer"),
        "rewardsReceive": MessageLookupByLibrary.simpleMessage("Empfangen"),
        "rewardsSuccess": m92,
        "rewardsTableFiat": MessageLookupByLibrary.simpleMessage("Fiat"),
        "rewardsTableRewards":
            MessageLookupByLibrary.simpleMessage("Belohnungen,\nKMD"),
        "rewardsTableStatus": MessageLookupByLibrary.simpleMessage("Status"),
        "rewardsTableTime":
            MessageLookupByLibrary.simpleMessage("Verbleibende Zeit"),
        "rewardsTableTitle": MessageLookupByLibrary.simpleMessage(
            "Informationen zu den Belohnungen:"),
        "rewardsTableUXTO":
            MessageLookupByLibrary.simpleMessage("UTXO Menge,\nKMD"),
        "rewardsTimeDays": m93,
        "rewardsTimeHours": m94,
        "rewardsTimeMin": m95,
        "rewardsTitle": MessageLookupByLibrary.simpleMessage(
            "Informationen zu den Belohnungen"),
        "russianLanguage": MessageLookupByLibrary.simpleMessage("Russisch"),
        "saveMerged":
            MessageLookupByLibrary.simpleMessage("Zusammenfassung speichern"),
        "scrollToContinue": MessageLookupByLibrary.simpleMessage(
            "Scrollen Sie nach unten, um fortzufahren..."),
        "searchFilterCoin": MessageLookupByLibrary.simpleMessage("Coin suchen"),
        "searchFilterSubtitleAVX":
            MessageLookupByLibrary.simpleMessage("Alle Avax tokens auswählen"),
        "searchFilterSubtitleBEP":
            MessageLookupByLibrary.simpleMessage("Alle BEP tokens auswählen"),
        "searchFilterSubtitleCosmos": MessageLookupByLibrary.simpleMessage(
            "Wählen Sie alle Cosmos Network aus"),
        "searchFilterSubtitleERC":
            MessageLookupByLibrary.simpleMessage("Alle ERC tokens auswählen"),
        "searchFilterSubtitleETC":
            MessageLookupByLibrary.simpleMessage("Alle ETC tokens auswählen"),
        "searchFilterSubtitleFTM": MessageLookupByLibrary.simpleMessage(
            "Alle Fantom tokens auswählen"),
        "searchFilterSubtitleHCO": MessageLookupByLibrary.simpleMessage(
            "Alle HecoChain tokens auswählen"),
        "searchFilterSubtitleHRC": MessageLookupByLibrary.simpleMessage(
            "Alle Harmony tokens auswählen"),
        "searchFilterSubtitleIris": MessageLookupByLibrary.simpleMessage(
            "Wählen Sie alle Iris-Netzwerke aus"),
        "searchFilterSubtitleKRC": MessageLookupByLibrary.simpleMessage(
            "Alle Kucoin tokens auswählen"),
        "searchFilterSubtitleMVR": MessageLookupByLibrary.simpleMessage(
            "Alle Moonriver tokens auswählen"),
        "searchFilterSubtitlePLG": MessageLookupByLibrary.simpleMessage(
            "Alle Polygon tokens auswählen"),
        "searchFilterSubtitleQRC":
            MessageLookupByLibrary.simpleMessage("Alle QRC tokens auswählen"),
        "searchFilterSubtitleSBCH": MessageLookupByLibrary.simpleMessage(
            "Alle SmartBCH tokens auswählen"),
        "searchFilterSubtitleSLP": MessageLookupByLibrary.simpleMessage(
            "Wählen Sie alle SLP-Tokens aus"),
        "searchFilterSubtitleSmartChain":
            MessageLookupByLibrary.simpleMessage("Alle SmartChains auswählen"),
        "searchFilterSubtitleTestCoins":
            MessageLookupByLibrary.simpleMessage("Alle Test Assets auswählen"),
        "searchFilterSubtitleUBQ":
            MessageLookupByLibrary.simpleMessage("Alle Ubiq coins auswählen"),
        "searchFilterSubtitleZHTLC": MessageLookupByLibrary.simpleMessage(
            "Wählen Sie alle ZHTLC-Münzen aus"),
        "searchFilterSubtitleutxo":
            MessageLookupByLibrary.simpleMessage("Alle UTXO coins auswählen"),
        "searchForTicker":
            MessageLookupByLibrary.simpleMessage("Ticker suchen"),
        "seconds": MessageLookupByLibrary.simpleMessage("s"),
        "security": MessageLookupByLibrary.simpleMessage("Sicherheit"),
        "seeOrders": m96,
        "seeTxHistory": MessageLookupByLibrary.simpleMessage(
            "Transaktionsverlauf anzeigen"),
        "seedPhrase": MessageLookupByLibrary.simpleMessage("Seed-Phrase"),
        "seedPhraseTitle":
            MessageLookupByLibrary.simpleMessage("Ihr neuer Seed"),
        "selectCoin": MessageLookupByLibrary.simpleMessage("Coin auswählen"),
        "selectCoinInfo": MessageLookupByLibrary.simpleMessage(
            "Wählen Sie die Coins aus, die Sie Ihrem Portfolio hinzufügen möchten."),
        "selectCoinTitle":
            MessageLookupByLibrary.simpleMessage("Coins aktivieren:"),
        "selectCoinToBuy": MessageLookupByLibrary.simpleMessage(
            "Wählen Sie den zu kaufenden Coin aus"),
        "selectCoinToSell": MessageLookupByLibrary.simpleMessage(
            "Wählen Sie den zu verkaufenden Coin"),
        "selectDate":
            MessageLookupByLibrary.simpleMessage("Wählen Sie ein Datum aus"),
        "selectFileImport":
            MessageLookupByLibrary.simpleMessage("Datei auswählen"),
        "selectLanguage":
            MessageLookupByLibrary.simpleMessage("Sprache wählen"),
        "selectPaymentMethod":
            MessageLookupByLibrary.simpleMessage("Wählen Sie eine Bezahlart"),
        "selectedOrder":
            MessageLookupByLibrary.simpleMessage("Ausgewählter Auftrag:"),
        "sell": MessageLookupByLibrary.simpleMessage("Verkaufen"),
        "sellTestCoinWarning": MessageLookupByLibrary.simpleMessage(
            "Achtung, Sie sind bereit, Testmünzen OHNE realen Wert zu verkaufen!"),
        "send": MessageLookupByLibrary.simpleMessage("SENDEN"),
        "setUpPassword":
            MessageLookupByLibrary.simpleMessage("KENNWORT EINRICHTEN"),
        "settingDialogSpan1": MessageLookupByLibrary.simpleMessage(
            "Sind Sie sicher, dass Sie die"),
        "settingDialogSpan2":
            MessageLookupByLibrary.simpleMessage("Wallet löschen möchten?"),
        "settingDialogSpan3": MessageLookupByLibrary.simpleMessage(
            "Wenn ja, stellen Sie sicher, dass Sie"),
        "settingDialogSpan4":
            MessageLookupByLibrary.simpleMessage("Ihren Seed sichern,"),
        "settingDialogSpan5": MessageLookupByLibrary.simpleMessage(
            "um Ihre Wallet in Zukunft wiederherzustellen."),
        "settingLanguageTitle":
            MessageLookupByLibrary.simpleMessage("Sprachen"),
        "settings": MessageLookupByLibrary.simpleMessage("Einstellungen"),
        "share": MessageLookupByLibrary.simpleMessage("Teilen"),
        "shareAddress": m97,
        "shouldScanPastTransaction": m98,
        "showAddress": MessageLookupByLibrary.simpleMessage("Adresse anzeigen"),
        "showDetails": MessageLookupByLibrary.simpleMessage("Details anzeigen"),
        "showMyOrders":
            MessageLookupByLibrary.simpleMessage("MEINE AUFTRÄGE ANZEIGEN"),
        "showingOrders": m99,
        "signInWithPassword":
            MessageLookupByLibrary.simpleMessage("Mit Kennwort anmelden"),
        "signInWithSeedPhrase": MessageLookupByLibrary.simpleMessage(
            "Kennwort vergessen? Wallet mit der Seed wiederherstellen"),
        "simple": MessageLookupByLibrary.simpleMessage("Einfach"),
        "simpleTradeActivate":
            MessageLookupByLibrary.simpleMessage("Aktivieren"),
        "simpleTradeBuyHint": m100,
        "simpleTradeBuyTitle": MessageLookupByLibrary.simpleMessage("Kaufen"),
        "simpleTradeClose": MessageLookupByLibrary.simpleMessage("Schließen"),
        "simpleTradeMaxActiveCoins": m101,
        "simpleTradeNotActive": m102,
        "simpleTradeRecieve": MessageLookupByLibrary.simpleMessage("Erhalten"),
        "simpleTradeSellHint": m103,
        "simpleTradeSellTitle":
            MessageLookupByLibrary.simpleMessage("Verkaufen"),
        "simpleTradeSend": MessageLookupByLibrary.simpleMessage("Senden"),
        "simpleTradeShowLess":
            MessageLookupByLibrary.simpleMessage("Weniger anzeigen"),
        "simpleTradeShowMore":
            MessageLookupByLibrary.simpleMessage("Mehr anzeigen"),
        "simpleTradeUnableActivate": m104,
        "skip": MessageLookupByLibrary.simpleMessage("Überspringen"),
        "snackbarDismiss": MessageLookupByLibrary.simpleMessage("Ablehnen"),
        "soundCantPlayThatMsg": m105,
        "soundPlayedWhen": m106,
        "soundSettingsLink": MessageLookupByLibrary.simpleMessage("Sound"),
        "soundSettingsTitle":
            MessageLookupByLibrary.simpleMessage("Sound-Einstellungen"),
        "soundsDialogTitle": MessageLookupByLibrary.simpleMessage("Sounds"),
        "soundsDoNotShowAgain": MessageLookupByLibrary.simpleMessage(
            "Verstanden, nicht mehr zeigen"),
        "soundsExplanation": MessageLookupByLibrary.simpleMessage(
            "Während des Swap-Prozesses und wenn ein aktiver Maker-Auftrag erteilt wird, hören Sie akustische Benachrichtigungen.\nDas Atomic-Swap-Protokoll erfordert, dass die Teilnehmer für einen erfolgreichen Handel online sind, und akustische Benachrichtigungen helfen dabei."),
        "soundsNote": MessageLookupByLibrary.simpleMessage(
            "Beachten Sie, dass Sie Ihre eigenen Sounds in den Anwendungseinstellungen festlegen können."),
        "spanishLanguage": MessageLookupByLibrary.simpleMessage("Spanisch"),
        "startDate": MessageLookupByLibrary.simpleMessage("Startdatum"),
        "startSwap":
            MessageLookupByLibrary.simpleMessage("Starten Sie den Tausch"),
        "step": MessageLookupByLibrary.simpleMessage("Schritt"),
        "success": MessageLookupByLibrary.simpleMessage("Erfolgreich!"),
        "support": MessageLookupByLibrary.simpleMessage("Support"),
        "supportLinksDesc": m107,
        "swap": MessageLookupByLibrary.simpleMessage("swap"),
        "swapCurrent": MessageLookupByLibrary.simpleMessage("Aktuell"),
        "swapDetailTitle":
            MessageLookupByLibrary.simpleMessage("TAUSCH-DETAILS BESTÄTIGEN"),
        "swapEstimated": MessageLookupByLibrary.simpleMessage("Schätzung"),
        "swapFailed":
            MessageLookupByLibrary.simpleMessage("Swap fehlgeschlagen"),
        "swapGasActivate": m108,
        "swapGasAmount": m109,
        "swapGasAmountRequired": m110,
        "swapOngoing": MessageLookupByLibrary.simpleMessage("Swap läuft"),
        "swapProgress":
            MessageLookupByLibrary.simpleMessage("Fortschrittdetails"),
        "swapStarted": MessageLookupByLibrary.simpleMessage("Gestartet"),
        "swapSucceful":
            MessageLookupByLibrary.simpleMessage("Swap erfolgreich"),
        "swapTotal": MessageLookupByLibrary.simpleMessage("Gesamt"),
        "swapUUID": MessageLookupByLibrary.simpleMessage("Swap UUID"),
        "switchTheme": MessageLookupByLibrary.simpleMessage("Thema ändern"),
        "syncFromDate": MessageLookupByLibrary.simpleMessage(
            "Ab dem angegebenen Datum synchronisieren"),
        "syncFromSaplingActivation": MessageLookupByLibrary.simpleMessage(
            "Synchronisierung durch Setzlingsaktivierung"),
        "syncNewTransactions": MessageLookupByLibrary.simpleMessage(
            "Synchronisieren Sie neue Transaktionen"),
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
        "takerOrder": MessageLookupByLibrary.simpleMessage("Taker-Auftrag"),
        "timeOut": MessageLookupByLibrary.simpleMessage("Zeitüberschreitung"),
        "titleCreatePassword":
            MessageLookupByLibrary.simpleMessage("PASSWORT ERSTELLEN"),
        "titleCurrentAsk":
            MessageLookupByLibrary.simpleMessage("Auftrag ausgewählt"),
        "to": MessageLookupByLibrary.simpleMessage("An"),
        "toAddress": MessageLookupByLibrary.simpleMessage("An Adresse:"),
        "tooManyAssetsEnabledSpan1":
            MessageLookupByLibrary.simpleMessage("Sie haben"),
        "tooManyAssetsEnabledSpan2": MessageLookupByLibrary.simpleMessage(
            "Assets aktiviert. Max Limit aktivierbarer Assets ist"),
        "tooManyAssetsEnabledSpan3": MessageLookupByLibrary.simpleMessage(
            ". Bitte deaktivieren Sie welche, bevor Sie neue hinzufügen."),
        "tooManyAssetsEnabledTitle":
            MessageLookupByLibrary.simpleMessage("Zu viele Assets aktiviert"),
        "totalFees": MessageLookupByLibrary.simpleMessage("Gesamtgebühren:"),
        "trade": MessageLookupByLibrary.simpleMessage("HANDEL"),
        "tradeCompleted":
            MessageLookupByLibrary.simpleMessage("SWAP ABGESCHLOSSEN!"),
        "tradeDetail": MessageLookupByLibrary.simpleMessage("HANDELSDETAILS"),
        "tradePreimageError": MessageLookupByLibrary.simpleMessage(
            "Handelsgebühren konnten nicht berechnet werden"),
        "tradingFee": MessageLookupByLibrary.simpleMessage("Handelsgebühr:"),
        "tradingMode": MessageLookupByLibrary.simpleMessage("Handelsart:"),
        "transactionAddress":
            MessageLookupByLibrary.simpleMessage("Transaktionsadresse"),
        "transactionHidden":
            MessageLookupByLibrary.simpleMessage("Transaktion ausgeblendet"),
        "transactionHiddenPhishing": MessageLookupByLibrary.simpleMessage(
            "Diese Transaktion wurde aufgrund eines möglichen Phishing-Versuchs ausgeblendet."),
        "tryRestarting": MessageLookupByLibrary.simpleMessage(
            "Wenn auch dann noch einige Coins nicht aktiviert sind, versuchen Sie, die App neu zu starten."),
        "turkishLanguage": MessageLookupByLibrary.simpleMessage("Türkisch"),
        "txBlock": MessageLookupByLibrary.simpleMessage("Block"),
        "txConfirmations":
            MessageLookupByLibrary.simpleMessage("Bestätigungen"),
        "txConfirmed": MessageLookupByLibrary.simpleMessage("BESTÄTIGT"),
        "txFee": MessageLookupByLibrary.simpleMessage("Gebühr"),
        "txFeeTitle":
            MessageLookupByLibrary.simpleMessage("Transaktionsgebühr:"),
        "txHash": MessageLookupByLibrary.simpleMessage("Transaktions ID"),
        "txLimitExceeded": MessageLookupByLibrary.simpleMessage(
            "Zu viele Anfragen.\nDas Limit für Anfragen zur Transaktionshistorie wurde überschritten.\nBitte versuchen Sie es später noch einmal."),
        "txNotConfirmed": MessageLookupByLibrary.simpleMessage("UNBESTÄTIGT"),
        "txleft": m112,
        "ukrainianLanguage": MessageLookupByLibrary.simpleMessage("Ukrainisch"),
        "unlock": MessageLookupByLibrary.simpleMessage("Freischalten"),
        "unlockFunds":
            MessageLookupByLibrary.simpleMessage("Geldmittel freischalten"),
        "unlockSuccess": m113,
        "unspendable": MessageLookupByLibrary.simpleMessage("Nicht verwendbar"),
        "updatesAvailable":
            MessageLookupByLibrary.simpleMessage("Neue Version verfügbar"),
        "updatesChecking":
            MessageLookupByLibrary.simpleMessage("Nach Updates suchen..."),
        "updatesCurrentVersion": m114,
        "updatesNotifAvailable": MessageLookupByLibrary.simpleMessage(
            "Neue Version verfügbar. Bitte updaten."),
        "updatesNotifAvailableVersion": m115,
        "updatesNotifTitle":
            MessageLookupByLibrary.simpleMessage("Update verfügbar"),
        "updatesSkip":
            MessageLookupByLibrary.simpleMessage("Vorerst überspringen"),
        "updatesTitle": m116,
        "updatesUpToDate": MessageLookupByLibrary.simpleMessage(
            "Bereits auf dem neuesten Stand"),
        "updatesUpdate": MessageLookupByLibrary.simpleMessage("Update"),
        "uriInsufficientBalanceSpan1": MessageLookupByLibrary.simpleMessage(
            "Nicht genug Guthaben für die gescannte"),
        "uriInsufficientBalanceSpan2":
            MessageLookupByLibrary.simpleMessage("Zahlungsaufforderung."),
        "uriInsufficientBalanceTitle":
            MessageLookupByLibrary.simpleMessage("Unzureichendes Guthaben"),
        "value": MessageLookupByLibrary.simpleMessage("Wert:"),
        "version": MessageLookupByLibrary.simpleMessage("Version"),
        "viewInExplorerButton":
            MessageLookupByLibrary.simpleMessage("Explorer"),
        "viewSeedAndKeys":
            MessageLookupByLibrary.simpleMessage("Seed & Private Schlüssel"),
        "volumes": MessageLookupByLibrary.simpleMessage("Volumen"),
        "walletInUse": MessageLookupByLibrary.simpleMessage(
            "Wallet-Name existiert bereits"),
        "walletMaxChar": MessageLookupByLibrary.simpleMessage(
            "Wallet-Name darf maximal 40 Zeichen lang sein"),
        "walletOnly": MessageLookupByLibrary.simpleMessage("Nur Wallet"),
        "warning": MessageLookupByLibrary.simpleMessage("Achtung!"),
        "warningOkBtn": MessageLookupByLibrary.simpleMessage("Ok"),
        "warningShareLogs": MessageLookupByLibrary.simpleMessage(
            "Achtung - in besonderen Fällen enthalten diese Protokolldaten sensible Informationen, die dazu verwendet werden können, Coins aus fehlgeschlagenen Swaps auszugeben!"),
        "weFailedTo": m117,
        "weFailedToActivate": m118,
        "welcomeInfo": m119,
        "welcomeLetSetUp": MessageLookupByLibrary.simpleMessage("AUF GEHT\'S!"),
        "welcomeTitle": MessageLookupByLibrary.simpleMessage("WILLKOMMEN"),
        "welcomeWallet": MessageLookupByLibrary.simpleMessage("Wallet"),
        "willBeRedirected": MessageLookupByLibrary.simpleMessage(
            "Nach Fertigstellung werden Sie zur Portfolio-Seite weitergeleitet."),
        "willTakeTime": MessageLookupByLibrary.simpleMessage(
            "Dies dauert eine Weile und die App muss im Vordergrund bleiben.\nDas Beenden der App während der Aktivierung kann zu Problemen führen."),
        "withdraw": MessageLookupByLibrary.simpleMessage("Auszahlung"),
        "withdrawCameraAccessText": m120,
        "withdrawCameraAccessTitle":
            MessageLookupByLibrary.simpleMessage("Zugriff verweigert"),
        "withdrawConfirm":
            MessageLookupByLibrary.simpleMessage("Auszahlung bestätigen"),
        "withdrawConfirmError": MessageLookupByLibrary.simpleMessage(
            "Es ist ein Fehler aufgetreten. Bitte versuchen Sie es später noch einmal."),
        "withdrawValue": m121,
        "wrongCoinSpan1": MessageLookupByLibrary.simpleMessage(
            "Sie versuchen, einen QR-Code für eine Zahlung zu scannen"),
        "wrongCoinSpan2":
            MessageLookupByLibrary.simpleMessage("aber Sie sind auf dem"),
        "wrongCoinSpan3":
            MessageLookupByLibrary.simpleMessage("Auszahlungs-Bildschirm"),
        "wrongCoinTitle": MessageLookupByLibrary.simpleMessage("Falscher Coin"),
        "wrongPassword": MessageLookupByLibrary.simpleMessage(
            "Die Kennwörter stimmen nicht überein. Bitte versuche es erneut."),
        "yes": MessageLookupByLibrary.simpleMessage("Ja"),
        "you have a fresh order that is trying to match with an existing order":
            MessageLookupByLibrary.simpleMessage(
                "Sie haben einen neuen Auftrag, der  einem bestehenden Auftrag zugeordnet werden soll"),
        "you have an active swap in progress":
            MessageLookupByLibrary.simpleMessage(
                "Sie haben einen aktiven Swap in Arbeit"),
        "you have an order that new orders can match with":
            MessageLookupByLibrary.simpleMessage(
                "Sie haben einen Auftrag, dem neue Aufträge zugeordnet werden können"),
        "youAreSending": MessageLookupByLibrary.simpleMessage("Sie senden:"),
        "youWillReceiveClaim": m122,
        "youWillReceived":
            MessageLookupByLibrary.simpleMessage("Sie erhalten:"),
        "yourWallet": MessageLookupByLibrary.simpleMessage("Ihr Wallet")
      };
}
