class UserController < ApplicationController
  before_filter :authenticate_user!
  respond_to :html, :xml, :json
  
  def index
    @users = User.find(:all)
    # job_resultsets = @server_object["jobs "]["jobs"].find("JDID" => params[:id])
    # puts ">>>>>>  TEST #{job_resultsets} <<<<<<<<<"
    # @job = job_resultsets[0]
  end
  
  def new 
    @user = User.new
    respond_with(@user)
  end

  def create
    return if request.get?
    @user = User.create(params[:user])
    if @user.save
      flash[:notice]= "#{@user.email} has been succesfully added in the system"
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end

end
