class UsersController < ApplicationController

    get '/signup' do 
        erb :'/users/new'
    end

    post '/users' do
        @user = User.new(params)
        
        if @user.save
            session[:user_id] = @user.user_id
            redirect "/dreams"
        else
            erb :'/users/new'
        end
    end
end