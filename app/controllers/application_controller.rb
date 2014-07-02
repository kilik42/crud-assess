class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  def show
    @user = User.find_by_id(params['id'])
    if @user == nil
      redirect_to '/user_form' 
    else
    render 'show'
    end
  end
  
  def new
    
    
  end 
  
  def create
    u = User.new
    u.caption = params['caption']
    u.url = params['url']
    u.advice = params['advice']
    u.name = params['name']
    u.save
    redirect_to "/user/#{u.id}"
  end
  
  def edit
    @user = User.find_by_id(params['id']) 
    if @user == nil
      redirect_to '/user_form' 
    else
    render 'show'
    end
    
  end
  
  def  update  
    u = User.find_by_id(params['id'])
    u.caption = params['caption']
    u.advice = params['advice']
    u.name = params['name']
    u.url = params['url'] 
    u.save
    redirect_to "/user/#{u.id}"
  end
  
  def destroy
    u = User.find_by_id(params['id'])
    u.destroy    
  end
  
  
  
end
