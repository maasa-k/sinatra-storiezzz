require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "password_security"
    use Rack::Flash, :sweep => true
  end

  get "/" do
    erb :welcome
  end

  helpers do 
    def logged_in?
      !!session[:user_id]
    end

    def current_user
      @user ||= User.find_by_id(session[:user_id])
    end

    def authenticate
      redirect '/signup' if !logged_in?
    end

    def authorize(resource)
      authenticate 
      if resource.user != current_user
        flash[:error] = "OOPS! You can only make changes to your own Storiezzz."
        redirect '/dreams'
      end
    end
  end

end
