%% mmds_doc.cls -- standard document style
%%
%% RCS Status      : $Id: mmds_doc.cls,v 1.12 2002-12-12 15:02:05+01 jv Exp $
%% Author          : Johan Vromans
%% Created On      : Wed Nov 27 15:00:15 2002
%% Last Modified By: Johan Vromans
%% Last Modified On: Thu Dec 12 14:54:46 2002
%% Update Count    : 125
%% Status          : Development
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Usage:
%
%  \documentclass[options...]{mmds_doc}
%  Options: report, memo, mrep, note, offering, generic
%	    Garamond, Times	[Note: Garamond is default]
%	    [no]logo		[logo is default for offering, 
%				 no-op for others]
%
%%%%%%%%%%%%%%%% Start of code %%%%%%%%%%%%%%%%
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mmds_doc}
{ \catcode`\$=11
  \typeout{Squirrel/MMDS `mmds_doc' $Revision: 1.12 $}
}
%
%%%%%%%%%%%%%%%% Selection of document type %%%%%%%%%%%%%%%%
%
%
% Document internal parameters.
%
%   \if@toc: process table of contents.
\newif\if@toc\@tocfalse
%
%   \do@cfg: process configuration status.
\newcount\do@cfg \do@cfg=0
%
%   \if@sechdr: each section starts on a new page.
%               also: sections are number from document to document
\newif\if@sechdr \@sechdrfalse
%
%   \if@secnum: each section start with page number 1, section name is 
%	        included in the header.
\newif\if@secnum \@secnumfalse
%
\newcommand{\do@more}{}
\newcommand{\do@morex}{}
\let\do@raggedright=\raggedright
\newif\if@nfx\@nfxfalse
\newif\if@logo\@logofalse
\newif\if@offering\@offeringfalse
% default font size
\def\@artpt{12}
\def\hd@small{}

