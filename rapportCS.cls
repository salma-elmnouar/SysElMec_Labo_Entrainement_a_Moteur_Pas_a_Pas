\LoadClass[a4paper,12pt]{article} % Classe du document

%--------------------- Packages ------------------------

\RequirePackage[french]{babel} %Langue du document
\RequirePackage[utf8]{inputenc} %Caractères spéciaux
\RequirePackage[section]{placeins}%Pour placement de section
\RequirePackage[T1]{fontenc} %Quelques lettres qui sont pas inclus dans UTF-8
\RequirePackage{mathtools} %Paquet pour des équations et symboles mathématiques
\RequirePackage{siunitx} %Pour écrire avec la notation scientifique (Ex.: \num{2e+9})
\RequirePackage{float} %Pour placement d'images
\RequirePackage{graphicx} %Paquet pour insérer des images
\RequirePackage[justification=centering]{caption} %Pour les légendes centralisées
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{nomencl}
%\makenomenclature
\RequirePackage{fancyhdr}
%\pagestyle{fancy}
%\fancyheadoffset{1cm}
%\setlength{\headheight}{2cm}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}%Paquet pour insérer légendes dans des sous-figures comme Figure 1a, 1b
\RequirePackage[left=2cm,right=2cm,top=2cm,bottom=3cm]{geometry} %Configuration de la page


%-------------------- Informations sur le rapport ----------------------

\newcommand{\mention}[1]{\renewcommand{\mention}{#1}}
\newcommand{\trigrammemention}[1]{\renewcommand{\trigrammemention}{#1}}
\newcommand{\master}[1]{\renewcommand{\master}{#1}}
\newcommand{\filiere}[1]{\renewcommand{\filiere}{#1}}

\newcommand{\titre}[1]{\renewcommand{\titre}{#1}}

\newcommand{\eleve}[1]{\renewcommand{\eleve}{#1}}

\newcommand{\tuteurecole}[1]{\renewcommand{\tuteurecole}{#1}}
\newcommand{\tuteurentreprise}[1]{\renewcommand{\tuteurentreprise}{#1}}

\newcommand{\logoentreprise}[1]{\renewcommand{\logoentreprise}{#1}}

\newcommand{\dates}[1]{\renewcommand{\dates}{#1}}

\newcommand{\fairemarges}{
\makenomenclature
\pagestyle{fancy}
\fancyheadoffset{0.5cm}


\setlength{\headheight}{46pt} % hauteur du header
\lhead{\includegraphics[scale=0.08]{logos/HEIG-VD_logotype-baseline_rouge-rvb.png}\vspace{1mm}}
\rhead{\nouppercase{\leftmark}}
\rfoot{\thepage}
\cfoot{\textbf{\titre}}
\lfoot{Elmnouar, Steiner, Kilchör, Rossi}
}

\newcommand{\fairepagedegarde}{
\begin{titlepage}



\centering %Centraliser le contenu
\vspace*{-3.2cm}

% Logo Entreprise x ecole
\noindent
\begin{minipage}[c]{0.49\textwidth}
    \centering
    \includegraphics[width=0.6\textwidth]{\logoentreprise}
\end{minipage}
\hfill
\begin{minipage}[c]{0.49\textwidth}
    \centering
    \includegraphics[width=0.6\textwidth]{logos/HEIG-VD_logotype-baseline_rouge-rvb.png} %Insertion du logo Ecole
\end{minipage}
\par\vspace{0.8cm}

% Titre du rapport
\rule{\linewidth}{0.2 mm} \\[0.4 cm]
{\huge\bfseries \titre \par} 
\rule{\linewidth}{0.2 mm} \\[1.0 cm]

% Illustration du projet
\includegraphics[width=0.6\textwidth]{Images/robot_scara.png}\par
\vspace{1.0cm}

% Nom de l'étudiant
{\scshape\LARGE \eleve \par} 
\vspace{1.0cm}

% Parcours de l'étudiant
{\scshape \mention \\ \filiere \\ \master \par} 
\vspace{1cm}

% Dates
{\large \dates \par} 

%\vspace{2cm}

% Représentants de l'étudiant
\begin{minipage}{0.4\textwidth}
	\begin{flushleft} 
	\emph{\textbf{Superviseurs:}}\\ 
    \tuteurecole
	\end{flushleft}
\end{minipage}
~
\begin{minipage}{0.4\textwidth}
	\begin{flushright} 
	\emph{\textbf{Fait par:}} \\
     \tuteurentreprise
	\end{flushright}
\end{minipage}

\vspace{4cm}
    
	\vfill
	

\end{titlepage}
\newpage
}

\newcommand{\tabledematieres}{
\tableofcontents
\newpage
}

\newcommand{\insererfigure}[4]{
\begin{figure}[ht]
\centering
\includegraphics[height=#2]{#1}
\caption{#3}
\label{fig: #4}
\end{figure}
}



