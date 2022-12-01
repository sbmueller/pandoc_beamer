---
colortheme: "owl" # or default
aspectratio: 169 # or 43
title: "Title"
subtitle: "Subtitle"
author:
  - Author 1
  - Author 2
...

## Picture

<!--\begin{figure}-->
<!--\begin{center}-->
<!--\includegraphics[width=0.8\textwidth]{Git-logo.pdf}-->
<!--\caption{The git logo}-->
<!--\end{center}-->
<!--\end{figure}-->

![The `git` logo](Git-logo.pdf){#git-logo}

See Fig. \ref{git-logo} for the Git logo.

# Section 1

## Columns

\colA{0.3\textwidth}
Working directory

- The files on your hard drive
- You edit stuff here

\colB{0.3\textwidth}

Local (`.git`)

- Branches
- References
- Tags
- Commits

\colB{0.3\textwidth}

Remote(s)

- Branches
- References
- Tags
- Commits

\colEnd
\vspace{1cm}

Transitions between them happen with \cite{dijkstra1959note}.

`git commit/push/fetch/checkout/pull`

# Tikz figures

## Plotting a `csv` file

\begin{figure}
\begin{tikzpicture}
\begin{axis}[xlabel=Xlabel,ylabel=Ylabel,height=0.95\textheight,width=\textwidth,
grid=major, grid style={line width=.1pt, draw=fg!90!bg},
legend style={fill=bg,font=\small}, label style={font=\small},
tick label style={font=\tiny}]
\addplot table [x=a, y=b, col sep=comma,cyan]{data.csv};
\addplot table [x=a, y=c, col sep=comma,lime]{data.csv};
\addlegendentry{Approach 1}
\addlegendentry{Approach 2}
\end{axis}
\end{tikzpicture}
\end{figure}

## Git trees with Tikz

\begin{tikzpicture}[ampersand replacement=\&]
\tikzstyle{commit}=[draw,circle,fill=bg,inner sep=0pt,minimum size=5pt]
\tikzstyle{clabel}=[right,outer sep=1em]
\tikzstyle{every path}=[draw]
\matrix [column sep={1em,between origins},row sep=\lineskip]
{
\& \commit{9f9c652}{Implement new feature [\texttt{feature}]} \\
\commit{b3bd158}{fix unit test [\texttt{master}]} \& \ghost{branch1} \\
\commit{63268c1}{some commit} \& \\
};
\connect{63268c1}{b3bd158};
\connect{63268c1}{branch1};
\connect{branch1}{9f9c652};
\end{tikzpicture}

- Rebase `feature` **on top** of `master`: `git rebase master`

\pause

\begin{tikzpicture}[ampersand replacement=\&]
\tikzstyle{commit}=[draw,circle,fill=bg,inner sep=0pt,minimum size=5pt]
\tikzstyle{clabel}=[right,outer sep=1em]
\tikzstyle{every path}=[draw]
\matrix [column sep={1em,between origins},row sep=\lineskip]
{
\commit{48ca048}{Implement new feature [\texttt{feature}]} \\
\commit{b3bd158}{fix unit test [\texttt{master}]} \\
\commit{63268c1}{some commit} \& \\
};
\connect{63268c1}{b3bd158};
\connect{b3bd158}{48ca048};
\end{tikzpicture}

- `master` branch still points to `b3bd158`!
- `feature` branch has now all commits from master in history
- The feauture commit hash has changed to \textcolor{red}{48ca048}!

## {.standout}

Thank you!