% default renditions
\newcommand{\rendi}[1]{\uppercase{#1}}
\newcommand{\rendii}[1]{#1}
\newcommand{\rendiii}[1]{#1}
\renewcommand{\encodingdefault}{T1}

% pagenumbering
\def\pagenumbering@arabic{
    \pagenumbering{arabic}
    \let\pagenumbering@arabic=\relax
}
\def\reset{
  \newpage
  \pagenumbering{arabic}
  \if@sechdr\else \setcounter{section}{0} \fi
  \setcounter{subsection}{0}
  \setcounter{subsubsection}{0}
}
%
\DeclareOption{generic}{%
    \typeout{MMDS Document Type `Generic'.}
    \pagenumbering@arabic
%    \setcounter{section}{0}
    \def\reset{
      \newpage
      \setcounter{subsection}{0}
      \setcounter{subsubsection}{0}
    }
}
\DeclareOption{memo}{%
    \typeout{MMDS Document Type `Memo'.}
    \pagenumbering@arabic
}
\DeclareOption{mrep}{%
    \typeout{MMDS Document Type `Meeting Report'.}
    \pagenumbering@arabic
}
\DeclareOption{note}{%
    \typeout{MMDS Document Type `Technical Note'.}
    \@toctrue
    \@sechdrtrue
    \pagenumbering{roman}	% will be reset to arabic by first \section
}
\DeclareOption{report}{%
    \typeout{MMDS Document Type `Report'.}
    \@toctrue
    \@sechdrtrue
    \@secnumtrue
    \do@cfg=2
    \pagenumbering{roman}	% will be reset to arabic by first \section
}
\DeclareOption{offering}{%
    \@offeringtrue
    \typeout{MMDS Document Type `Offering'.}
    \@toctrue
    \@sechdrtrue
    \pagenumbering{roman}	% will be reset to arabic by first \section
    \renewcommand{\do@more}{
	% \addtolength{\topmargin}{-0.2cm}
	\if@logo\addtolength{\head@rulewidth}{-10mm}\fi
	% \setlength{\baselineskip}{12pt}
	% \parskip 6pt plus 1pt
    }
    % \def\@artpt{11}
    % enhanced renditions
    \renewcommand{\rendi}[1]{\bf\uppercase{#1}}
    \renewcommand{\rendii}[1]{\bf\sc{#1}}
    \renewcommand{\rendiii}[1]{\sc{#1}}
    \@logotrue
}
\DeclareOption{nologo}{\@logofalse}
\DeclareOption{logo}{\@logotrue}

\DeclareOption{Garamond}{%
    % latex style using ITC Garamond for text.
    \renewcommand{\do@morex}{
        \typeout {Using Garamond PostScript fonts.}
        \usepackage{itcgaramond}
	\def\@normalsize{
	  \@setsize\normalsize{14.5pt}\xipt\@xipt
	  \abovedisplayskip 12pt plus3pt minus7pt
	  \belowdisplayskip \abovedisplayskip
	  \abovedisplayshortskip \z@ plus3pt
	  \belowdisplayshortskip 6.5pt plus3.5pt minus3pt
	  \let\@listi\@listI
	} 
    }
}
\DeclareOption{Times}{%
    \renewcommand{\do@morex}{
      \typeout {Using Times PostScript fonts.}
      \usepackage{times}
    }
}
\DeclareOption{Palatino}{%
    \renewcommand{\do@morex}{
      \typeout {Using Palatino PostScript fonts.}
      \usepackage{palatino}
    }
}
\DeclareOption{justify}{%
    \let\do@raggedright=\relax
}
\DeclareOption{ragged}{%
    \let\do@raggedright=\raggedright
}
\DeclareOption*{\typeout{What's \CurrentOption}}
%\ExecuteOptions{Garamond}
\ProcessOptions
%
%%%%%%%%%%%%%%%% Other Packages %%%%%%%%%%%%%%%%
%
\LoadClass[11pt]{article}	% standard LaTeX
\RequirePackage{fancyheadings}	% by Piet van Oostrum <piet@cs.ruu.nl>
\RequirePackage{epsf}		% dvips distribution
\RequirePackage{rotate}		% dvips distribution
\RequirePackage{longtable}
\def\thesection{\Roman{section}}
\def\indexname{}
%
%%%%%%%%%%%%%%%% Private Settings %%%%%%%%%%%%%%%%
%
%\topmargin -3.05cm		% for dvips 3
\topmargin -1.55cm		% for dvips 5
\headheight 1.2cm
\headsep 0.7cm
\footskip 1.4cm
\textheight 24.6cm 
\textwidth 16.5cm
\oddsidemargin 0cm
\evensidemargin 0cm 
\newlength{\overallindent}
\setlength{\overallindent}{1.5cm}
\addtolength{\oddsidemargin}{\overallindent}
\addtolength{\textwidth}{-\overallindent}
\pagestyle{fancy}
\addtolength{\headwidth}{\overallindent}
\headrulewidth 0.25pt
\newlength{\head@rulewidth}
\setlength{\head@rulewidth}{\headwidth}
\footrulewidth 0.25pt
\frenchspacing
\setlength{\baselineskip}{14pt}	% inter-line spacing
\parskip 7pt plus 1pt		% half-line spacing between paragraphs
\newlength{\enumindent}
\setlength{\enumindent}{1.75em}
\newlength{\mctcw}
\let\LTmulticolumn=\multicolumn
\renewcommand{\arraystretch}{1.5}
%
%%%%%%%%%%%%%%%% Headers/Footers %%%%%%%%%%%%%%%%
%
\newcommand{\header}[4]{
\lhead{{\hd@small\sc{#1}} \\ {\sc{#3}}}
\chead{}
\rhead{{\hd@small\sc{#2}} \\ {\sc{#4}}}
}
\def\ixpt{}
\newcommand{\footer}[2]{
\lfoot{{\ixpt\sc{#1}}}
\cfoot{}
\rfoot{{\ixpt\sc{#2}}}
}
%
%%%%%%%%%%%%%%%% Paragraphs %%%%%%%%%%%%%%%%
%
\parindent 0pt			% align to left margin
\setlength{\smallskipamount}{\parskip} % half-line
\setlength{\medskipamount}{2\parskip} % single line
\setlength{\bigskipamount}{3\parskip} % one-and-a-half line
\setlength{\topsep}{0pt plus 1pt} % for lists and tabbing
\setlength{\partopsep}{0pt plus 1pt} % for lists and tabbing
\setlength{\itemsep}{0pt plus 1pt} % for lists and tabbing
%
\do@raggedright			% no adjustment
%
\do@more			% possible adjustments from doc type
\do@morex			% possible adjustments from font 
%
%%%%%%%%%%%%%%%% Sections and such %%%%%%%%%%%%%%%%
%
% Note: zero is a 'hot' value. approximate with 0.1pt
\def\mmds@section{\@startsection {section}{1}{-\overallindent}
    {\medskipamount}{0.1pt}{\normalsize}
}
\def\mmds@subsection{\@startsection{subsection}{2}{-\overallindent}
  {\smallskipamount}{0.1pt}{\normalsize}
}
\def\mmds@subsubsection{\@startsection{subsubsection}{3}
  {-\overallindent}{0.1pt}{0.1pt}{\normalsize}
}
%
\renewcommand{\section}[2]{
  \if@sechdr \newpage \else \pagebreak[0] \fi
  \addtocounter{section}{1}
  \setcounter{subsection}{0}
  \setcounter{subsubsection}{0}
  \if@nfx
    \if@secnum \pagenumbering{arabic} \else \pagenumbering@arabic \fi
  \else
    \if@secnum \pagenumbering{arabic} \else \pagenumbering@arabic \fi
    \def\thesection {\arabic{section}}
    \setcounter{section}{1}
    \@nfxtrue
  \fi
  \mmds@section*{\makebox[\overallindent][l]{\rendi{\thesection.}}\rendi{#1}}
  \if@secnum \markboth{\thesection-}{\sc{#1}} \fi
  \if@toc
    \addcontentsline{toc}{section}{\protect\numberline{\thesection.}{#1}}
  \fi
  \ifnum\do@cfg=1
    \addtocontents{cfg}{\protect\configline{section}{\protect\numberline{\thesection.}{#1}}{#2}}
  \fi
}
\newcommand{\nnsection}[2]{
  \if@sechdr \newpage \else \pagebreak[0] \fi
  \mmds@section*{\makebox[\overallindent][l]{~}\rendi{#1}}
  \if@secnum \markright{\sc{#1}} \fi
  \if@toc
    \addcontentsline{toc}{section}{\protect\numberline{~}{#1}}
  \fi
  \ifnum\do@cfg=1
    \addtocontents{cfg}{\protect\configline{section}{\protect\numberline{~}{#1}}{#2}}
  \fi
}
\renewcommand{\subsection}[1]{
  \pagebreak[0]
  \addtocounter{subsection}{1}
  \setcounter{subsubsection}{0}
  \mmds@subsection*{\makebox[\overallindent][l]{\rendii\thesubsection}%
	\rendii{#1}}
  \if@toc
    \addcontentsline{toc}{subsection}{\protect\numberline{\thesubsection}{#1}}
  \fi
}
\newcommand{\nnsubsection}[1]{
  \pagebreak[0]
  \mmds@subsection*{\makebox[\overallindent][l]{~}\rendii{#1}}
  \if@toc
    \addcontentsline{toc}{subsection}{\protect\numberline{~}{#1}}
  \fi
}
\renewcommand{\subsubsection}[1]{
  \pagebreak[0]
  \addtocounter{subsubsection}{1}
  \mmds@subsubsection*{\makebox[\overallindent][l]{\thesubsubsection%
			}\rendiii{#1}}
  \if@toc
    \addcontentsline{toc}{subsubsection}
	{\protect\numberline{\thesubsubsection}{#1}}
  \fi
}
\newcommand{\nnsubsubsection}[1]{
  \pagebreak[0]
  \mmds@subsubsection*{\makebox[\overallindent][l]{~}\rendiii{#1}}
  \if@toc
    \addcontentsline{toc}{subsubsection}
	{\protect\numberline{~}{#1}}
  \fi
}
\newcommand{\bfcaption}[1]{
  \leavevmode
  {\bf #1 \par}
}
\newcommand{\emcaption}[1]{
  \leavevmode
  {\parskip0pt\em #1 \\}
}
%
%%%%%%%%%%%%%%%% Headers %%%%%%%%%%%%%%%%
%
% Usage:
%
%  \begin{headers}
%  \item[Aan:] Blah Blah
%  \item[Van:] Blah Blah
%  ...
%  \end{headers}
%
\def\headers{
      \list {\csname\@itemitem\endcsname}
	{
	  \setlength{\topsep}{0pt plus 1pt}
	  \setlength{\partopsep}{0pt plus 1pt}
	  \setlength{\itemsep}{0pt plus 1pt}
	  \setlength{\parsep}{\parskip}
	  \setlength{\itemindent}{0pt}
	  \setlength{\labelwidth}{3cm}
	  \setlength{\labelsep}{0cm}
	  \setlength{\leftmargin}{\labelwidth}
	  \addtolength{\leftmargin}{-\overallindent}
	  \def\makelabel##1{\rlap{##1}\hss}
	}
}
\def\endheaders{
    \item[{\rule[4mm]{\headwidth}{\headrulewidth}}]{\relax}
\endlist
}
%%%%%%%%%%%%%%%% CC lists, etc (letters only) %%%%%%%%%%%%%%%%
%
\def\cc[#1]#2{
    \par\noindent
    \parbox[t]{\textwidth}{\@hangfrom{\rm  #1~ }\ignorespaces #2\strut}
}
%
%%%%%%%%%%%%%%%% Enumerations %%%%%%%%%%%%%%%%
%
% Two levels are supported
%
% Usage:
%
%  \begin{enum}
%  \Xitem Blah blah blah...
%  \Xitem Blah bla ...
%  ...
%  \end{enum}
%
% where X is x, n, a or l.
% Text is indented 1.75em (0.7cm). However, a minimal 
% space of 0.5em is enforced between the leader and the following text.
% Default \xitem labels are $\bullet$ for level 1, and -- for level 2.
% Alternatively, \nitem and \aitem produce numeric resp. alpha-numeric
% leaders. \litem can be used to explicitly pass a leader.
%
%\def\labelitemi{\char'267}	% use PostScript bullet
\def\labelitemi{\textbullet}	% use PostScript bullet
\def\labelitemii{--}		% normal en-dash for second level
%
\newenvironment{enum}
  { %begin
    \ifnum \@itemdepth >1 \@toodeep
    \else
      \advance\@itemdepth \@ne
      \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
      \list {\csname\@itemitem\endcsname}
	{
	  \setlength{\topsep}{0pt plus 1pt}
	  \setlength{\partopsep}{0pt plus 1pt}
	  \setlength{\itemsep}{0pt plus 1pt}
	  \setlength{\parsep}{\parskip}
	  %%%% Disable unreleased feature %%%%
	  % \setlength{\parsep}{0pt plus 1pt}
	  \setlength{\itemindent}{0pt}
	  \setlength{\leftmargin}{\enumindent}
	  % Enforce 0.5em spacing
	  \setlength{\labelsep}{0.5em}
	  \setlength{\labelwidth}{\leftmargin}
	  \addtolength{\labelwidth}{-\labelsep}
	  \usecounter{enum\romannumeral\the\@itemdepth}
	}
    \fi
  }{ %end
    \endlist
  }
%
% Item functions
%
\def\xitem{			% normal leader
  \def\makelabel##1{{##1}\hss}
  \@noitemargtrue\@item[\@itemlabel]}
\def\nitem{			% numeric leader
  \def\makelabel##1{{\arabic{enum\romannumeral\the\@itemdepth}.\hss}}
  \@noitemargtrue\@item[\@itemlabel]}
\def\aitem{			% alpha-numeric leader
  \def\makelabel##1{{\alph{enum\romannumeral\the\@itemdepth}.\hss}}
  \@noitemargtrue\@item[\@itemlabel]}
\def\litem#1{			% explicit leader
  \def\makelabel##1{{##1}\hss}
  \@noitemargtrue\@item[{#1}]}
%
%%%%%%%%%%%%%%%% Emphasis %%%%%%%%%%%%%%%%
%
% Almost the same as \begin{em} ... \end{em}
%
\newenvironment{emphasis}{\em}{\par}
\newenvironment{strong}{\bf}{\par}
%
%%%%%%%%%%%%%%%% Pseudo-literal Environment %%%%%%%%%%%%%%%%
%
% Print ``as-is'', using small, fixed font.
%
\newenvironment{literal}
  { %begin
    \footnotesize	% 10pt
    %\ptt
    \baselineskip10pt
    \parskip0pt
    \vspace\smallskipamount
%    \addtolength{\textwidth}{3cm}	% enough to fall off the page
    \frenchspacing
    \obeylines
  }{ %end
    \par
  }
%
\newenvironment{screen}
  { %begin
    \scriptsize		% 8pt
    %\ptt
    \baselineskip8pt
    \parskip0pt
    \vspace\smallskipamount
%    \addtolength{\textwidth}{3cm}	% enough to fall off the page
    \frenchspacing
    \obeylines
  }{ %end
    \par
  }
%
\def\reportsize{\@setsize\scriptsize{5pt}\vpt}
\newenvironment{report}
  { %begin
    \reportsize
    %\ptt
    \baselineskip6pt
    \parskip0pt
    \vspace\smallskipamount
%    \addtolength{\textwidth}{3cm}	% enough to fall off the page
    \frenchspacing
    \obeylines
  }{ %end
    \par
  }
%
%%%%%%%%%%%%%%%% Drafts %%%%%%%%%%%%%%%%
%
\def\draft#1{
\special{! userdict begin /overlaytext  (#1) def end }
}
%
%%%%%%%%%%%%%%%% PostScript Tricks %%%%%%%%%%%%%%%%
%
\def\xxrotl#1{\@rotdimen=\ht#1\advance\@rotdimen by\dp#1%
    \hbox to\@rotdimen{\vbox to\textheight{%
        \vskip\textheight\@rotstart{270 rotate}%
   \box#1\vss}\hss}\@rotfinish}%
%
%%%%%%%%%%%%%%%% EPSF Pictures %%%%%%%%%%%%%%%%
%
% Usage: \epspic[Caption]{EPS-file}
%
% The [Caption] is optional.
%
% The figure is centered, and scaled to fit if needed.
% Care is taken to keep the caption with the picture.

\newlength{\rtextw}
\epsfverbosetrue
\def\epsfsize#1#2{\ifnum#1>\rtextw\rtextw\else#1\fi}
%
\def\epspic{\@ifnextchar[{\@xepspic}{\@yepspic}}
\def\@xepspic[#1]#2{
  \begin{figure}[htp]
    \leavevmode
    \setlength{\rtextw}{15cm}
    \addtolength{\rtextw}{-\leftmargin}
    \vbox{%
    \centerline{\epsffile{#2}}
    \centerline{\footnotesize \strut}
    \centerline{\footnotesize {#1}}
    }
  \end{figure}
}
\def\@yepspic#1{
%  \begin{figure}[htp]
    \leavevmode
    \setlength{\rtextw}{15cm}
    \addtolength{\rtextw}{-\leftmargin}
    \centerline{\epsffile{#1}}
%  \end{figure}
}
%
%%%%%%%%%%%%%%%% Mods to other definitions %%%%%%%%%%%%%%%%
%
% This is copied from fancyheadings.sty -- footrule lowered
%
\def\footrule{{\if@fancyplain\footrulewidth\plainfootrulewidth\fi
\vskip-0.2\normalbaselineskip\vskip-\footrulewidth
\hrule\@width\headwidth\@height\footrulewidth\vskip0.2\normalbaselineskip}}
% ruler width is variable
\def\headrule{{\if@fancyplain\headrulewidth\plainheadrulewidth\fi
\hrule\@height\headrulewidth\@width\head@rulewidth \vskip-\headrulewidth}}
%
% Make headers shift to other side.
\@reversemargintrue
%
%%%%%%%%%%%%%%%% Internationalisation %%%%%%%%%%%%%%%%
%
% Dutch version of \today
%
\def\vandaag{\number\day\space\ifcase\month\or
 januari\or februari\or maart\or april\or mei\or juni\or
 juli\or augustus\or september\or oktober\or november\or december\fi
 \space\number\year}
%
%%%%%%%%%%%%%%%% Table of Contents %%%%%%%%%%%%%%%%
%
\newcount\toc \toc=0
%
% Redefine standard LaTeX command 
%
\def\tableofcontents#1{
  \if@toc 
    \newpage
    \pagenumbering{roman}
    \if@secnum \markboth{}{\sc{#1}} \fi
    \toc=0
    {\rendi{#1}}
    \setlength{\parskip}{0pt plus 1pt}
    \@starttoc{toc}
    \setlength{\parskip}{7pt plus 1pt}
    \toc=0
  \fi
}

% copied (and modified) from LaTeX ...
\def\@nondottedtocline#1#2#3#4#5{\ifnum #1>\c@tocdepth \else
  \vskip \z@ plus .2pt
  {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
    \parindent #2\relax\@afterindenttrue
   \interlinepenalty\@M
   \leavevmode 
   \@tempdima #3\relax \advance\leftskip \@tempdima \hbox{}\hskip -\leftskip
    #4\nobreak\hfill \nobreak \hbox to\@pnumwidth{\hfil\rm #5}\par}\fi}

%
% toci, tocii and tociii are level 1, 2 and 3 toc entries
%
\def\l@section#1#2{
  \medskip
  \@dottedtocline{0}{0cm}{1cm}{\uppercase{#1}}{#2}
  \toc=1
}
\def\l@subsection#1#2{
  \ifnum\toc=0 \l@section{?.}{} \fi
  \smallskip	
  \@nondottedtocline{0}{1cm}{1cm}{#1}{#2}
  \toc=2
}
\def\l@subsubsection#1#2{
  \ifnum\toc=0 \l@section{?.}{} \fi
  \ifnum\toc=1 \l@subsection{?.?}{} \fi
  \ifnum\toc=3 \else \smallskip \fi
  \@nondottedtocline{0}{2cm}{1.25cm} {#1}{#2}
  \toc=3
}
\def\configurationmanagement#1#2{
  \ifnum\do@cfg=2
    \do@cfg=1
    \newpage
    \pagenumbering{roman}
    \if@secnum \markboth{}{\sc{#1}} \fi
    \medskip
    {\@nfxtrue\do@cfg=0\section{#1}{}}
    \subsection{#2}
    \pagenumbering{roman}
    {\def\@pnumwidth{2cm}
      \@starttoc{cfg}
    }
  \fi
}
\def\configurationstatus#1{	% compatibility...
  \ifnum\do@cfg=2
    \do@cfg=1
    \newpage
    \pagenumbering{roman}
    \if@secnum \markboth{}{\sc{#1}} \fi
    \medskip
    {\rendi{#1}}
    {\def\@pnumwidth{2cm}
      \@starttoc{cfg}
    }
  \fi
}
\def\configline#1#2#3{
  \@nondottedtocline{0}{0cm}{1cm}{\uppercase{#2}}{#3}
}
%
%%%%%%%%%%%%%%%% Index %%%%%%%%%%%%%%%%
%
\def\theindex{
  \reset
  \markboth{}{\sc{\indexcaption}}%
  \let\item\@idxitem
}
\def\@idxitem{\par\hangindent 40pt}
\def\subitem{\par\hangindent 40pt \hspace*{20pt}}
\def\subsubitem{\par\hangindent 40pt \hspace*{30pt}}
\def\endtheindex{\clearpage}
\def\@wrindex#1{%
  \let\thepage\relax
  \edef\@tempa{%
    \write\@indexfile{\string\indexentry{#1}{\indexname}{\thesection}{\thepage}}%
  }%
  \expandafter\endgroup\@tempa
  \if@nobreak \ifvmode\nobreak\fi\fi\@esphack
}
\def\indexcaption{Index}
%
%%%%%%%%%%%%%%%% KeyCaps %%%%%%%%%%%%%%%%
%
\newlength{\@xcp}
\newlength{\@ycp}\settowidth{\@ycp}{\footnotesize\sf{m}}
\def\kcp#1{%
    {%
	\settowidth{\@xcp}{\footnotesize\sf{#1}}%
        \ifnum\@xcp<\@ycp\setlength{\@xcp}{\@ycp}\fi%
        \fboxsep1pt\fbox{\vrule height7pt depth3pt width0pt%
	\footnotesize\sf\makebox[\@xcp][c]{#1}}%
    }\hspace{2pt}%
}
%
%%%%%%%%%%%%%%%% Code %%%%%%%%%%%%%%%%
%
\if@logo\special{! userdict begin /bop-hook { exch dup 0 ne { std_logo } if exch overlay } def end }
\else\special{! userdict begin /bop-hook { overlay } def end }
\fi
%
%%%%%%%%%%%%%%%% Emacs support %%%%%%%%%%%%%%%%
%
% Local Variables:
% eval:(auto-fill-mode 0)
% eval:(headers)
% End:
