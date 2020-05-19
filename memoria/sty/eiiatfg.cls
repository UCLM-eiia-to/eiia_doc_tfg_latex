% -*- coding: utf-8 -*-
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sty/eiiatfg}[2015/07/03 modified book class for UCLM EII TFG]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\PassOptionsToClass{11pt,twoside,titlepage,openright,a4paper}{book}
\ProcessOptions\relax
\LoadClass{book}

\setlength{\unitlength}{1mm}

% https://tug.org/pipermail/pstricks/2011/009122.html
\usepackage{etex}

% Codificación UTF8
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[spanish, es-tabla]{babel}
\usepackage[
    backend=biber, 
    %style=ieee,
    %style=alphabetic,
    style=ieee-alphabetic,
    sorting=nty]{biblatex}
\usepackage{makecell}
\usepackage{times}
\usepackage[dvipsnames]{xcolor}
\usepackage{enumerate}
\usepackage{enumitem}
\usepackage{bookmark}
\usepackage{float}
\usepackage{datetime2}
\usepackage{hyperref}
\usepackage{graphicx}
\usepackage{multirow}
\usepackage{subfigure}
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
\usepackage{caption}
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

\renewcommand{\bibname}{Referencias}
\renewcommand{\appendixname}{Anexo}
\renewcommand{\appendixtocname}{Anexo}
\renewcommand{\appendixpagename}{Anexo}

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

\usepackage{metadata}
\usepackage{licencia}
\usepackage{code}
\usepackage{portada}
\usepackage{entornos}
\usepackage{indices}
\usepackage{admonition}


\setlist[description]{style=nextline,labelwidth=0pt,leftmargin=30pt,itemindent=\dimexpr-20pt-\labelsep\relax} % Global Setup Description List

\DeclareRobustCommand{\deschyperlink}[2]{%
  \hyperlink{#1}{#2}%
}

