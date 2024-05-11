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

\usepackage{sty/metadata}
\usepackage{sty/licencia}
\usepackage{sty/code}
\usepackage{sty/portada}
\usepackage{sty/entornos}
\usepackage{sty/indices}
\usepackage{sty/admonition}

\setmainfont{STIX Two Text}
\setsansfont{Arial}
\setmonofont{Noto Sans Mono}

\setlist[description]{style=nextline,labelwidth=0pt,leftmargin=30pt,itemindent=\dimexpr-20pt-\labelsep\relax} % Global Setup Description List

\DeclareRobustCommand{\deschyperlink}[2]{%
  \hyperlink{#1}{#2}%
}

