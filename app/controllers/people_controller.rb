class PeopleController < ApplicationController

    def show
        @person = People.find(params[:id])
    end
end
