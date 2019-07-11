Wissensbasis für Ausarbeitungen
===============================

Dieses Dokument ist nicht als durchgängige Anleitung zur Anfertigung
von Ausarbeitungen zu verstehen. Es soll die Studierenden nur dabei
unterstützen, grundlegende Fehler zu vermeiden und so ihnen und den
Betreuern unnötige Korrekturarbeit ersparen. Eine guter Anlaufpunkt
für weitere Informationen zur Anfertigung von Ausarbeitungen findet
sich unter folgender URL: http://www.ccs-labs.org/theses/info.shtml


Grundlegendes
-------------

1.  Die Kunst, eine gute Arbeit zu schreiben, besteht darin, *sich in
    den (potentiellen) Leser hineinzuversetzen*. Nur, wenn man das
    Dokument mit der Brille eines themen*unkundigen*, aber
    umfeld*kundigen* Lesers verfasst, erreicht man das richtige (und
    konstante!) Abstraktionsniveau; das heißt, man erklärt Details nur
    dort, wo sie für das Verständnis der Arbeit wichtig sind, und wo
    sie nicht beim Leser vorausgesetzt werden können.

2.  Dasselbe gilt für die Gesamtstruktur und Argumentationslinie der
    Arbeit -- der Leser kann den inneren Gedankengang nicht erraten,
    sondern soll beim Lesen klar durch das Dokument geführt werden. Das
    impliziert, dass sich der Leser zu jedem Zeitpunkt darüber bewusst
    sein kann, *warum* er diesen Abschnitt gerade liest, also warum er
    relevant für die Arbeit und ihr Verständnis ist.

3.  Der Inhalt der Arbeit besteht darin, die grundlegenden *Konzepte*
    des bearbeiteten Themas bzw. hinter der Implementierung darzulegen.
    Folgende Fragen muss die Arbeit primär beantworten: Was ist und
    welche Eigenschaften hat die bearbeitete Problemstellung? Welche
    grundsätzlichen Herangehensweisen/Konzepte/Lösungsansätze gibt
    es dafür? Welche Herangehensweise, welches Konzept wurde konkret
    gewählt oder entwickelt und warum? Erst dann ist auf die
    Implementierung einzugehen, wobei auch hier die umgesetzten Konzepte
    und die generelle Architektur interessieren, nicht die Details.

4.  Jede Arbeit benötigt eine Evaluation, in der gezeigt wird,
    inwiefern der neue Ansatz oder die neue Implementierung lauffähig
    ist, und ggf. welche Vorteile und Nachteile sie im Vergleich zur
    Konkurrenz besitzt. Dabei auf präzise Angaben zur Umgebung der
    Messungen achten (z. B. Testfall, Compilerversion, CPU-Takt).

5.  Auf Rechtschreib- und Tippfehler ist vor dem Weiterleiten an den
    Betreuer zu überprüfen; diese Arbeit ist dem Betreuer nicht
    zuzumuten. In LaTeX gesetzte Dokumente ggf. dazu nach Word
    exportieren (z. B. `latex2rtf`).

6.  Ein Text ohne Punkt und Komma erschwert das flüssige Lesen der
    Arbeit. Daher auf korrekte Zeichensetzung achten; diese hilft
    erheblich beim Verständnis der Arbeit.


Schreibstil
-----------

1.  Es gibt keine Unterpunkte ohne Nebenunterpunkte, also z. B. keinen
    Abschnitt 3.1, wenn es nicht auch einen Abschnitt 3.2 gibt.

2.  Wissenschaftliche Arbeiten haben immer ein einleitendes und ein
    schließendes Kapitel, guter Stil ist auch einen einleitenden und
    schließenden Absatz *pro Kapitel*. Mögliche Themen für die
    Einleitung: Motivation, Aufbau der Arbeit bzw. des Kapitels.
    Mögliche Themen für den Schluss: Zusammenfassung, Bewertung,
    Ausblick. Insbesondere die Kapiteleinleitungen und -schlussabsätze
    sind unabdingbar für den roten Faden der Arbeit, um Zusammenhänge,
    Übergänge und Bezüge klar zumachen (z. B. welcher Teil der Analyse
    hat welchen Einfluss auf welche Entwurfsentscheidung gehabt?).

3.  Jede Arbeit besitzt ein (Teil-)Kapitel, das sich mit bereits
    bestehenden Arbeiten auf dem bearbeiteten Gebiet auseinandersetzt
    (*Related Work*), und wie die vorliegende Arbeit darauf aufbaut bzw.
    *nicht* darauf aufbaut (Begründung!). Selbiges gilt für eventuelle
    Vorarbeiten anderer Leute im selben Projekt.

4.  Ein *Absatz* beschreibt einen Gedankengang. Demnach besteht ein
    Absatz aus etwa 3--4 Sätzen, niemals jedoch nur aus einem einzigen
    Satz. Kein Telegrammstil.

