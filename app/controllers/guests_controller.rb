class GuestsController < ApplicationController

  def index

      @guests = Guest.all;
  end

  def new
     	@guest = Guest.new
  end



  def create
    		@guest = Guest.create(guest_params)
        if @guest.valid?
              flash[:success] = 'Your guest has been successfully created'
              redirect_to guests_path
        else
              flash[:error] = 'Missing information'
              render :new
        end

  end
 private
  def guest_params
		params.require(:guest).permit(:first_name, :last_name, :company,
                                  :company_website, :email, :linkedin)
	end



end
