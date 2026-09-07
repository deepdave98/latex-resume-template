\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2026/09/06 Compact resume template]

% Pass options such as a4paper or 11pt from \documentclass to article.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

% Page margins: change the four geometry values below.
\RequirePackage[left=0.5in,top=0.5in,right=0.5in,bottom=0.5in]{geometry}
\RequirePackage{xcolor}
\RequirePackage{fontspec}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{etoolbox}
\RequirePackage{needspace}
\RequirePackage[normalem]{ulem}
\RequirePackage{hyperref}

\pagestyle{empty}
\raggedbottom

% Font: replace the four OpenType filenames below; compile with XeLaTeX.
\setmainfont{lmroman10-regular.otf}[
  BoldFont=lmroman10-bold.otf,
  ItalicFont=lmroman10-italic.otf,
  BoldItalicFont=lmroman10-bolditalic.otf
]

% Colors: namecolor controls resume text and headings; linkblue controls links.
\definecolor{namecolor}{HTML}{293E49}
\definecolor{linkblue}{HTML}{003B73}

% Link colors and default PDF metadata; each resume can override its title and subject.
\hypersetup{
  colorlinks=true,
  urlcolor=linkblue,
  linkcolor=linkblue,
  pdftitle={LaTeX Resume Template},
  pdfauthor={},
  pdfsubject={Software engineering resume template},
  pdfkeywords={resume, curriculum vitae, LaTeX, template},
  pdfcreator={XeLaTeX},
  pdfproducer={}
}
\urlstyle{same}

% Link styling: replace \uline{#2} with #2 to remove underlining.
\newcommand{\resumelink}[2]{\href{#1}{\uline{#2}}}

\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}

% Header styling: adjust the name size, contact size, and vertical gaps here.
\newcommand{\resumename}[1]{%
  \noindent{\fontsize{30}{36}\selectfont\color{namecolor}\textbf{#1}}\par
  \vspace{6pt}%
}

\newcommand{\contactsep}{\enspace\ensuremath{\diamond}\enspace}

\newcommand{\resumecontact}[1]{%
  {\small\color{namecolor}#1}\par
  \vspace{8pt}{\color{black!60}\hrule height 0.5pt}%
}

% Section styling: adjust heading typography, divider, and spacing below.
\titleformat{\section}
  {\large\bfseries\color{namecolor}}
  {}{0pt}{}
  [\vspace{6pt}{\color{black!60}\hrule height 0.5pt}]

\titlespacing*{\section}{0pt}{9pt}{6pt}

\newlength{\jobdutiesvspace}

% \jobentry[Optional summary]{Title}{Company}{Location}{Dates}
% Pass {} for Location to omit it.
% The gap before jobduties is 5pt with a summary and 3pt without.
\newcommand{\jobentry}[5][]{%
  \ifblank{#1}{\setlength{\jobdutiesvspace}{3pt}}{\setlength{\jobdutiesvspace}{5pt}}%
  \Needspace{5\baselineskip}%
  \vspace{8pt}%
  \noindent\begin{tabular*}{\linewidth}{@{}l@{\extracolsep{\fill}}r@{}}
    {\color{namecolor}\textbf{#3}\ifblank{#4}{}{\space--\space#4}} &
    {\small\textbf{\color{namecolor}#5}}
  \end{tabular*}\par\nopagebreak%
  \vspace{1pt}%
  {\color{namecolor}\textit{#2}}\par\nopagebreak%
  \ifblank{#1}{}{%
    \vspace{4pt}%
    {\small\itshape\color{namecolor}#1\/}\par\nopagebreak%
  }%
  \par\nopagebreak%
}

% Entry bullets: adjust line spacing, marker, indentation, and list spacing here.
\newenvironment{jobduties}{%
  \vspace{\jobdutiesvspace}%
  \color{namecolor}\normalfont%
  \linespread{1.06}\selectfont%
  \begin{itemize}[
    leftmargin=*,
    label=\textbullet,
    topsep=2pt,
    itemsep=2pt,
    parsep=0pt,
    partopsep=0pt
  ]
}{%
  \end{itemize}
  \vspace{4pt}%
}

% Skills bullets: change these values if skills should use a different list style.
\newenvironment{skillitems}{%
  \vspace{8pt}%
  \color{namecolor}\normalfont%
  \linespread{1.06}\selectfont%
  \begin{itemize}[
    leftmargin=*,
    label=\textbullet,
    topsep=2pt,
    itemsep=2pt,
    parsep=0pt,
    partopsep=0pt
  ]
}{%
  \end{itemize}
  \vspace{4pt}%
}
