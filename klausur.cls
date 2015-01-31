\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{klausur}[2015/02/01 Klausur Dokumentenklasse]

% Passes and class options to the underlying article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{exam}}
\ProcessOptions

% Load LaTeX's article class with the `titlepage' option so that \maketitle creates a title page, not just a title block
\LoadClass[a4paper, 11pt, addpoints]{exam}
\RequirePackage[a4paper, top=15mm, left=35mm, right=25mm, bottom=15mm]{geometry}

\RequirePackage{color}
\RequirePackage{graphicx}
\RequirePackage{epstopdf}
\RequirePackage[T1]{fontenc}
\RequirePackage{tabularx}
\RequirePackage{blindtext}
\RequirePackage{setspace}
\RequirePackage{tabularx}
\RequirePackage{enumitem} 
\RequirePackage[table]{xcolor}
\RequirePackage{multicol}
\RequirePackage{lastpage}
\RequirePackage{titlesec}
\RequirePackage{verbatim}
\RequirePackage{amssymb}
\RequirePackage{fancyvrb}
\RequirePackage[ngerman]{babel}
\RequirePackage[utf8]{inputenc}

\newcolumntype{b}{>{\centering\arraybackslash}X}
\newcolumntype{C}{>{\arraybackslash} m{4cm} }

\def\aufgabe{\question}
\def\teil{\part}

\def\dozent#1{\def\@dozent{#1}}
\newcommand{\printdozent}{\@dozent}
\def\datum#1{\def\@datum{#1}}
\newcommand{\printdatum}{\@datum}
\def\semester#1{\def\@semester{#1}}
\newcommand{\printsemester}{\@semester}
\def\veranstaltung#1{\def\@veranstaltung{#1}}
\newcommand{\printveranstaltung}{\@veranstaltung}
\def\klausurlabel#1{\def\@klausurlabel{#1}}
\newcommand{\printklausurlabel}{\@klausurlabel}

\semester{\small $\ll$Semester hier eintragen$\gg$}
\dozent{$\ll$Dozent hier eintragen$\gg$}
\datum{\today}
\veranstaltung{\small $\ll$Semester hier eintragen$\gg$}

\klausurlabel{Klausur}

\newenvironment {aufgaben}
                {\begin{questions}}
                {\end{questions}}
\newenvironment {teilaufgaben}
                {\begin{parts}}
                {\end{parts}}  
\newenvironment {multiplechoice}
                {\begin{checkboxes}}
                {\end{checkboxes}}                       
\newenvironment {klausur}
                {\document
                	\input{deckblatt}
                	\onehalfspacing
                }
                {\enddocument}

% STYLE question and part headers
\renewcommand{\questionshook}{\setlength{\itemsep}{1cm}}
\renewcommand{\partshook}{\setlength{\itemsep}{0.5cm}}
\qformat{{\LARGE \textbf{Aufgabe \thequestion}} \hfill (\pointsofquestion{\thequestion} Punkte)}

% Table Labels
\vqword{Aufgabe}
\vpgword{Seite}
\vpword{Punkte}
\vsword{erreicht}
\vtword{{\huge $\Sigma$}} 

% Point Labels
\pointpoints{Punkt}{Punkte}

% Custom Colors
\definecolor{fsi}{RGB}{0,81,150}
\definecolor{slightGray}{gray}{0.6}
\definecolor{tableShade}{gray}{0.9}

% Page Style
\runningheader{\textcolor{slightGray}{Name und Matrikelnummer:}}{}{Seite \thepage~/ \numpages}
\runningfooter{\include{bewertungshinweis}}{}{}
\runningfootrule
\runningheadrule

\extrafootheight[0cm]{2.5cm}
\extraheadheight[0cm]{1cm} 

\endinput