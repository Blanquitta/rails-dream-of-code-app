class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
def require_admin
    if session[:role] != 'admin'
      flash[:alert] = 'You do not have access to that page'
      redirect_to root_path
    end
  end

end

# class ApplicationController < ActionController::Base
#   before_action :require_login

#   private
#     def require_login
#       unless logged_in?
#         flash[:error] = "You must be logged in to access this section"
#         redirect_to new_login_url # halts request cycle
#       end
#     end
# end


