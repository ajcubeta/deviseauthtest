class UserController < ApplicationController
  before_filter :authenticate_user!
  respond_to :html, :xml, :json
  
  def index
    @users = User.find(:all)
  end
  
  def new 
    @user = User.new
    respond_with(@user)
  end

  def create
    @user = User.new
    return if request.get?
    unless params[:email].blank?
      @user = User.create(params[:user])
      if @user.save
        flash[:notice]= "#{@user.email} has been succesfully added in the system"
        redirect_to :action => index
      else
        render
      end
    end
  end

end
