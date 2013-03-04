% -----------------------------------------------------------------
% Copyright (C)  2012  Zhibo Xiao(肖智博) and Vital Delmas Mabonzo
% Permission is granted to copy, distribute and/or modify this document
% under the terms of the GNU Free Documentation License, Version 1.3
% or any later version published by the Free Software Foundation;
% with no Invariant Sections, no Front-Cover Texts, and no Back-Cover Texts.
% A copy of the license is included in the section entitled "GNU
% Free Documentation License".
% -----------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dmuthesis}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax 
\LoadClass[12pt,a4paper,openany,unicode]{book}

\newif\ifonepage\onepagefalse

\renewcommand{\today}{\the\year~年~\the\month~月~\the\day~日}


%% 加载几个常见packages
\RequirePackage{ifpdf}
\RequirePackage{ifthen}
\RequirePackage{doc}
\RequirePackage{keyval}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{indentfirst}
\RequirePackage{makeidx} 
\RequirePackage[final]{pdfpages}
\RequirePackage{color}
\RequirePackage{prettyref}
\RequirePackage[pdfencoding=auto,naturalnames]{hyperref}

\hypersetup{
  unicode=false,
  colorlinks=true,
  linkcolor=blue,
  bookmarksnumbered=true,
  anchorcolor=black,
  citecolor=green,
  filecolor=magenta,
  menucolor=red,
  urlcolor=magenta}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 设置页面布局  % page layout
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[top=2.5cm,bottom=2.5cm,left=2.8cm,right=2.8cm,headsep=1.2cm, includehead,includefoot]{geometry}

% 中文段首缩进
\newlength\CJK@twochars 
\def\CJK@spaceChar{\Unicode{48}{7}}
\def\CJKindent{%
    \settowidth\CJK@twochars{\CJK@spaceChar\CJK@spaceChar}%
    \parindent\CJK@twochars}

%%%%%%%%%%%%%%%%%%%
% 报警处理         %
%%%%%%%%%%%%%%%%%%
%%%%%%不要拉大行距使得页面充满
\raggedbottom
\renewcommand{\textfraction}{0.07}
\renewcommand{\topfraction}{0.9}
\renewcommand{\bottomfraction}{0.8}
\renewcommand{\floatpagefraction}{0.85}
% 去掉表格中的badboxes报警,看着不爽
\hbadness=10000 \tolerance=10000 \hfuzz=150pt 


\RequirePackage{amssymb} %this package conflicts with xeCJK, place it before xeCJK to avoid the coflict.
%%%%%%%%%%%%%%%%%%
% 字体相关    %
%%%%%%%%%%%%%%%%%%
\RequirePackage[BoldFont, SlantFont, CJKnumber]{xeCJK}
\RequirePackage{fontspec,xunicode}
\RequirePackage{xltxtra}
\RequirePackage{zhspacing}
\RequirePackage{zhmath}
\zhspacing
\setmainfont[Mapping=tex-text]{Times New Roman}
\setCJKmainfont[BoldFont={Heiti}]{SimSun} 
\setCJKfamilyfont{song}{SimSun}
\setCJKfamilyfont{hei}{SimHei}
\setCJKfamilyfont{kai}{KaiTi}
\setCJKfamilyfont{fang}{FangSong}
% 字体定义
\newcommand{\songti}{\CJKfamily{song}}
\newcommand{\heiti}{\CJKfamily{hei}}
\newcommand{\kaiti}{\CJKfamily{kai}}
\newcommand{\fangsong}{\CJKfamily{fang}}

%%%%%%%%%%%%%%%%%%
% 定义字号      %
%%%%%%%%%%%%%%%%%%
\newcommand{\chuhao}{\fontsize{42pt}{46pt}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}{40pt}\selectfont}
\newcommand{\yichu}{\fontsize{32pt}{36pt}\selectfont}
\newcommand{\yihao}{\fontsize{28pt}{32pt}\selectfont}
\newcommand{\erhao}{\fontsize{21pt}{24pt}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18pt}{20}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75pt}{18pt}\selectfont}
\newcommand{\xiaosanhao}{\fontsize{15pt}{22.5pt}\selectfont}%1.5
\newcommand{\sihao}{\fontsize{14pt}{16pt}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{14pt}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{13pt}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9pt}{11pt}\selectfont}
\newcommand{\liuhao}{\fontsize{7.5pt}{9pt}\selectfont}
\newcommand{\xiaoliuhao}{\fontsize{6.5pt}{7.5pt}\selectfont}
\newcommand{\qihao}{\fontsize{5.5pt}{6.5pt}\selectfont}

