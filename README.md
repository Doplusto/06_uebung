
_Übungsaufgabe zur Veranstaltung [IT
Systeme](https://hsro-wif-it.github.io) im [Bachelorstudiengang
Wirtschaftsinformatik](https://www.th-rosenheim.de/technik/informatik-mathematik/wirtschaftsinformatik-bachelor/) an der [Hochschule Rosenheim](http://www.th-rosenheim.de)._

# 06 - Shell-Programmierung Part II

Diese Übung behandelt wiederum das Thema _Shell-Programmierung_. Diesmal mit einem Fokus auf 
Verzeichnisse, Dateien und Dateiinhalte.
Beim Erstellen von Software kommt es häufig vor, das Verzeichnisse erstellt, umbenannt oder durchsucht werden müssen.
Es ist dabei praktisch zu wissen, wie dieses automatisiert und mit Programmen und Kommandos der Shell erledigt werden kann. Es ist sonst sehr mühsam, einzelne Dateien umzubenennen oder gar in Dateien Texte zu ersetzen. Da ist der im Vorteil, der das dann mit etwas Code in der Shell erledigen UND **das dann auch wiederholbar**.

> Note: Es ist ziemlich mühsam den selben ermüdenden und stupiden Verarbeitungsschritt wiederholt auszuführen! Hier macht es Sinn zu schauen, wie so etwas automatisiert werden kann!

1. Clonen Sie dieses Git Repository auf der comand line via `git clone`
1. Wechseln Sie in des Verzeichnis `6_uebung`
1. Erstellen Sie innerhalb dieses Verzeichnissen ein Verzeichnis `tmp`, in dem Sie arbeiten
1. Wechseln Sie in `tmp`
1. Erstellen Sie die Skripte, wie beschrieben
1. Wenn notwendig, verwenden Sie die Daten aus dem `data` Verzeichnis

> Note: **Die Lösung befindet sich im Branch _Musterlösung_.**

## Aufgabe 1: Verzeichnisse und Dateien erstellen

Schrieben Sie ein Skript, dass für die Parameter m und n Verzeichnisse und m Dateien erstellt.

Die Verzeichnisse sollen `dir` heißen und durchnummeriert werden: `dir1`, `dir2`, .. `dirn`.

Die Dateien sollen `datei.txt`  heißen und ebenfalls durchnummeriert werden: `datei1.txt`, `datei2.txt`, ... `dateim.txt`

Ausserdem soll jede Datei den folgenden Text beinhalten:

```
Script der FH Rosenheim 2018
```

Der Aufruf dazu könnte wie folgt aussehen:

```shell
$ ./create.sh 2 3
```

Dieser Aufruf würde würde 2 Verzeichnis erstellen und in jedem der Verzeichnisse 3 Dateien.

```
dir1
 - datei1.txt
 - datei2.txt
 - datei3.txt
dir2
 - datei1.txt
 - datei2.txt
 - datei3.txt
```

Verwenden Sie hierzu `while` Schleifen und entsprechende Schleifenvariablen.

## Aufgabe 2: Ändern der Datei-Extension

Schreiben Sie nun ein Skript `rename.sh`, dass in Ihren erstellten Datei die Extension von `.txt` auf `.md` ändert.

**Allerdings** soll dies nur für Dateien (nicht Verzeichnisse!) gelten, in denen die `2` vorkommt.

>Hinweise: Denken Sie daran, wie geprüft werden kann, ob es sich um eine Datei oder um ein Verzeichnis handelt (Operatoren beim `test` Command!). Das Umbenennen könnte etwas trickreich werden. Das kann mittels `mv` Command erfolgen. Allerdings muss man dazu wissen, dass mittels `${F%.text}.md` die Extension von `.txt` auf `.md` geändert werden kann!

Der Aufruf dazu könnte wie folgt aussehen:

```shell
$ ./rename.sh
```

Dieser Aufruf würde würde 2 Verzeichnis erstellen und in jedem der Verzeichnisse 3 Dateien.

```
dir1
 - datei1.txt
 - datei2.md
 - datei3.txt
dir2
 - datei1.txt
 - datei2.md
 - datei3.txt
```

>Note: Klappt ihr Skript auch bei `datei12.txt` oder `datei20.txt`?

Verwenden Sie eine entsprechende `for` Schleife!

## Aufgabe 3: Ersetzen von Text in Dateien

Dumm, dass wir eine Anzahl von Dateien habe, die den Text `FH` und `2018` enthalten. Es wäre schön, wenn wir diese durch `TH` und `2019` ersetzen könnten und zwar mit einem Skript.

Schreiben Sie nun ein Skript `replace.sh`, dass in Ihren erstellten Datei die eine `1` oder `3` enthalten diese Texte ersetzen.

Zum Ersetzen kann das `sed` Command verwendet werden in der Form:

```
sed -i 's/<zu ersetzen>/<ersetzen mit>/' <quelle>
```

Ausserdem müssen Sie natürlich mit `for` über die Dateienliste iterieren.

>Note: Suchen Sie im Internet, ob es eine alternative Lösung gibt!

## Aufgabe 4: Pipe und Grep

In der Vorlesung haben wir die Commands `|` (Pipe) und `grep` kennengelernt, die zusammen sehr mächtig sind, um nach bestimmten Zeichenfolgen zu suchen.

- Wie sieht die Kombination von `ls`, `|` und `grep` aus, die nur die `.md` Dateien liefert?

- Wie kann ich in den Dateien `FH` mit `TH` und `2018` mit `2019` ersetzen mit jeweils einer Zeile als Kombination aus `ls`, `|`, `grep` und `sed`?

- Finden Sie mittels `grep` heraus, wieviele `Error` Einträge in der Datei `./data/error.log` vorhanden sind?


