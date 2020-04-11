Rails.application.routes.draw do
  get 'login/index'
  get 'login', to: 'login#index'
  post 'login/index'
  post 'login', to: 'login#index'

  get 'student_infos/index'
  get 'student_infos', to: 'student_infos#index'
  get 'student_infos/add'
  post 'student_infos/add', to: 'student_infos#create'  

  get 'japaneses/index'
  get 'japaneses', to: 'japaneses#index'  
  get 'japaneses/add/:id', to:'japaneses#add'
  post 'japaneses/create', to:'japaneses#create'

  get 'englishes/index'
  get 'englishes', to: 'englishes#index'
  get 'englishes/add/:id', to: 'englishes#add'
  post 'englishes/create', to:'englishes#create'
  


  

  
  get 'english_sub_verb/add/:id', to: 'english_sub_verb#add'
  post 'english_sub_verb/create', to: 'english_sub_verb#create'
  
  get 'japanese_sub_verb/add/:id', to: 'japanese_sub_verb#add'
  post 'japanese_sub_verb/create', to: 'japanese_sub_verb#create'
  
  


  get 'end/index'
  get 'end', to: 'end#index'
  
end
