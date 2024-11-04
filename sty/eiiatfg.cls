% -*- coding: utf-8 -*-
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sty/eiiatfg}[2015/07/03 modified book class for UCLM EII TFG]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\PassOptionsToClass{11pt,twoside,titlepage,openright,a4paper}{book}
\ProcessOptions\relax
\LoadClass{book}

\setlength{\unitlength}{1mm}

\usepackage{fontspec}
\usepackage[hyperfootnotes=false]{hyperref}
\usepackage[babelshorthands=true] {polyglossia}
\setdefaultlanguage{spanish}
\setotherlanguages{english,french,german}

\appto{\blockextras@spanish}{%
    \def\figureautorefname{Figura}%
    \def\tableautorefname{Tabla}%
    \def\partautorefname{Parte}%
    \def\appendixautorefname{Anexo}%
    \def\chapterautorefname{Capítulo}%
    \def\sectionautorefname{Sección}%
}

\appto{\blockextras@english}{%
    \def\figureautorefname{Figure}%
    \def\tableautorefname{Table}%
    \def\partautorefname{Part}%
    \def\appendixautorefname{Appendix}%
    \def\chapterautorefname{Chapter}%
    \def\sectionautorefname{Section}%
}

\appto{\blockextras@french}{%
    \def\figureautorefname{Figure}%
    \def\tableautorefname{Tableau}%
    \def\partautorefname{Partie}%
    \def\appendixautorefname{Annexe}%
    \def\chapterautorefname{Chapitre}%
    \def\sectionautorefname{Section}%
}

\appto{\blockextras@german}{%
    \def\figureautorefname{Abbildung}%
    \def\tableautorefname{Tabelle}%
    \def\partautorefname{Teil}%
    \def\appendixautorefname{Anhang}%
    \def\chapterautorefname{Kapitel}%
    \def\sectionautorefname{Abschnitt}%
}

\usepackage[
    backend=biber, 
    %style=alphabetic,
    %style=ieee,
    style=ieee-alphabetic,
    sorting=nty]{biblatex}
\usepackage{enumerate}
\usepackage{enumitem}
\usepackage{bookmark}
\usepackage{makecell}
\usepackage[dvipsnames]{xcolor}
\usepackage{multirow}
\usepackage[%
    font={small,sf},
    labelfont=bf,
    format=hang,    
    format=plain,
    margin=0pt,
    width=0.8\textwidth,
]{caption}
\usepackage[list=true]{subcaption}
\usepackage{appendix}
\usepackage{listings}
\usepackage{longtable}
\usepackage{tabularx}
\usepackage{colortbl}
\usepackage{minted}
\usepackage[export]{adjustbox}
\usepackage{emptypage}
\usepackage{setspace}
\usepackage{textcomp}
\usepackage{footmisc}
\usepackage{csquotes}
\usepackage{rotating}
\usepackage{wrapfig}
\usepackage{xstring}
\usepackage{pdfpages}
\usepackage{amsmath}
\usepackage{cleveref}
\usepackage{ifthen}
\usepackage{currfile}

\usepackage[
  paperwidth=210mm,
  paperheight=297mm,
  left=35mm,right=30mm,
  top=25mm, bottom=25mm,
  marginparwidth=1cm, marginparsep=1cm]{geometry}

\captionsetup{
  margin=0pt,
  font={footnotesize,stretch=.85},
  labelfont=bf}

\setlength{\parskip}{4pt}

\makeatletter
\providecommand*{\input@path}{}
\g@addto@macro\input@path{{tex/}{sty/}}
\makeatother
\graphicspath{{fig/}}

\pagestyle{headings}

\definecolor{gris30}{gray}{0.30}
\definecolor{gris85}{gray}{0.85}
\definecolor{gris20}{gray}{0.20}
\definecolor{gris50}{gray}{0.50}
\newcommand\myshade{85}
\colorlet{mylinkcolor}{violet}
\colorlet{mycitecolor}{YellowOrange}
\colorlet{myurlcolor}{Aquamarine}

\hypersetup{
  linkcolor  = mylinkcolor!\myshade!black,
  citecolor  = mycitecolor!\myshade!black,
  urlcolor   = myurlcolor!\myshade!black,
  colorlinks = true,
}

