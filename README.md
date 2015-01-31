# LATeX-Klausur
Dies ist eine LATeX Dokumentenklasse zum erstellen einer Klausur unter der Corporate Identity der Hochschule Trier

## Setup
Das simple Setup einer einfachen Klausur können Sie der Datei `beispiel.tex` entnehmen.

Sie benötigen zwingend die folgenden Dateien:

- klausur.cls
- deckblatt.tex
- logo_hochschule.eps
- hinweise.tex
- bewertungshinweise.tex


### Eine Klausur anlegen
Sie beginnen mit dem Festlegen der Dokumentenklasse
```latex
	\documentclass{klausur}
```
gefolgt von der `klausur` Umgebung, welche die bekannte `document` Umgebung ersetzt.
Direkt zu beginn dieser Umgebung wird nun automatisch die Startseite eingefügt.

In dieser Umgebung erstellen Sie nun die Umgebung `aufgaben`, in welcher Sie die einzelnen Aufgaben der Klausur definieren können.
Ihr Code sollte nun so aussehen:

```latex
\documentclass{klausur}

\begin{klausur}
	\begin{aufgaben}
	\end{aufgaben}
\end{klausur}
```


### Aufgaben anlegen
Um innerhalb der `aufgaben` Umgebung tatsächlich Aufgaben anzulegen, nutzen Sie das Kommando `\aufgabe`.
Dieses nimmt einen optionalen Parameter `punkte` entgegen.

ein Beispiel mit drei Aufgaben sähe z.B. so aus: 

```latex
\documentclass{klausur}

\begin{klausur}
	\begin{aufgaben}
		\aufgabe[2]
		Zeichnen Sie ein Quadrat
		\aufgabe[2]
		Zeichnen Sie ein Dreieck
		\aufgabe[4]
		Zeichnen Sie einen Kreis
	\end{aufgaben}
\end{klausur}
```

Wobei die Aufgaben 1 und 2 jeweils zwei Punkte wert sind und Aufgabe 3 vier Punkte.
Die Punkte werden automatisch auf der Punktetabelle auf dem Deckblatt gelistet.


### Teilaufgaben
In der Regel bestehen Aufgaben in einer Klausur aus mehreren Teilaufgaben (a, b, c etc...).
Um dies umzusetzen steht Ihnen die Umgebung `teilaufgaben` zur Verfügung.
Die Teilaufgaben in der Umgebung werden immer der zuletzt definierten Aufgabe zugeordnet. Die Angabe der Punkte erfolgt in diesem Fall hinter dem Kommando `\teilaufgabe`, nicht hinter `\aufgabe`.

```latex
\documentclass{klausur}

\begin{klausur}
	\begin{aufgaben}
		\aufgabe[2]
		Schreiben Sie Ihren Namen in Binärcode
		\aufgabe
		Zeichnen Sie die Objekte

		\begin{teilaufgaben}
			\teilaufgabe[2]
			Quadrat
			\teilaufgabe[2]
			Dreieck
			\teilaufgabe[4]
			Kreis
		\end{teilaufgaben}
	\end{aufgaben}
\end{klausur}
```

Die Punkte der Teilaufgaben werden automatisch addiert und im Fragenkopf sowie der Punktetabelle auf dem Deckblatt angezeigt.


### Multiple Choice
Es kommt des Öfteren vor, dass Aufgaben im "multiple choice" Verfahren gestellt werden. Auch hierfür steht Ihnen eine Umgebung mit dem Namen `multiplechoice` zur Verfügung.
Sie generiert vor den Antwortmöglichkeiten automatisch Kreise, in denen ein Kreuz gesetzt werden kann.

Ein simples Beispiel:

```latex
\documentclass{klausur}

\begin{klausur}
	\begin{aufgaben}
		\aufgabe[3]
		Was sollten Sie in der letzten Klausur zeichnen?\\(mehrere Antworten möglich)
		\begin{multiplechoice}
			\choice Kreis
			\choice Dreieck
			\choice Tesserakt
			\choice Quadrat
		\end{multiplechoice}
	\end{aufgaben}
\end{klausur}
```

Multiple choice ist auch in Teilaufgaben möglich.

## Credits
Diese Dokumentenklasse basiert auf der LATeX Klasse `exam` und wird entwickelt von **Michael Ochmann**, Student der Informatik an der Hochschule Trier.

- http://mike-ochmann.de
- @miko007