% 合乎研究生院的字体字号
\renewcommand{\normalsize}{\xiaosihao\songti\normalfont} % Normal font size 小四号宋体
\newcommand{\absorinamecn}{\heiti\xiaosanhao}         % 中文“创新点摘要”字样的字体 font for original abstrac
\newcommand{\absnamecn}{\heiti\xiaosanhao}         % 中文“摘要”字样的字体 font for chinese abstract
\newcommand{\abskeycn}{\bfseries\heiti\xiaosihao}       % 中文摘要“关键字”字样的字体 font for chinese keywords "关键字"
\newcommand{\abskeyscn}{\bfseries\heiti\xiaosihao} % 中文摘要关键字的字体 font for english abstract 
\newcommand{\absnameen}{\bfseries\heiti\xiaosanhao} % 英文``Abstract''字样的字体  font for enligsh abstract
\newcommand{\abskeyen}{\bfseries\xiaosihao}   % 英文``KEY WORDS''字样的字体 font for english keyword "ABSTRACT"
\newcommand{\abskeysen}{\bfseries\xiaosihao}        % 英文关键字的字体 font for english keywords
\newcommand{\headfont}{\songti\wuhao\normalfont} 	% 页眉字体 font for header
\newcommand{\pagefont}{\songti\wuhao\normalfont} 	% 页码字体 font for page number
\newcommand{\toctitlefont}{\heiti\xiaoerhao}            % “目录”字样的字体 font for "目录"
\newcommand{\tocchapterfont}{\heiti\xiaosihao} % 目录上第X章的字体 font for the first level title in toc
\newcommand{\tocsectionfont}{\normalsize}         % 目录上X.Y节的字体 font for the second level title in toc
\newcommand{\tocsubsectionfont}{\normalsize}      % 目录上X.Y.Z小节的字体 font for the third level title in toc
\newcommand{\tocsubsubsectionfont}{\normalsize}      % 目录上X.Y.Z小节的字体 font for the fourth level title in toc
\newcommand{\textchapterfont}{\centering\heiti\sanhao} % 正文上第X章的字体 font for the first level title 
\newcommand{\textsectionfont}{\heiti\sihao}            % 正文上X.Y节的字体 font for the second level title 
\newcommand{\textsubsectionfont}{\heiti\xiaosihao}     % 正文上X.Y.Z小节的字体 font for the third level title 
\newcommand{\textsubsubsectionfont}{\heiti\xiaosihao}     % 正文上X.Y.Z.K小节的字体 font for the fourth level title
\newcommand{\footnotefont}{\songti\xiaowuhao\normalfont}     % 脚注字体 font for the footer
\newcommand{\ftcaptionfont}{\kaiti\wuhao\normalfont}         % 图表标题的字体 font for the title of a graph/picture
\newcommand{\reftitlefont}{\heiti\sanhao}      % “参考文献”字样的字体 font for "参考文献/reference"
\newcommand{\refbodyfont}{\songti\wuhao\normalfont}          % 参考文献字体 font for referneces
\newcommand{\thanktitlefont}{\heiti\sanhao}    % “致谢”字样的字体 font for "acknowledge"
\newcommand{\appendixtitlefont}{\heiti\sanhao} % “附录”字样的字体 font for "appendix"



%%%%%%%%%%%%%%%%%%%
% 图环境      % 
%%%%%%%%%%%%%%%%%%
\RequirePackage{graphicx}
 % 如果插入的图片没有指定扩展名,那么依次搜索下面的扩展名所对应的文件
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png}
\RequirePackage{subfig} % config兼容subfigure命令
\RequirePackage{float} % 可以使用［H］命令
\RequirePackage{caption} % 定义图的标题格式：居中. 使用caption3.0
\DeclareCaptionFont{capFont}{\ftcaptionfont} % 表格名及图名/
\DeclareCaptionLabelSeparator{twospace}{~~}
\captionsetup{ labelsep=twospace,% 去掉图标签后的冒号
  belowskip=-12bp,aboveskip=0bp,
  font={capFont}, figurename=图,tablename=表,listfigurename=插图目录,listtablename=表格目录} 
