class PeopleController < ApplicationController


    def show
        @person = Person.find(params[:id])
    end


    # def destroy
    #     @person.rental.id.destroy
    #     redirect_to person_path(@person)
    # end
end
