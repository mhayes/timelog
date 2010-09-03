Timelog::Application.routes.draw do
  root :to => 'work_logs#index'
  
  resources :work_logs, :only => [:index, :new, :create, :destroy]
  
  match "report/:start_date/:end_date" => "work_logs#report",
    :constraints => { 
      :start_date => /\d{4}-\d{2}-\d{2}/, 
      :end_date => /\d{4}-\d{2}-\d{2}/
    },
    :as => "report"
  
  match "report/all" => "work_logs#all_report", :as => "all_reports"

end
