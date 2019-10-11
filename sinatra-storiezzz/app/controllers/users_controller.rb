class UsersController < ApplicationController

    get '/signup' do 
        erb :'/users/new'
    end

    post '/users' do
        @user = User.new(params)
        
        if @user.save
            session[:user_id] = @user.id
            redirect "/dreams"
        else
            erb :'/users/new'
        end
    end
end