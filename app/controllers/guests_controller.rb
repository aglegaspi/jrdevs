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
      @event = Event.find(params[:event_id])
     	@guest = Guest.new
  end

  def create
    bucket =[]
    @boolean = false;
    @match = false;
    p ' Event  is id is '
    # byebug
    p params[:event_id]
    guest = Guest.find_by(email: guest_params[:email])
    # puts guest.id

    if guest

        @multiple= EventGuest.where(guest_id: guest.id)
        i = 0
        while i<@multiple.length
          items = Hash.new()
          items[:date]= @multiple[i].event.date
          items[:time] = @multiple[i].event.start_time
          bucket.push(items)
          # @multiple.each do
          p 'date'
          puts @multiple[i].event.date
          i = i+1
        end

        event_information= Event.find_by(id: params[:event_id].to_i)
        p ' event information start time'
        # p event_information.event.start_time
        p ' event information start date '
        # p event_information.event.date
        p bucket

        i=0


        double_check= EventGuest.find_by(event_id: params[:event_id].to_i)

        # byebug
         if double_check ==  nil

                  bucket.each do |hash|
                  puts 'hash date is'

                  puts hash[:date]
                  if( hash[:date] == event_information.date)
                       if( hash[:time] == event_information.start_time)
                            @match=true;
                        puts ' data values are matches'
                        end
                     end
                 end


                 if @match!=true
                    eventguest = EventGuest.create(event_id: params[:event_id].to_i, guest_id: guest.id )
                    @boolean = true
                  end
        elsif
          @boolean = false
         end

     elsif

          @guest = Guest.create(guest_params)
          eventguest = EventGuest.create(event_id: params[:event_id].to_i,guest_id: @guest.id )
          @boolean = true
     end
          # eventguest = EventGuest.create(event_id: session[:event_id],guest_id: @guest.id )
          # if @guest.valid?

     # if eventguest.valid?
     if @boolean ==true

        flash[:success] = 'Your guest event has been successfully created'
        session[:event_id]=''
        redirect_to guests_path

     else
        flash[:error] = 'Registion Error: cannot be registrar two event at the same time.'
        redirect_to guests_path
        # render :new
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


        # guest.update(guest_params)
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

    def email
       params.require(:guest).permit(:email)
    end
end
