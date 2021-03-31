class SessionsController < ApplicationController

    def logout
        # byebug
        # @session = Session.find(id: session[:person_id])
        # byebug
        session.delete(:person_id)
        redirect_back fallback_location: advertisements_path
    end
end