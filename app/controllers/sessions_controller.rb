class SessionsController < ApplicationController

    def logout
        byebug
        @person = Person.find(params[:id])
        
    end
end