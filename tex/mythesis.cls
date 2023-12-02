\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myclass}[2009/10/13]

\LoadClass[a4paper,12pt,sfbold,nocenter,noupper]{thesis/thesis}
\RequirePackage[twoside,left=4cm,right=2cm,top=3cm,bottom=3cm]{geometry}
\RequirePackage{pstricks}
\RequirePackage{graphicx}
\RequirePackage[intlimits]{amsmath}
\RequirePackage[utf8x]{inputenc}
\RequirePackage[T1]{fontenc}
%\RequirePackage[scaled=.85]{helvet}
%\RequirePackage{times}
\RequirePackage[activate={true,nocompatibility},kerning=true]{microtype}
\RequirePackage{color}
\RequirePackage{caption}
\RequirePackage{floatrow}
\RequirePackage{nicefrac}
\RequirePackage{natbib}
\RequirePackage[pdfborder={0 0 0}]{hyperref}
\RequirePackage{tabularx}
\RequirePackage{textcomp}
\RequirePackage[locale=UK,obeyall]{siunitx}
%\RequirePackage{tipa}
\RequirePackage[scaled=.85]{couriers}
%\RequirePackage{courier}
\RequirePackage{multirow}
\RequirePackage{alltt}
\RequirePackage{listings}
\RequirePackage[lf]{MinionPro}
\RequirePackage{setspace}
\RequirePackage{calc}
\RequirePackage{fancyhdr}
\RequirePackage{tocbibind}
\RequirePackage{xspace}
\RequirePackage{tocloft}

\renewcommand{\sfdefault}{Myriad-LF}

\renewcommand{\bibname}{References}

\renewcommand{\chapter}{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}

\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\ \ \ #1}}

%\fancyheadoffset[LE,RO]{17pt}
\fancyhf{}
\fancyhead[RE]{\sffamily\nouppercase{\leftmark}}
\fancyhead[LO]{\sffamily\nouppercase{\rightmark}}
\fancyhead[LE,RO]{\sffamily\bfseries\thepage}
\renewcommand{\headrulewidth}{0.4pt}

\fancypagestyle{plain}{%
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \fancyfoot[LE,RO]{\sffamily\bfseries\thepage}
}

\renewcommand*{\l@subsubsection}{\@dottedtocline{3}{7.0em}{1.5em}}

%\renewcommand*\ttdefault{txtt}

\urlstyle{same}

\def\@makechapterhead#1{%
  \vspace*{\beforechaptervspace}{%
  \ifx\@chapapp\@empty
     \if@center\centering
       \ifnum \c@secnumdepth >\m@ne
         {\c@font\thechapter.\ }
       \fi
       {\c@font
       \if@upper
          \uppercase{#1}
       \else
          #1
       \fi
       \par \nobreak}
     \else\raggedright
         \ifnum \c@secnumdepth >\m@ne
           \setbox\@tempboxa\hbox{\c@font\thechapter.\ %
           \c@font
           \if@upper
             \uppercase{#1}
           \else
              #1%
           \fi}
         \ifdim \wd\@tempboxa >\hsize
           \@hangfrom{%
             \c@font\thechapter.\ }{\c@font
           \if@upper
              \uppercase{#1}
           \else
              #1%
           \fi
           \par\nobreak}
         \else
           \hbox to\hsize{\box\@tempboxa\hfil}
         \fi
       \fi
     \fi
  \else
    \if@center
       \centering
     \else
       \raggedright
     \fi
     \ifnum \c@secnumdepth >\m@ne
       \if@mainmatter
          {\s@font \@chapapp{} \thechapter}
          \par \vskip 15\p@
       \fi
     \fi
     {\c@font
     \if@upper
        \uppercase{#1}
     \else
       #1%
     \fi
     \par \nobreak}
  \fi
  \vspace{3pt}
  \hrulefill\\
  \vspace{\afterchaptervspace}
  \if@thema
    \ifx\@shortauthor\@empty
    \else
      \@mkboth{\@shortauthor}{#1}
    \fi
    \ifx\@chapterauthor\@empty
    \else
       \@makechapterauthor
    \fi
  \fi}
}

\renewcommand\labelitemi{\raisebox{0.3ex}{\begin{tiny}$\blacksquare$\end{tiny}}}

\chapapp{\Large\rmfamily\slshape\mdseries Chapter}
\renewcommand{\beforechaptervspace}{20mm}
\renewcommand{\afterchaptervspace}{20pt}
\chapterfont{\Huge\bfseries\sffamily}
\sectionfont{\large\bfseries\sffamily}
\subsectionfont{\normalsize\bfseries\sffamily}
\subsubsectionfont{\normalsize\bfseries\itshape\sffamily}

\paragraphfont{\normalfont\itshape}
\renewcommand{\thesection}{\thechapter.\arabic{section}\hspace{-0.3ex}}
\renewcommand{\thesubsection}{\thechapter.\arabic{section}.\arabic{subsection}\hspace{-0.5ex}}
\renewcommand{\thesubsubsection}{\alph{subsubsection}.\hspace{-1ex}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\if@center\centering\else\raggedright\fi
                                      \reset@font\sss@font}}

\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}

\bibliographystyle{chicago}

\DeclareCaptionLabelSeparator{pipe}{~|~}
\captionsetup{font={small,sf},labelfont=bf,labelsep=pipe,%
  singlelinecheck=no}
\setlength{\belowcaptionskip}{10pt}
\renewcommand{\figureshortname}{Figure}
\renewcommand{\tableshortname}{Table}

\definecolor{grey}{rgb}{0.35, 0.35, 0.35}

\definecolor{light}{rgb}{0.88, 0.88, 0.97}
\DeclareColorBox{lightcolorbox}{\colorbox{light}}
\floatsetup[table]{style=plaintop,font=small,framestyle=colorbox,%
  colorframeset=lightcolorbox,framearound=object,objectset=justified,%
  rowfill=yes,frameset={\fboxsep8pt}}

\def\tophline{\\[-12pt]\hline\\[-10pt]}
\def\middlehline{\\[-10pt]\hline\\[-10pt]}

\SetExtraKerning{encoding = T1, family = ptm}{\v{l} = {0,-100}, \v{L} = {0,-100}, \v{d} = {0,-100}, \v{t} = {0,-100}} 

\newcommand{\program}[1]{\textsf{#1}}
\newcommand{\ccplot}{\program{ccplot}\xspace}

\makeatletter
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \hbox{}
  \thispagestyle{empty}
  \newpage
  \if@twocolumn\hbox{}\newpage\fi\fi\fi}
\makeatother

\newcommand{\chapterx}[1]{%
  \chapter*{#1}%
  \addcontentsline{toc}{chapter}{#1}%
  \chaptermark{#1}%
}

\renewcommand{\cftbeforetoctitleskip}{24mm}
\renewcommand{\cftbeforelottitleskip}{24mm}
\renewcommand{\cftbeforeloftitleskip}{24mm}
\renewcommand{\cfttoctitlefont}{\bfseries\Huge}
\renewcommand{\cftlottitlefont}{\bfseries\Huge}
\renewcommand{\cftloftitlefont}{\bfseries\Huge}
\renewcommand{\cftdotsep}{1000}
