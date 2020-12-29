Rails.application.routes.draw do
  get "users" => "users#index"#投稿一覧ページ
  get "users/new" => "users#new"#新規投稿ページ
  post "users" => "users#create"#新規作成処理
  post "users/:id/edit" => "users#edit"#編集ページ
  patch 'users/:id' => 'users#update'#編集処理
  delete 'users/:id' => 'users#destroy'#削除処理
end
