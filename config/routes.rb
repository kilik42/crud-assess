Rails.application.routes.draw do
 
 
  
  get '/user_form' =>  'application#new'
  get '/create_user' =>  'application#create'
  
  
   get '/user/:id' => 'application#show'
  
  
  
  get '/user/:id/edit'  =>  'application#edit'
  get '/update_user/:id' => 'application#update'
  
  
  
  get '/user/:id/destroy'  =>  'application#destroy'
  
end
