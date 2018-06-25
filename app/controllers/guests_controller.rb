class GuestsController < ApplicationController

  def index
      @guests = Guest.all
      @admins = Admin.all
      if admin_signed_in?
        p ' user sign in yes'
      elsif
         p 'user sign out'
      end

  end

  def new
      #   p ' param event id is '
      # # p  params[:event_id]
      session[:event_id] = params[:event_id]
     	@guest = Guest.new
      @events = Event.all
      @eventguests = EventGuest.all
  end
  def create

   @guest = Guest.create(guest_params)
   eventguest = EventGuest.create(event_id: session[:event_id],guest_id: @guest.id )
        if @guest.valid?
              flash[:success] = 'Your guest has been successfully created'
              session[:event_id]=''
              redirect_to guests_path
        else
              flash[:error] = 'Missing information'
              session[:event_id]=''
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

 def destroy
        Guest.destroy(params[:id])
        render json: {status: 'boom success', message: 'guest was successfully deleted'}
 end

 private
 def event_guests_params
        params.require(:event_guest).permit(:event_id, :guest_id)
    end

    def guest_params
  		  params.require(:guest).permit(:first_name, :last_name, :company, :company_website, :email, :linkedin)
  	end


end