5.  Die Sprache der Arbeit soll wissenschaftlichen Ansprüchen genügen.
    Sätze sollen also klar, prägnant und aussagekräftig sein;
    idealerweise sollte der Leser zu jedem Zeitpunkt wissen, *warum* er
    den aktuellen Satz gerade liest. Unklare, verschleiernde Sprache,
    Bandwurmsätze sowie Umgangssprache sind unbedingt zu vermeiden.

6.  Anglizismen sind, wo immer möglich, zu vermeiden. Außerdem sollte
    im Text schließlich konstant für eine Sache *entweder* der
    deutsche *oder*, falls unvermeidlich, der englische Begriff (dann
    ggf. kursiv hervorgehoben) verwendet werden. Beispiel:

    - Die Service Requests des Users zum Consumer können mittels
      einer Man-in-the-Middle Attack gespooft werden.

    - Die Dienstanfragen des Benutzers an den Verbraucher können
      durch einen Angreifer, der auf ihren Datenverkehr Einfluss
      nehmen kann, bewusst manipuliert und gefälscht werden
      (*Man-in-the-Middle-Angriff*).

7.  Gute Abbildungen erläutern Zusammenhänge oft sehr gut oder eignen
    sich als Basis für eine textuelle Beschreibung. Typische Beispiele
    sind Architekturbeschreibungen, wie sich ein Teilsystem in ein
    Gesamtsystem integriert, oder wo welche Daten fließen. Außerdem
    gehört zu einem guten Bild eine deskriptive Unterschrift, also
    nicht nur der Name von dem, was dort zu sehen ist. Schließlich ist
    jede Abbildung mindestens einmal aus dem Text zu referenzieren.

8.  Falls zu einem Zeitpunkt Alternativen vorlagen, so eignen sich diese
    sehr gut zur Aufnahme in die Ausarbeitung. Darin sollten die
    Alternativen aufgezeigt werden, zusammen mit ihren
    charakteristischen Unterschieden, und die Entscheidung für einen
    von ihnen begründet werden.


Zitierweise
-----------

1.  Die Arbeit muss ein Literaturverzeichnis mit einer kompletten Liste
    der verwendeten Literatur beinhalten. Auf einheitlichen und
    kompletten Zitierstil achten (z. B. Verlag und Jahr bei Büchern,
    Titel des Tagungsbandes/Journals bei wissenschaftlichen Aufsätzen,
    sowie Titel, Abrufdatum und evtl. Autor bei Internetquellen).

2.  Aussagen (Beschreibungen und Behauptungen) müssen belegt werden.
    Dies geschieht durch Einfügen einer Referenz hinter der Aussage
    auf den entsprechenden Eintrag im Literaturverzeichnis oder durch
    eigenen Nachweis (z. B. bei Performancemessungen).

3.  Bei wissenschaftlichen Arbeiten ist es Standard, dass *jeder*
    Eintrag im Literaturverzeichnis zumindestens einmal vom Text aus
    referenziert wird, damit klar ist, was die zugehörige Quelle
    enthält.

4.  Referenzierte Literatur muss wissenschaftlichen Qualitäten
    genügen. Vorzugsweise zu zitieren sind Bücher, wissenschaftliche
    Veröffentlichungen (Papers), Spezifikationen, RFCs, Artikel aus
    Zeitschriften; niemals jedoch Wikipedia oder beliebige
    Internetseiten (sonst möglicher Nachweis für die Aussage Elvis
    lebt. Außerdem ist die Erde ist eine Scheibe.:
    http://www4.informatik.uni-erlangen.de/~wanja/elvis_scheibe.html ).

5.  Tabu sind wörtlich übernommene Passagen aus den Quellen. In den
    seltenen Fällen, in denen dies nötig ist (z. B. Definitionen
    oder Auseinandersetzung mit einer diskussionswürdigen Aussage),
    sind die Passagen als wörtliche Zitate mit Anführungszeichen zu
    kennzeichnen, mit der entsprechenden Referenz dahinter. Das direkte
    Übersetzen von Passagen aus dem Englischen gilt genauso als
    Plagiieren wie die wörtliche Übernahme aus deutschen Quellen.

6.  Auch Bilder sind Quellen. Sowohl nachgezeichnete als auch direkt
    übernommene Bilder sind daher als solche zu kennzeichnen.


Formatierung
------------

1.  Die Formatierung soll den Lesefluss unterstützen. Nicht nur unter
    LaTeX, auch unter Word und OpenOffice eignen sich Formatvorlagen
    für gleiche Elemente wie Überschriften und Aufzählungen.

2.  Programmcode ist in einer anderen Schriftart zu setzen
    (üblicherweise `Schreibmaschinenschrift`).

3.  Bachelor- und Masterarbeiten sind doppelseitig gedruckt abzugeben.

4.  Kapitel beginnen immer auf der *rechten* Seite.
