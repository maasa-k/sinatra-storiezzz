class DreamsController < ApplicationController

    get '/dreams' do 
        if logged_in? 
            @user = current_user
            @dreams = current_user.dreams

            erb :'/dreams/index'
        end
    end
end