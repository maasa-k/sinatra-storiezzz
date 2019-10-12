class SessionsController < ApplicationController

    get '/login' do 
        erb :'/sessions/login'
    end

    post '/sessions' do 
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
            session[:user_id] = user.id 
            redirect '/dreams/index'
        else
            redirect '/login'
        end
    end
end