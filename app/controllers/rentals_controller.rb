class RentalsController < ApplicationController
    def new
        @rental = Rental.new

        @people = Person.all
        @puppies = Puppy.all
        render :new
    end

    def create
        @rental = @current_user.rentals.build(rental_params)
        
        if @rental.valid?
            @rental.save
            redirect_to person_path(@rental.person_id)
        else
            flash[:errors] = @rental.errors.full_messages
            redirect_to new_rental_path
        end
    end

     def destroy
        @rental = Rental.find(params[:id])
        @rental.destroy
        redirect_to person_path(@rental.person_id)
    
    end

    def update
        @rental = Rental.find(params[:id])
        @rental.update(completed:true)
        redirect_to person_path(@rental.person_id)
    end

    private

    def rental_params
        params.require(:rental).permit(:puppy_id, :person_id, :time)
    end

    
end
