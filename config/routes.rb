Timelog::Application.routes.draw do
  root :to => 'work_logs#index'
  
  resources :work_logs
end
