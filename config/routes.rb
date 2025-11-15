Rails.application.routes.draw do
  devise_for :admins

  root to: 'top#index' #トップランディングページ

    #get 'apotakumi' => 'top#apotakumi' #エンジランス
    #get 'engilance' => 'top#engilance' #エンジランス
  get 'movies' => 'top#movies' #ムービーズ
  get 'instagram' => 'top#instagram' #インスタグラム
  get 'google' => 'top#google' #インスタグラム
  get 'lp' => 'top#lp' #LPページ
  get 'cost' => 'top#cost' #金属加工
  get 'marketing' => 'top#marketing' #デジタルマーケティング
  get 'human' => 'top#human' #事業内容
  get 'business' => 'top#business' #事業内容
  get 'company' => 'top#company'  #会社概要
  get 'privacy' => 'top#privacy' #プライバシーポリシー
  get 'tcare' => 'top#tcare' #オリジナルマーケティング紹介
  get 'case' => 'top#case' #成功事例
  get 'question' => 'top#question' #ナレッジリスト
  get 'oneday' => 'top#oneday' #求人リスト
  get 'document' => 'top#document' #Okurite資料ダウンロード
  get 'syumatu' => 'top#syumatu' #シューマツ資料ダウンロード
  get 'share' => 'top#share' #社外周知

  get 'whats' => 'top#whats' #アポ匠とは
  get 'original' => 'top#original' #オリジナルマーケティング
  get 'transaction' => 'top#transaction' #料金について
  get 'review' => 'top#review' #成功事例
  get 'flow' => 'top#flow' #HP制作会社失敗事例

  resources :posts
  resources :columns
  resources :jobs
  resources :prefectures

  resources :scripts, only: [:index]

  resources :contracts do
    resources :comments
    resource :script #1:1
    collection do
      post :confirm
    end
    member do
      post :send_mail
      post :send_mail_start #開始日の送信
      get "info" #案内
      get "conclusion"
      get "payment" 
      get "calendar"
      get "start"
    end
  end
  get "contracts/thanks", to: "contracts#thanks"

  get 'script' => 'top#script'
  get 'workers/new' => 'workers#new'
  post 'workers/confirm' => 'workers#confirm'
  post 'workers/thanks' => 'workers#thanks'

  get '/estimates' => 'estimates#index'
  post 'estimates/confirm' => 'estimates#confirm'
  post 'estimates/thanks' => 'estimates#thanks'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/contact' => 'contact#index'
  post '/confirm' => 'contact#confirm'
  post '/thanks' => 'contact#thanks'

  get 'documents/uber' => 'documents#uber'
  post 'documents/uber_d' => 'documents#uber_d'

  get 'inquiries/contact' => 'inquiries#index'
  post 'inquiries/confirm' => 'inquiries#confirm'
  post 'inquiries/thanks' => 'inquiries#thanks'

  post '/download' => 'top#download'

  get 'recruits' => 'recruits#index'
  post 'recruits/confirm' => 'recruits#confirm'
  post 'recruits/thanks' => 'recruits#thanks'

  get '/outsourcings' => 'outsourcings#index'
  post 'outsourcings/confirm' => 'outsourcings#confirm'
  post 'outsourcings/thanks' => 'outsourcings#thanks'

  get '*path', controller: 'application', action: 'render_404'
end
