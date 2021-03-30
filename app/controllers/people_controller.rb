class PeopleController < ApplicationController

    def show
        @person = Person.find(params[:id])
    end

    def new
        @person = Person.new
    end

    def create
        @person = Person.create(people_params)
        if @person.valid?
            redirect_to person_path(@person)
        else
            flash[:errors] = @person.errors.full_messages
            redirect_to new_person_path
        end
    end

    private

    def people_params
        params.require(:person).permit(:name, :age, :gender, :username, :email)
    end

    # def destroy
    #     @person.rental.id.destroy
    #     redirect_to person_path(@person)
    # end
end
