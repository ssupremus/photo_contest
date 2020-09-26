Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    devise_for :users, controllers: {
      sessions: 'users/sessions'
    }

    resource :index
    root 'index#show'
  end
end
