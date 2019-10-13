class DreamsController < ApplicationController

    get '/dreams' do 
        if logged_in? 
            @user = current_user
            @dreams = current_user.dreams

            erb :'/dreams/index'
        else
            redirect '/signup'
        end
    end

    post '/dreams' do
        @dream = current_user.dreams.build(params)

        if @dream.save
            redirect "/dreams"
        else
            erb :'/dreams/new'
        end
    end

    get '/dreams/all' do 
        if logged_in? 
            @dreams = Dream.all 
            erb :'/dreams/index' 
        else
            redirect "/signup"
        end
    end

    get '/dreams/new' do 
        @users = User.all 
        erb :'/dreams/new'
    end

    get '/dreams/:id' do 
        @dream = Dream.find_by_id(params[:id])

        if @dream
            erb :'/dreams/show'
        else
            redirect "/dreams"
        end
    end

    get '/dreams/category' do 
        @dream = Dream.where(params[category: selection)

        if @dream
            erb :'/dreams/category'
        else
            redirect "/dreams"
        end
    end

    post '/dreams/category' do 
        erb :'/dreams/index'
    end

    get '/dreams/:id/edit' do 
        dream_user = Dream.find_by_id(params[:id]).user

        if dream_user.id == current_user.id 
            @dream = Dream.find_by_id(params[:id])
            erb :'/dreams/edit'
        else 
            flash[:err] = "OOPS! You can only make changes to your own Storiezzz."
            redirect "/dreams"
        end
    end

    patch '/dreams/:id' do 
        dream_user = Dream.find_by_id(params[:id]).user

        if dream_user.id == current_user.id 
            @dream = Dream.find_by_id(params[:id])
            params.delete("_method")
            if @dream.update(params)
                redirect "/dreams/#{@dream.id}"
            else
                flash[:err] = "OOPS! You can only make changes to your own Storiezzz."
                redirect "/dreams/#{@dream.id}/edit"
            end
        else
            erb :'/dreams/index'
        end
    end

    delete '/dreams/:id' do 
        dream_user = Dream.find_by_id(params[:id]).user 

        if dream_user.id == current_user.id
            Dream.destroy(params[:id])
            redirect :'/dreams'
        else
            flash[:err] = "OOPS! You can only make changes to your own Storiezzz."
            redirect "/dreams"
        end 
    end
end