\captionsetup[figure]{position=bottom}
\DeclareCaptionLabelFormat{SCUTsub}{#1#2)}
\captionsetup[subfloat]{captionskip=6bp,nearskip=0bp,farskip=0bp,topadjust=0bp,justification=centering,
                        labelformat=SCUTsub}
%%%%%%%%%%定义双标题命令 
\newcommand{\FigureBicaption}[2]{
  \renewcommand{\figurename}{图}
  \vspace{8pt}
  \caption{#1}
  \addtocounter{figure}{-1}
  \renewcommand{\figurename}{Fig.}
  \captionsetup{list=false}
  \vspace{6pt}
  \caption{#2}
  \captionsetup{list=true}
  \renewcommand{\figurename}{图}
}
\newcommand{\SubfloatCaption}[4]  % Four Parameters, the first one is the width of the subfigure,
{
  \subfloat[#2]{
    \label{#3}
    \addtocounter{subfigure}{-1} 
    \subfloat[\vspace{-5pt}#1]{#4}
  }%
}
 

%%%%%%%%%%%%%%%%%%%
% 表格         %
%%%%%%%%%%%%%%%%%%
\RequirePackage{array} % 扩展了 array 和 tabular 环境功能
\RequirePackage{booktabs} % 增加对三线表格的支持 % \toprule，\midrule，\bottomrule
\usepackage{longtable} % 长表格支持，截断跨页
\RequirePackage{ctable, threeparttable} % 支持表格注释,复杂表格，一般用不上
\RequirePackage{tabu}
%\RequirePackage{slashbox} % 表格中的反斜线
\captionsetup[table]{position=top}
%%%%%%%%%%定义双标题命令
\newcommand{\TableBicaption}[2]{
  \renewcommand{\tablename}{表}
  \vspace{0pt}
  \caption{#1}
  \vspace{6pt}
  \addtocounter{table}{-1}
  \renewcommand{\tablename}{Table}
  \captionsetup{list=false}
  \caption{#2}
  \vspace{3pt}
  \captionsetup{list=true}
  \renewcommand{\tablename}{表}
}
\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\renewcommand{\thefootnote}{注\arabic{footnote}} \setcounter{footnote}{0}
\renewcommand\fps@figure{tphb} % 设置图浮动的默认参数
\renewcommand\fps@table{tphb}

%%%%%%%%%%%%%%%%%%%
% 列表环境     %
%%%%%%%%%%%%%%%%%%
\RequirePackage{enumitem}
\setlist{noitemsep,nolistsep,topsep=0pt,itemindent=1em}
\setenumerate[1]{label=\arabic*), ref=\arabic*}
\setenumerate[2]{label=\emph{\alph*}),ref=\theenumi.\emph{\alph*}}
\setenumerate[3]{label=\roman*), ref=\theenumii.\roman*}

%%%%%%%%%%%%%%%%%%%
% 算法和源代码 
%%%%%%%%%%%%%%%%%% 
\usepackage[ruled,vlined,algochapter]{algorithm2e}
% algorithm2e 中文标题定制
\renewcommand{\algorithmcfname}{算法}
\renewcommand\thealgocf{\csname the\algocf@within\endcsname-\@arabic\c@algocf}%

% Source Code environement 
\RequirePackage{listings}
\lstset{
  tabsize=4, %
  frame=shadowbox, %把代码用带有阴影的框圈起来
  %commentstyle=\color{red!50!green!50!blue!50},%浅灰色的注释
  %rulesepcolor=\color{red!20!green!20!blue!20},%代码块边框为淡青色
  %keywordstyle=\color{blue!90}\bfseries, %代码关键字的颜色为蓝色，粗体
  showstringspaces=false,%不显示代码字符串中间的空格标记
  stringstyle=\ttfamily, % 代码字符串的特殊格式
  keepspaces=true, %
  breakindent=22pt, %
  numbers=left,%左侧显示行号
  stepnumber=1,%
  numberstyle=\tiny, %行号字体用小号
  basicstyle=\footnotesize, %
  showspaces=false, %
  flexiblecolumns=true, %
  breaklines=true, %对过长的代码自动换行
  breakautoindent=true,%
  breakindent=4em, %
  aboveskip=1em, %代码块边框
  fontadjust,
  captionpos=t,
  framextopmargin=2pt,framexbottommargin=2pt,abovecaptionskip=-3pt,belowcaptionskip=3pt,
  xleftmargin=4em,xrightmargin=4em, % 设定listing左右的空白
  texcl=true,
  % 设定中文冲突，断行，列模式，数学环境输入，listing数字的样式
  extendedchars=false,columns=flexible,mathescape=true
  numbersep=-1em
}

\renewcommand{\lstlistingname}{代码} %% 重命名Listings标题头 



%%%%%%%%%%%%%%%%%%%
% 参考文献      %
%%%%%%%%%%%%%%%%%%
\RequirePackage[numbers,square,sort&compress]{natbib} % 修改引用参考文献格式 
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}} % 上标形式引用
% 下面三行为缩短参考文献条目间的距离和条目内行距的
\setlength{\baselineskip}{0.8\baselineskip}  
 \setlength{\itemsep}{-2mm} 
 \addtolength{\bibsep}{-1.0 em} 

\RequirePackage[nottoc]{tocbibind} % 将参考文献、索引、表格目录和图形
\renewcommand{\bibname}{参考文献}

%%%%%%%%%%%%%%%%%%%
% 目录           %
%%%%%%%%%%%%%%%%%%
\RequirePackage{titletoc} % 设置目录
\renewcommand\contentsname{\centerline{\toctitlefont{目\quad {}录}}}
\titlecontents{chapter}[0ex]{\tocchapterfont}{%
    第{\thecontentslabel}章\quad {}}{}{%
    \hspace{.5em}\titlerule*[5pt]{$\cdot$}\contentspage}%
\titlecontents{section}[1em]{\tocsectionfont}{%
    \thecontentslabel\quad {}}{}{%
    \hspace{.5em}\titlerule*[5pt]{$\cdot$}\contentspage}%
\titlecontents{subsection}[2em]{\tocsubsectionfont}{%
    \thecontentslabel\quad {}}{}{%
    \hspace{.5em}\titlerule*[5pt]{$\cdot$}\contentspage}%
\titlecontents{subsubsection}[3em]{\tocsubsubsectionfont}{%
    \thecontentslabel\quad {}}{}{%
    \hspace{.5em}\titlerule*[5pt]{$\cdot$}\contentspage}%

% 设定章节深度和目录深度 setting the table of conents' depth 
\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{2}

%%%%%%%%%%%%%%%%%%%
% 页面风格       %
%%%%%%%%%%%%%%%%%%
% Text style
\RequirePackage[pagestyles, rm]{titlesec}%调用titlesec涵盖fancyhdr的功能
\renewcommand{\chaptername}{第{\thechapter}章}
\titleformat{\chapter}[hang]{\textchapterfont}{第{\thechapter}章}{1em}{}
\titleformat{\section}[hang]{\textsectionfont}{\thesection}{1em}{}
\titleformat{\subsection}[hang]{\textsubsectionfont}{\thesubsection}{1em}{}
\titleformat{\subsubsection}[hang]{\textsubsubsectionfont}{\thesubsubsection}{1ex}{}% 小四黑体居左


\setlength{\parskip}{0ex}% 正文段前段后距：无空行
\titlespacing{\chapter}{0pt}{-0.9cm}{0mm} % 缩短章标题上间距
\titlespacing*{\section}{0pt}{-2pt}{.0ex plus .0ex minus .2ex} % 标题间距
\titlespacing{\subsection}{0pt}{0pt}{.3ex plus .3ex minus .2ex} 
\titlespacing{\subsubsection}{0pt}{0pt}{.6ex plus .2ex minus .2ex} 


\newcommand{\linespacing}[1]{\linespread{#1}\selectfont}% 行距命令

%\sethead[ even-left ][ even-center ][ even-right ]    { odd-left }{ odd-center }{ odd-right }
\newpagestyle{revtitlestyle}{
  \sethead[][{\headfont{}\thesissubject}][] % 页眉偶数页，五号字体，居中
  {}{{\headfont{}\chaptertitlename\quad \chaptertitle}}{} % 页眉奇数页，五号字体，居中
  \setfoot{}{\pagefont{}-~\thepage~-}{}%页码五号宋体居中
  \headrule%上横线
  \setheadrule{0.5pt}%设置横线粗细
}

\newpagestyle{originalstyle}{
  \sethead[][{\headfont{} 创\quad 新\quad 点\quad 摘\quad 要}][] % 页眉偶数页，五号字体，居中
  {}{\headfont{}创\quad 新\quad 点\quad 摘\quad 要}{} % 页眉奇数页，五号字体，居中
  \headrule%上横线
  \setheadrule{0.5pt}%设置横线粗细
}

\newpagestyle{cnabstractstyle}{
  \sethead[][{\headfont{} 中\quad 文\quad 摘\quad 要}][] % 页眉偶数页，五号字体，居中
  {}{\headfont{}中\quad 文\quad 摘\quad 要}{} % 页眉奇数页，五号字体，居中
  \headrule%上横线
  \setheadrule{0.5pt}%设置横线粗细
}

\newpagestyle{enabstractstyle}{
  \sethead[][{\headfont{} 英\quad 文\quad 摘\quad 要}][] % 页眉偶数页，五号字体，居中
  {}{\headfont{}英\quad 文\quad 摘\quad 要}{} % 页眉奇数页，五号字体，居中
  \headrule%上横线
  \setheadrule{0.5pt}%设置横线粗细
}

\newpagestyle{tocstyle}{
  \sethead[][{\headfont{} 目\quad 录}][] % 页眉偶数页，五号字体，居中
  {}{\headfont{}目\quad 录}{} % 页眉奇数页，五号字体，居中
  \headrule%上横线
  \setheadrule{0.5pt}%设置横线粗细
}

% page style for chapters without label number
\newpagestyle{nolabelchapterstyle}{
    \sethead[][{\headfont{}\thesissubject}][] % 页眉偶数页，五号字体，居中
    {}{{\headfont\chaptertitle}}{} % 页眉奇数页，五号字体，居中, no label
    \setfoot{}{\pagefont{}-~\thepage~-}{}%页码五号宋体居中
    \headrule%上横线
    \setheadrule{0.5pt}%设置横线粗细
} 

\newpagestyle{frontmatterstyle}{
  \sethead[][{\headfont{}\chaptertitle}][] % 页眉偶数页，五号字体，居中
  {}{\headfont{}\chaptertitle}{} % 页眉奇数页，五号字体，居中
  \headrule%上横线
  \setheadrule{0.5pt}%设置横线粗细
}

%空白页
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \hbox{}\thispagestyle{empty}\newpage\addtocounter{page}{-1}
  \if@twocolumn\hbox{}\newpage\fi\fi\fi}
  
\newcommand{\myclearpage}{%
  \ifonepage
    \clearpage
  \else
    \cleardoublepage
\fi
}
%%% chapter不另起一页, optional
\newcommand{\compactchapter}{
  \let\cdpage\cleardoublepage
  \let\cpage\clearpage
  \let\cleardoublepage\endgraf
  \let\clearpage\endgraf
}
%

\newcommand\originalabstract{
    %\@frontmattertrue 
    \pagestyle{originalstyle}  %  摘要之前的部分不需要页码
    \myclearpage
    \pagenumbering{Roman}% Roman style page number
    \let\ps@plain=\ps@originalstyle
    \pagestyle{originalstyle}
	\@mainmatterfalse
}

\newcommand\cnabstract{
	\pagestyle{cnabstractstyle}  %  摘要之前的部分不需要页码
    \myclearpage
    \pagenumbering{Roman}% Roman style page number
    \let\ps@plain=\ps@cnabstractstyle
    \pagestyle{cnabstractstyle}
	\@mainmatterfalse
}

\newcommand\enabstract{
	\pagestyle{enabstractstyle}  %  摘要之前的部分不需要页码
    \myclearpage
    \pagenumbering{Roman}% Roman style page number
    \let\ps@plain=\ps@enabstractstyle
    \pagestyle{enabstractstyle}
	\@mainmatterfalse
}%

\newcommand\tableofcontentmatter{
	\pagestyle{tocstyle}  %  摘要之前的部分不需要页码
    \myclearpage
    \pagenumbering{Roman}% Roman style page number
    \let\ps@plain=\ps@tocstyle
    \pagestyle{tocstyle}
	\@mainmatterfalse
}

\newcommand{\preface}[1]{%
  \chapter*{#1}
  \addcontentsline{toc}{chapter}{#1}
  %\setcounter{section}{0}
  %\renewcommand{\thesection}{\arabic{section}} 
}

\renewcommand\mainmatter{%
  \@mainmattertrue
  %\pagestyle{empty} % 目录后的空页接正文部分，不需要页码
  \myclearpage %clear before \pagenumbering  to make tableofcontent Roman number
  \pagenumbering{arabic}
   % the original plainstyle is revised to add the pagehead to the first page in a chapter 
   % the default style of the first page is plain. 
   % \pagestyle{yourstyle} can be used to define the style of other pages,
   % or keep the same as plain.
   \let\ps@plain=\ps@revtitlestyle
  \pagestyle{revtitlestyle} 
  %\pagestyle{plain} 
  % 开始正文部分
}

\renewcommand\backmatter{%
  % there is no label number for reference chapter
  \let\ps@plain=\ps@nolabelchapterstyle
  \pagestyle{plain} 
}


\renewcommand{\appendix}[1]{%
  %\myclearpage 
  % \chaptertitle is not available for those chapters without label number.
  \renewpagestyle{plain}{
    \sethead[][{\headfont{}\thesissubject}][] % 页眉偶数页，五号字体，居中
    {}{\headfont{}#1}{} % 页眉奇数页，五号字体，居中
    \setfoot{}{\headfont{}-~\thepage~-}{}%页码五号宋体居中
    \headrule%上横线
    \setheadrule{0.5pt}%设置横线粗细
  }
  \pagestyle{plain} 
  \chapter*{#1}
  \addcontentsline{toc}{chapter}{#1}
  \setcounter{section}{0}
  \renewcommand{\thesection}{附录\arabic{section}} 
}
%==========
\AtBeginDocument{\CJKindent{}%
    \makeindex%
    \normalsize%正文字体格式
    \linespacing{1.682}% 主行距～1.5倍
  }
\AtEndDocument{}
%------------------

\newenvironment{abstractOriginal}{
  \chapter*{创 \; 新 \; 点 \; 摘 \; 要}
  %\addcontentsline{toc}{chapter}{摘要} % 
}{
}

\newenvironment{abstractCn}{
  \chapter*{摘\quad 要}
  %\addcontentsline{toc}{chapter}{摘要} % 
}{
}
\newcommand{\keywordsCn}[1]{
  \par
 \vspace{1em}
  \newcommand{\@keywords}{#1}
  {\noindent\abskeycn 关键词：} {\abskeyscn \@keywords} % \noindent去掉缩进 
  %\myclearpage 
}
  
\newenvironment{abstractEn}
{
  \chapter*{\textbf{ABSTRACT}}
  %\addcontentsline{toc}{chapter}{Abstract} % 
}{
}

\newcommand{\keywordsEn}[1]{%
  \par
 \vspace{1em}
  {\noindent\abskeyen Keywords:} {\abskeysen #1} % \noindent去掉缩进 
  %\myclearpage 
}

%examples:
%\appendix{附\quad 录}% 
%\section{随机数的生成}%
%\appendix{攻读博士学位期间取得的研究成果}
%\appendix{致\quad 谢}%

\renewenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\renewenvironment{quotation}
               {\list{}{\listparindent 2.0em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\renewenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%\vspace{-15pt}
                \item\relax}
               {\endlist}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 定理环境
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{bm} % 数学符号粗体
\RequirePackage{amsmath,amsthm,mathrsfs} 
%允许公式换页显示,否则大型推导公式都在一页内，
%一页显示不下放到第二页，导致很大的空白空间，很不好看
\allowdisplaybreaks[4]

\newtheoremstyle{definition}% name
  {0pt}%      Space above, empty = `usual value'
  {0pt}%      Space below
  {}% Body font \itshape
  {\parindent}%         Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries}% Thm head font
  {:}%        Punctuation after thm head
  {0.5em}% Space after thm head: \newline = linebreak
  {}%         Thm head spec
\theoremstyle{definition}
\newtheorem{definition}{定义~}[chapter]
\newtheorem{example}{例~}[chapter]
\newtheorem{remark}{说明~}[chapter]


\newtheoremstyle{plain}% name
  {0pt}%      Space above, empty = `usual value'
  {0pt}%      Space below
  {\fangsong}% Body font \itshape
  {\parindent}%         Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries}% Thm head font
  {:}%        Punctuation after thm head
  {0.5em}% Space after thm head: \newline = linebreak
  {}%         Thm head spec
\theoremstyle{plain}

\newtheorem{proposition}{命题~}[chapter]
\newtheorem{lemma}{引理~}[chapter]
\newtheorem{theorem}{定理~}[chapter]
\newtheorem{axiom}{公理~}[chapter]
\newtheorem{corollary}{ 推论~}[chapter]
\newtheorem{case}{情形~}[chapter]
\newtheorem{conjecture}{猜想~}[chapter]
\newtheorem{property}{性质~}[chapter]

\renewenvironment{proof}{\vskip 1pt\indent \itshape 证明:~\normalfont}{\hfill$\square$\vskip 0.01\baselineskip} 
%%%%%%%%%%%%%%%%%   end of 定理环境
\setlength\abovedisplayskip{4pt}
\setlength\belowdisplayskip{4pt}

\endinput
%% End of file `dmuthesis.cls'.
