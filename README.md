全て解決した。
よかった〜〜〜

結局解決しなかった一覧
* 削除確認メッセージが機能しない　⇨<td><%= link_to "Destroy", book_path(book), method: :delete, data: { confirm: 'Are you sure？' } %></td> & resources :books 
* バリデーション設定(エラーメッセージ)がうまく機能しない
* update、destroy、create時に緑色で成功した的な文字が出せるようにしないといけない ⇨contlooerに→flash[:キー名] = "表示させたいメッセージ" 、ビューに⇨<%= flash[:キー名] %>

解説ほしい系
* 削除エラーメッセージの表示の仕方が理解できない。コントローラ記述、resourcesを使わない場合はどう記述するのか。 =>これは聞いていいかも
* エラーメッセージの位置調整ができない、line-height,marginらへんだと思うのだが、、、 =>これは聞いていいかも