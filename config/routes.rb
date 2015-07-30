Rails.application.routes.draw do
  root to: "top#index"
  resources :words do
    collection do
      get :popular
      get :rnd
    end
  end

  resources :haiku_sets, only: [:show] do
  end

  get "haiku/:hash" => "words#haiku"
  get "tanka/:hash" => "words#tanka"
  get "muri" => "words#muri", as: :muri

  resources :goods do
    collection do
      get "yes/:id" => "goods#yes"
      get "tanka/yes/:id" => "goods#tanka_yes"
    end
  end
  resources :comments

  namespace 'admin' do
    resources :words
    resources :goods do
      collection do
        get :popular
      end
    end
  end

end