% ________________ METADATA ______________________________________
\makeatletter
\newcommand{\@advisor}{}
\newcommand{\@expediente}{}
\newcommand{\@gitrepo}{}
\newcommand{\@address}{}
\newcommand{\@zipcode}{}
\newcommand{\@city}{Toledo}
\newcommand{\@country}{Spain}
\newcommand{\@phone}{}
\newcommand{\@email}{}
\newcommand{\@homepage}{}
\newcommand{\@grado}{}
\newcommand{\@gradofull}{}

\newcommand{\tutor}[1]{\renewcommand{\@advisor}{#1}}
\newcommand{\advisor}[1]{\renewcommand{\@advisor}{#1}}
\newcommand{\tutores}[1]{\renewcommand{\@advisor}{#1}}
\newcommand{\expediente}[1]{\renewcommand{\@expediente}{#1}}
\newcommand{\gitrepo}[1]{\renewcommand{\@gitrepo}{#1}}
\newcommand{\address}[1]{\renewcommand{\@address}{#1}}
\newcommand{\direccion}[1]{\renewcommand{\@address}{#1}}
\newcommand{\zipcode}[1]{\renewcommand{\@zipcode}{#1}}
\newcommand{\cpostal}[1]{\renewcommand{\@zipcode}{#1}}
\newcommand{\city}[1]{\renewcommand{\@city}{#1}}
\newcommand{\poblacion}[1]{\renewcommand{\@city}{#1}}
\newcommand{\country}[1]{\renewcommand{\@country}{#1}}
\newcommand{\pais}[1]{\renewcommand{\@country}{#1}}
\newcommand{\phone}[1]{\renewcommand{\@phone}{#1}}
\newcommand{\telefono}[1]{\renewcommand{\@phone}{#1}}
\newcommand{\email}[1]{\renewcommand{\@email}{#1}}
\newcommand{\homepage}[1]{\renewcommand{\@homepage}{#1}}
\newcommand{\grado}[1]{
    \renewcommand{\@grado}{#1}
}
\newcommand{\thegitrepo}{\url{\@gitrepo}}
\makeatother

\usepackage{ifthen}
\newcommand{\tfgcode}[1]{%
    \ifthenelse{\equal{#1}{IE}}{A}{}%
    \ifthenelse{\equal{#1}{IEIA}}{B}{}%
    \ifthenelse{\equal{#1}{IA}}{D}{}%
}

\newcommand{\gname}[1]{%
    Grado en Ingeniería
    \ifthenelse{\equal{#1}{IE}}{Eléctrica}{}%
    \ifthenelse{\equal{#1}{IEIA}}{Electrónica Industrial y Automática}{}%
    \ifthenelse{\equal{#1}{IA}}{Aeroespacial}{}%
}

% _____________________ LICENCIA __________________________________
\makeatletter
\newcommand{\@license}{%
  \begin{minipage}{1.2\textwidth}
      Esta obra está bajo una \href{http://creativecommons.org/licenses/by/4.0/}{Licencia Creative Commons Atribución 4.0 Internacional}.

    \smallskip
    Muchos de los nombres usados por las compañías para diferenciar sus productos y servicios son reclamados como marcas registradas. Allí donde estos nombres aparezcan en este documento, y cuando el autor haya sido informado de esas marcas registradas, los nombres estarán escritos en mayúsculas o como nombres propios.
  \end{minipage}
}
\newcommand{\license}[1]{\renewcommand{\@license}{#1}}
\makeatother

% ______________________ CODE _________________________________________
\renewcommand{\lstlistingname}{Listado}

\DeclareCaptionFont{white}{\fontsize{8}{8}\selectfont\color{white}}
\DeclareCaptionFormat{listing}{
  \colorbox[cmyk]{0.43, 0.35, 0.35,0.01}{\parbox{0.982\textwidth}{\hspace{15pt}#1#2#3}}}
\captionsetup[lstlisting]{
  format=listing,
  labelfont=white,
  textfont=white,
  singlelinecheck=false,
  margin=0pt,
  font={bf,footnotesize}}


\usepackage{listingsutf8}
\lstloadlanguages{C, C++, Python, csh, Matlab}

\lstset{
   tabsize=4,
   showspaces=false,
   showtabs=false,
   showstringspaces=false,
   frame=b,
   framerule=1pt,
   aboveskip=0.5cm,
   framextopmargin=3pt,
   framexbottommargin=3pt,
   framexleftmargin=18pt,
   framesep=.4pt,
   rulesep=.4pt,
   rulesepcolor=\color{gris20},
   stringstyle=\ttfamily,
   basicstyle=\footnotesize\ttfamily,
   commentstyle=\color{gris30},
   keywordstyle=\bfseries,
   numbers=left,
   numbersep=6pt,
   numberstyle=\color[cmyk]{0.43,0.35,0.35,0.01}\bfseries\footnotesize\ttfamily,
   numberfirstline=true,
   breaklines=true,
   stepnumber=1,
   backgroundcolor=\color{white},
   xleftmargin=18pt,
   framexrightmargin=0pt,
   xrightmargin=0pt,
   texcl=true,
}

\lstdefinestyle{consoleStyle}{
    language=,
    basicstyle=\footnotesize\bf\ttfamily,
    numbers=none,
    xleftmargin=3.5pt,
    frame=none,
    breaklines=true,
    framexleftmargin=3pt,
    framexrightmargin=0pt,
    backgroundcolor=\color{gris85},
  }

\lstnewenvironment{term}[1][]
  {\lstset{style=consoleStyle,#1}}
  {}

\lstdefinelanguage{Slice}{%
  morekeywords=[2]{void, bool, byte, short, int, float, sequence, string,
    dictionary, Object},
  morekeywords=[3]{module, interface, struct, class, exception,
    throws, extends, idempotent},
  morekeywords=[4]{in, out},
  morekeywords=[5]{include},
  sensitive=false
}

\lstdefinelanguage{JavaScript}{
  keywords={break, case, catch, continue, debugger, default, delete, do, else, false, finally, for, function, if, in, instanceof, new, null, return, switch, this, throw, true, try, typeof, var, void, while, with},
  morecomment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]',
  morestring=[b]",
  ndkeywords={class, export, boolean, throw, implements, import, this},
  keywordstyle=\color{blue}\bfseries,
  ndkeywordstyle=\color{darkgray}\bfseries,
  identifierstyle=\color{black},
  commentstyle=\color{purple}\ttfamily,
  stringstyle=\color{red}\ttfamily,
  sensitive=true
}

%_________________________ PORTADA _____________________________________________
\makeatletter
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}
\newcommand{\portada}{%
    \pagenumbering{roman}
    \newgeometry{%
        left=20mm,right=15mm,
        top=15mm, bottom=15mm}
    \begin{titlepage}
        \sffamily
        \noindent\includegraphics[height=2cm,valign=B]{sty/LOGOMARCA_UCLM_2021}%
        \hfill\includegraphics[height=2.6cm,valign=B]{sty/EIIA_sym.pdf} \\
        \begin{minipage}[b]{1.5cm}
            \colorbox{lightgray}{\rotatebox[origin=l]{90}{%
                \rule{0cm}{1.6cm}\rule{3.5cm}{0cm}
                \raisebox{.45cm}{\Huge{\textsf{\textcolor{white}{%
                    Escuela de Ingeniería Industrial y Aeroespacial}}
                \rule{.5cm}{0cm}}}}}
        \end{minipage}\hfill
        \begin{minipage}[b]{14cm}
            \hfill\parbox{4.5cm}{%
            \resizebox{4.5cm}{.35cm}{\Large TRABAJO FIN DE GRADO}\\[1.1ex]
            \resizebox{4.5cm}{!}{N\textordmasculine~\expandafter\@gobbletwo\number\numexpr\the\year\relax-\tfgcode{\@grado}-\@expediente}}\\[6cm]
            \setlength{\unitlength}{1cm}
            \begin{picture}(13,0)
                \put(0,0){\parbox{14cm}{%
                    \raggedleft\LARGE\textbf{\@title}\\
                    \rule{0cm}{1cm}\\
                    \@author
                }}
            \end{picture} \\[13cm]
            \mbox{}\hfill\scalebox{.8}[1.0]{\Large\MakeUppercase{%
                \ifcase\month\or
    enero\or febrero\or marzo\or abril\or mayo\or junio\or
    julio\or agosto\or septiembre\or octubre\or noviembre\or
    diciembre\fi\space de~\number\year}}\\
        \end{minipage}
        \thispagestyle{empty}
    \end{titlepage}
    \clearpage\restoregeometry
    \thispagestyle{empty}
    \copyrightpage
    \cleardoublepage
}

\newcommand{\multi@tutor}{}
\newcommand{\copyrightpage}{%
    \IfSubStringInString{\\}{\@advisor}{\renewcommand{\multi@tutor}{es}}{}
    \null \vfill
    \noindent
    \begin{tabbing}
        \hspace*{1.7cm} \= \\
        \emph{Título:}  \> \parbox[t]{.7\textwidth}{\@title} \\[1ex]
        \emph{Autor:}   \> \@author \\[1ex]
        \emph{Grado:}   \> \gname{\@grado} \\[1ex]
        \emph{Tutor\multi@tutor{}:}   \> \parbox[t]{.7\textwidth}{\@advisor}\\[1ex]
        \ifdefempty{\@email}   {}{\emph{E-mail:}   \> \@email \\[1ex]}
        \ifdefempty{\@phone}   {}{\emph{Teléfono:} \> \@phone \\[1ex]}
        \ifdefempty{\@homepage}{}{\emph{Sitio web:} \> \url{\@homepage} \\[1ex]}
        \ifdefempty{\@address} {}{\emph{Dirección:} \> \parbox[t]{.7\textwidth}{%
            \@address \\ 
            \ifdefempty{\@zipcode} {}{\@zipcode~}\@city\ -- \@country  
        } \\[1ex]}
    \end{tabbing}
    \vspace{-.7cm}
  \begin{singlespace}
    \noindent
    \copyright\ \number\the\year\ \ \@author \par
    \smallskip \noindent
    \begin{minipage}{0.8\textwidth} \raggedright \footnotesize
      \@license
    \end{minipage}
  \end{singlespace}
  \cleardoublepage
}
\makeatother

% ____________________ ENTORNOS _______________________________
\newenvironment{agradecimientos}{\chapter*{Agradecimientos}
\pagestyle{empty}\thispagestyle{empty}
}{\pagestyle{headings}}

\newenvironment{dedicatoria}{
\chapter*{}\pagestyle{empty}\thispagestyle{empty}\begin{flushright}\it
}{\end{flushright}\pagestyle{headings}}

\newenvironment{resumen}{
\chapter*{Resumen}\pagestyle{empty}\thispagestyle{empty}
}{\pagestyle{headings}}

\newenvironment{abstract}{
\chapter*{Abstract}\pagestyle{empty}\thispagestyle{empty}
}{\pagestyle{headings}}


% ________________________ INDICES ________________________________
\makeatletter
\newcommand{\@listofsymbols}{}
\newcommand{\listofsymbols}[1]{\renewcommand{\@listofsymbols}{%
    \chapter*{Lista de símbolos}
    \input{#1}}}

\newcommand{\indices}{%
    \pagenumbering{roman}
    \cleardoublepage\setcounter{page}{1}
    \tableofcontents			%Indice General
    \listoftables				%Indice de tablas
    \listoffigures				%Indice de figuras
    \@listofsymbols              %Índice de símbolos
    \renewcommand{\acronymname}{Lista de acrónimos}
    \printglossary[type=\acronymtype] % Lista de acrónimos
    \cleardoublepage\setcounter{page}{1}
    \pagenumbering{arabic}
}
\makeatother

% _______________ ADMONITION __________________________________
\def\admonition#1#2{
  \vspace{3mm}
  {\small
    \fboxrule=0.5pt
    \fboxsep=3mm
    \par\noindent\fcolorbox{gris20}{gris85}{\parbox{1.1cm}{\resizebox{.7cm}{!}{\includegraphics{sty/#1.png}}}\parbox{0.85\hsize}{#2}}
    \vspace{3mm}
    \fboxsep=1.5mm
  }
}

\def\info#1{\admonition{info}{#1}}
\def\question#1{\admonition{question}{#1}}
\def\warning#1{\admonition{warning}{#1}}

\def\avisoLocalizacionArchivo{\info{Edita esta sección en el archivo \upshape\expandafter\path\expandafter{\currfilename}.}}



% ___________________ FONTS _______________________________
\setmainfont{STIX Two Text}
%\setmathfont{STIX Two Math}
\setsansfont{Arial}
\setmonofont{Liberation Mono}

\setlist[description]{style=nextline,labelwidth=0pt,leftmargin=30pt,itemindent=\dimexpr-20pt-\labelsep\relax} % Global Setup Description List

\DeclareRobustCommand{\deschyperlink}[2]{%
  \hyperlink{#1}{#2}%
}

