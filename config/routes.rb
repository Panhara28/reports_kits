ReportsKits::Engine.routes.draw do
  namespace :reports_kits do
    resources :reports, only: [:index]
    resources :filters, only: [], param: :key do
      member do
        get :autocomplete
      end
    end
  end
end
