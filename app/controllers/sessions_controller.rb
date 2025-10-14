class SessionsController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end
end

def create
  user = User.find_by(username: params[:username])

  if user
    # Success
  else
    flash.now[:alert] = 'Invalid username or password.'
    render :new
  end
end

def create
  user = User.find_by(username: params[:username])

  if user
    if user.authenticate(params[:password])
      # Success

    else
      flash.now[:alert] = 'Invalid username or password.'
      render :new
    end
end

def create
  user = User.find_by(username: params[:username])

  if user
    if user.authenticate(params[:password])
      # Let's set user_id and also role
      session[:user_id] = user.id
      session[:role] = user.role
      redirect_to root_path
    else
      flash.now[:alert] = 'Invalid username or password.'
      render :new
    end
  else
    flash.now[:alert] = 'Invalid username or password.'
    render :new
  end
end
class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user
      if user.authenticate(params[:password])
        # success

      else
        flash.now[:alert] = 'Ivalid username or password.'
        render :new
      end
  
  end

  def destroy
  end
end