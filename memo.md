## デフォルト

### ファイル操作

モード | キー | 内容
--- | --- | ---
コマンド | :e .      | ファイラー(netrw)を開く
netrw    | d         | ディレクトリ作成
netrw    | D         | ファイル削除
netrw    | mf        | ファイルをマーク
netrw    | mu        | すべてのマークを解除
netrw    | mc        | マークしたファイルをコピー
netrw    | mm        | マークしたファイルを移動
コマンド | :find {filename} | ファイルを開く。\<tab\>でファイル名補完

### 移動

モード | キー | 内容
--- | --- | ---
ノーマル   | hjkl         | カーソル移動
ノーマル   | ctrl-f       | ページを進む
ノーマル   | ctrl-b       | ページを戻る
ノーマル   | gg           | ファイルの先頭に移動
ノーマル   | G            | ファイルの最後に移動
ノーマル   | ^            | 行の先頭に移動
ノーマル   | 0            | 行の先頭に移動(インデントを無視)
ノーマル   | $            | 行の最後に移動
ノーマル   | w            | 次の単語の先頭に進む
ノーマル   | b            | 前の単語の先頭に進む
ノーマル   | %            | 対応する括弧に移動(インデントを無視
ノーマル   | ctrl-o       | カーソル移動履歴を戻る
ノーマル   | ctrl-i       | カーソル移動履歴を進む
コマンド   | :{n}         | n行目に移動

### モード

モード | キー | 内容
--- | --- | ---
ノーマル   | v            | ビジュアルモード開始
ノーマル   | V            | ビジュアルラインモード開始
ノーマル   | ctrl-v       | ビジュアル矩形モード開始
ノーマル   | i            | カーソル位置からインサートモード開始
ノーマル   | a            | カーソルの次からインサートモード開始
ノーマル   | A            | 行末からインサートモード開始

### 編集

モード | キー | 内容
--- | --- | ---
ノーマル   | \<\<         | インデント上げ
ノーマル   | \>\>         | インデント下げ
ビジュアル | \<           | 選択範囲のインデント上げ
ビジュアル | \>           | 選択範囲のインデント下げ
ノーマル   | ~            | 大文字小文字変換
ノーマル   | ctrl-a       | インクリメント
ノーマル   | ctrl-x       | デクリメント
ノーマル   | dd           | 行を削除
ノーマル   | yy           | 行をコピー
ノーマル   | diw          | 単語を削除
ノーマル   | di"          | ""内を削除
ノーマル   | ciw          | 単語を置き換え
ノーマル   | ci"          | ""内を置き換え
ノーマル   | yiw          | 単語をコピー
ノーマル   | yi"          | ""内をコピー
ノーマル   | viw          | 単語を選択
ノーマル   | vi"          | ""内を選択
ノーマル   | u            | アンドゥ
ノーマル   | ctrl-r       | リドゥ

### 検索・置換・grep

モード | キー | 内容
--- | --- | ---
ノーマル   | /            | ファイル内検索
ノーマル   | /\\v         | ファイル内検索(正規表現使える)
ノーマル   | *            | カーソル一にある単語を検索
コマンド   | :%s//{置換文字列}/gc | 検索結果を置換する
ノーマル   | cgn          | 検索結果を置き換え
コマンド   | :vim {pattern} \`git ls-files\`\|cw | grep
コマンド   | :cn          | 次のgrep結果を表示
コマンド   | :cp          | 前のgrep結果を表示
コマンド   | :ccl         | quickfixを閉じる

### ウィンドウ/タブ/バッファー操作

モード | キー | 内容
--- | --- | ---
コマンド   | :vs          | 画面を縦に分割する
コマンド   | :sp          | 画面を横に分割する
ノーマル   | ctrl-w hjkl  | 分割したウィンドウの移動
コマンド   | :tabe        | 新しいタブを開く
ノーマル   | gt           | 次のタブに移動
ノーマル   | gT           | 前のタブに移動
コマンド   | :ls          | バッファーの一覧を表示する
コマンド   | :b {name}    | nameのバッファーを開く
コマンド   | :b {n}       | n番のバッファーを開く
コマンド   | :bn          | 次のバッファーを開く
コマンド   | :bp          | 前のバッファーを開く
コマンド   | :%!jq        | ファイル内容をjqして置換

## おすすめカスタムキーマップ

モード | キー | 内容
--- | --- | ---
インサート | jj | ESCと同じ
ノーマル   | \<Space\>w | :wと同じ
ノーマル   | \<Space\>q | :qと同じ
ノーマル   | \<Space\>\<Space\> | ビジュアルラインモード起動
ノーマル   | /          | /\\vと同じ
ノーマル   | #          | 検索結果を置換する

```vim
" キーマップ変更

" leaderを<Space>に設定
let mapleader = "\<Space>"

" <Space>wを押してファイルを保存する
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
" <Space><Space>でビジュアルラインモードに切り替える
nmap <Leader><Leader> V

" INSERTモードから抜けるときにESCの代わりにjjをつかう
inoremap <silent> jj <ESC>

" 検索時にデフォルトでvery magicを有効にする
nnoremap /  /\v

" 検索中の文字を置換する
nnoremap # :%s///gc<left><left><left>
```

