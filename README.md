# RepTemp
LuaLatexのレポートテンプレートです．
`Template`フォルダにベースのファイルを保存しているので，`Report01`，`Report02`等にコピーしながら編集してください．

例）
```bash
 $ cp -r Template Report01
 $ code Report01 # 編集
```


## 環境構築
### Docker
Docker，Docker Composeがあればドキュメントのビルドができます．
環境構築は各自OSに合わせて行ってください．

- [Mac](https://docs.docker.com/desktop/mac/install/)
- [Windows](https://docs.docker.com/desktop/windows/install/)
- [Ubuntu](https://docs.docker.com/engine/install/ubuntu/)
- [Fedora](https://docs.docker.com/engine/install/fedora/)
 
### VSCode + Latex Workshop

これも各自OSに合わせて以下からVSCodeをダウンロードしてください．
[https://code.visualstudio.com/download](https://code.visualstudio.com/download)

Latexのビルド&プレビューに便利な拡張機能をインストールします．
```bash
 $ code --install-extension James-Yu.latex-workshop
```


### Build Template
例としてテンプレートフォルダにてビルドを行います．
```bash
 $ cd Template
 $ docker-compose up -d # コンテン立ち上げ
 $ code . # VSCode起動
```

以上が完了したら VSCodeにて`main.tex`を開き，
- ビルド
    - Linux(Ubuntu, Fedora)
        - `Ctrl + Alt + b` 
    - Mac(
        - `Command + Option + b` 
- プレビュー
    - Linux(Ubuntu, Fedora)
        - `Ctrl + Alt + v` 
    - Mac(
        - `Command + Option + v` 

などが行えるはずです．
