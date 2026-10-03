% resume.cls
%
% Medium Length Professional CV - RESUME CLASS FILE
% Based on the template by Trey Hunner, distributed by LaTeXTemplates.com.
%
% Copyright (C) 2010 by Trey Hunner
%
% Copying and distribution of this file, with or without modification,
% are permitted in any medium without royalty provided the copyright
% notice and this notice are preserved. This file is offered as-is,
% without any warranty.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{resume}[2010/07/10 v0.9 Resume class]
\LoadClass[11pt,letterpaper]{article}
\usepackage[parfill]{parskip}
\usepackage{array}
\usepackage{ifthen}
\nofiles
\pagestyle{empty}

% Name and address header
\def\name#1{\def\@name{#1}}
\def\@name{}
\def\addressSep{$\diamond$}
\let\@addressone\relax
\let\@addresstwo\relax
\def\address#1{%
  \@ifundefined{@addresstwo}{%
    \def\@addresstwo{#1}%
  }{%
    \def\@addressone{#1}%
  }%
}
\def\printaddress#1{%
  \begingroup
    \def\\{\addressSep\space}%
    \centerline{#1}%
  \endgroup
  \par
  \addressskip
}
\def\printname{%
  \begingroup
    \centerline{\textbf{\MakeUppercase{\namesize\@name}}}%
  \endgroup
  \par
  \nameskip
}
\AtBeginDocument{%
  \printname
  \@ifundefined{@addresstwo}{}{\printaddress{\@addresstwo}}%
  \@ifundefined{@addressone}{}{\printaddress{\@addressone}}%
}

% Main CV sections
\newenvironment{rSection}[1]{%
  \sectionskip
  \textbf{\MakeUppercase{#1}}%
  \sectionlineskip
  \hrule
  \begin{list}{}{\setlength{\leftmargin}{1.5em}}
  \item[]
}{%
  \end{list}
}

% Experience-style subsections
\newenvironment{rSubsection}[4]{%
  \textbf{#1}\hfill{#2}%
  \ifthenelse{\equal{#3}{}}{}{\\\emph{#3}\hfill\emph{#4}}%
  \smallskip
  \begin{list}{$\cdot$}{\leftmargin=0em}%
  \itemsep -0.5em \vspace{-0.5em}%
}{%
  \end{list}
  \vspace{0.5em}%
}

\def\namesize{\huge}
\def\nameskip{\medskip}
\def\addressskip{\smallskip}
\def\sectionskip{\bigskip}
\def\sectionlineskip{\medskip}
