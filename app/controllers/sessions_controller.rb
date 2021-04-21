class SessionsController < ApplicationController

    def new
    end

    def create
        # user = User.find_by(name: params[:name])
        if params[:name] != '' && params[:name]
            session[:name] = params[:name]
            redirect_to root_path
        else
            redirect_to login_path
        end
    end

    def destroy
        session.destroy
        session[:name] = nil
    end

end
