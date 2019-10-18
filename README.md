# RepTemp
タイトルが小さめのすごいレポートテンプレートです．[プレビュー](https://github.com/m12watanabe1a/RepTemp/blob/master/report.pdf)

## セットアップ
以下の``` assets/info.tex ```項目を自分に合わせてセットアップしてください．

```tex
% 名前
\newcommand{\myname}{
    レポート・トテモ・スキー
}

% 学籍番号
\newcommand{\myid}{
    00-0000
}
```

## 総合タイトルの設定
表紙の総合タイトルは以下から変更できます．

```tex
% Title
\title{総合タイトル} %ここ
\date{\today}
\author{
    \small{\myid} \\
    \myname\thanks{\mymail}
}
```

## レポートを書く

以下を編集してレポートを書きます．

```tex
  
\documentclass[uplatex, 11pt,a4j, titlepage]{jsarticle}

\usepackage{assets/info}
\usepackage{assets/preamble}

\begin{document}
\title{タイトル}{レポート課題}

%% ここにレポートの内容を書く

\end{document}

```

## コンパイル
[.latexmk](https://github.com/m12watanabe1a/RepTemp/blob/master/.latexmkrc)ファイルを追加したので以下のコマンドでビルドできます．

```bash
$latexmk report.tex
```

### VS Codeのレシピ
VS Codeで[LaTeX Workshop](https://github.com/James-Yu/LaTeX-Workshop)を使用している場合のsettings.jsonの設定は以下を参考にしてください．
```json
    // LaTeX Setup
    "latex-workshop.latex.recipes": [
        {  
            "name": "latexmk",  
            "tools": [  
              "latexmk"  
            ]  
        },
    ],
    "latex-workshop.latex.tools": [
        {
            "name": "latexmk",
            "command": "latexmk",
        },
    ],
    "latex-workshop.latex.clean.fileTypes": [
        "*.aux", "*.bbl", "*.blg", "*.idx", "*.ind", "*.lof", "*.lot", "*.out", "*.toc", "*.acn", "*.acr", "*.alg", "*.glg", "*.glo", "*.gls", "*.ist", "*.fls", "*.log", "*.fdb_latexmk", "*.synctex.gz",
        "_minted*", "*.nav", "*.snm", "*.vrb",
        "*.run.xml","*.dvi","*.bcf"
    ],
    "latex-workshop.view.pdf.viewer": "tab",
    "latex-workshop.latex.autoClean.run": "onFailed",
```
