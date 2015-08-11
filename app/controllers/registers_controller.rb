class RegistersController < ApplicationController
  skip_before_action :require_login, :only => [:new, :create, :login, :allow_login ]
  def index
     @user=Register.paginate(:page => params[:page], :per_page => 5)
  end

  def new
    @user=Register.new
    @user.build_image
  end

  def create
    @user = Register.new(user_params)
   if @user.save
    session[:user_id]=@user.id
   redirect_to :action=>"index"
   flash[:notice] ="user Successfuly created"
   else

      render "new"
      flash[:notice] ="user Failed to create"
    end
  
  end

  def show
  end

  def login
    @user=Register.new
  end
  def allow_login
    @user=Register.validate_credential(params[:user][:email],params[:user][:password])
    if @user
      session[:user_id]=@user.id
       redirect_to :action=>"index"
     else
      redirect_to root_path
    end
  end
  def destroy_session
     session[:user_id]=nil
     redirect_to root_path
  end
  private
  def user_params
    params.require(:user).permit!
  end
end
