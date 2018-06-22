class GuestsController < ApplicationController

  def index
      @guests = Guest.all;
  end

  def new
     	@guest = Guest.new
      @events = Event.all
      @eventguests = EventGuest.all
  end

  def create
    		@guest = Guest.create(guest_params)
 
        eventguest = EventGuest.create(event_id: params[:event_id],guest_id: @guest.id )
        if @guest.valid?
              flash[:success] = 'Your guest has been successfully created'
              redirect_to guests_path
        else
              flash[:error] = 'Missing information'
              render :new
        end
  end

  def show

      @guest_show = Guest.find(params[:id])

  end
  def edit

      @guest = Guest.find(params[:id])

  end

  def update
           guest = Guest.find(params[:id])
           guest.update(guest_params)
           redirect_to guests_path

      end


  private

    def event_guests_params
        params.require(:event_guest).permit(:event_id, :guest_id)
    end

    def guest_params
  		params.require(:guest).permit(:first_name, :last_name, :company,
                                    :company_website, :email, :linkedin)
  	end



end
