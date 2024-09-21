\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dspreport}[LaTeX template for HITsz Digital Signal Processing (2024) reports]

%%
%% Loaded document class and packages
%%

\LoadClass[linespread=1.5, fontset=custom]{ctexart}

\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{booktabs}
\RequirePackage{caption}
\RequirePackage{datatool}
\RequirePackage{datetime}
\RequirePackage{diagbox}
% Removes vertical gaps in lists
% See: https://tex.stackexchange.com/a/43747/290833
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{float}
\RequirePackage[left=.75in, right=.75in, bottom=1in, top=1in]{geometry}
% See: https://www.overleaf.com/learn/latex/Questions/How_do_I_tab_(indent)_a_paragraph_in_LaTeX%3F
\RequirePackage{indentfirst}
% See: https://tex.stackexchange.com/a/176780
\RequirePackage{makecell}
% \RequirePackage[newfloat]{minted}
% See: https://www.overleaf.com/learn/latex/Multiple_columns
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{pgfplots}
\RequirePackage{siunitx}
% See: https://tex.stackexchange.com/a/478054/290833
\RequirePackage{stackengine}
\RequirePackage{subcaption}
\RequirePackage{tabularx}
% Provides `/Xcline'.
\RequirePackage{titlesec}
\RequirePackage{xltabular}

%%
%% Pre user settings
%%

\newcommand{\classno}[1]{\def\theclassno{#1}}
\newcommand{\stuno}[1]{\def\thestuno{#1}}
\newcommand{\groupno}[1]{\def\thegroupno{#1}}
\newcommand{\stuname}[1]{\def\thestuname{#1}}
\newcommand{\expdate}[1]{\def\theexpdate{#1}}
\newcommand{\expidx}[1]{\def\theexpidx{#1}}
\newcommand{\expname}[1]{\def\theexpname{#1}}

\newdateformat{expdatefmt}{\THEYEAR-\THEMONTH-\THEDAY}

%%
%% Package settings
%%

\ctexset{section={
      format=\large\bfseries\raggedright,
      number=\chinese{section},
      name={,、},
      aftername=
     }, subsection={
            format=\normalsize\bfseries\raggedright,
            number=\arabic{subsection},
            name={,.}
        }}

\fancyhead[C]{{\includegraphics{images/logo.png}}}
\fancyhead[R]{}
\fancyhead[L]{}
\fancyfoot[C]{{\small \thepage}}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{.9pt}
% Resolve fancyhdr head height too small
% See: https://tex.stackexchange.com/a/327298
\setlength{\headheight}{45.45184pt}
\setlength{\topmargin}{-.35in}
\setlength{\headsep}{.2in}
\setlength{\footskip}{.2in}

% Remove gaps before and after the titles.
\titlespacing*{\section}{0pt}{0ex}{0ex}
\titlespacing*{\subsection}{0pt}{0ex}{0ex}
\titlespacing*{\subsubsection}{0pt}{0ex}{0ex}

\newcolumntype{Y}{>{\centering\arraybackslash}X}

% See: https://tex.stackexchange.com/a/478054/290833
\newcolumntype{L}[1]{>{\minwd l{#1}}l<{\endminwd}}
\newcolumntype{C}[1]{>{\minwd c{#1}}c<{\endminwd}}
\newcolumntype{R}[1]{>{\minwd r{#1}}r<{\endminwd}}
\def\minwd#1#2#3\endminwd{\stackengine{0pt}{#3}{\rule{#2}{0pt}}{O}{#1}{F}{F}{L}}
\newcolumntype{Q}{@{}c@{}}

\setlist[enumerate]{noitemsep}

\pgfplotsset{%
    compat=1.18,
    samples=300,
    legend pos=north east,
    every axis plot/.append style={line width=0.9pt}
}

% See: https://thenode.biologists.com/data-visualization-with-flying-colors/research/
\definecolor{ochre}     {HTML}{D4A03C}
\definecolor{babyblue}  {HTML}{7AB1E3}
\definecolor{tea}       {HTML}{549A76}
\definecolor{straw}     {HTML}{EAE363}
\definecolor{flatblue}  {HTML}{4271AB}
\definecolor{copper}    {HTML}{BD642B}
\definecolor{lavender}  {HTML}{BA7DA3}

% \setminted{linenos, breaklines, frame=lines}
% \SetupFloatingEnvironment{listing}{name={程序清单}}

% \setmonofont{LigalexMono}[
%     Path=fonts/,
%     Extension=.ttf,
%     ItalicFont=LigalexMono-Italic,
%     BoldFont=LigalexMono-Bold
% ]

\setlist{nosep}

%%
%% Document body stuff
%%

% Personal information and experiment title on the first page
\renewcommand{\maketitle}{%
    % Begin the experiment title.
    \noindent{\Large\heiti{\centering{数字信号处理实验报告（\theexpidx）----\theexpname}\par}}

    \begin{table*}[h]
        \setlength\tabcolsep{.5em}
        \begin{tabularx}{\textwidth}{XXX}
            {
                \begin{tabularx}{\linewidth}{cY}
                    {\large 姓名：} & {\large \thestuname} \\\Xcline{2-2}{1pt}
                \end{tabularx}
            } & {
                    \begin{tabularx}{\linewidth}{cY}
                        {\large 学号：} & {\large \thestuno} \\\Xcline{2-2}{1pt}
                    \end{tabularx}
            } & {
                    \begin{tabularx}{\linewidth}{cY}
                        {\large 班级：} & {\large \theclassno} \\\Xcline{2-2}{1pt}
                    \end{tabularx}
            }         \\
            % Add to the vertical gap between the two lines.
            % We do not specify `/arraystretch' because it widens the vertical
            % height of cells so that the horizontal lines (`\cline') are too away
            % from the text.
            \\ [-1.2em]
            {
            \begin{tabularx}{\linewidth}{cY}
                {\large 实验日期：} & {\large \theexpdate} \\\Xcline{2-2}{1pt}
            \end{tabularx}
            } &   & {
                    \begin{tabularx}{\linewidth}{cY}
                        {\large 实验台号：} & {\large \thegroupno} \\\Xcline{2-2}{1pt}
                    \end{tabularx}
                }
        \end{tabularx}
    \end{table*}
}

% Use a newly-defined environment to allow page break in minted environment
% and add the same caption for normal listing environment.
% See: https://tex.stackexchange.com/a/368971
\newenvironment{longlisting}{\captionsetup{type=listing}}{}

% Inline text/Text block in some fonts
\newcommand{\blank}[1]{{\lxgw\quad{#1}\quad}}
\newenvironment{block}{\begingroup\lxgw}{\endgroup}
