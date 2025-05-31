Rails.application.routes.draw do
  resources :users, only: [ :index ]
  resources :block2_survey_responses, except: [ :destroy ]
  resources :survey_responses, only: [ :index, :show, :new, :create, :edit, :update ]
  resource :session
  resources :passwords, param: :token
  get "home/index"
  get "bloque1", to: "home#bloque1"
  get "bloque2", to: "home#bloque2"
# Para Bloque 1
get "mision", to: "home#mision"
get "vision", to: "home#vision"
get "valores", to: "home#valores"
get "preguntas_b1", to: "home#preguntas_b1"

# Para Bloque 2
get "universidad", to: "home#universidad"
get "transformacion", to: "home#transformacion"
get "desigualdades", to: "home#desigualdades"
get "vinculacion", to: "home#vinculacion"
get "gobernanza", to: "home#gobernanza"
get "infraestructura", to: "home#infraestructura"
get "gestion_datos", to: "home#gestion_datos"
get "preguntas_b2", to: "home#preguntas_b2"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "home#index"
end
