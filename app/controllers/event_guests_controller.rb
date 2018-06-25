class EventGuestsController < ApplicationController

    def new
        @eventguest = EventGuest.new
    end

    def create
        @eventguest = EventGuest.create

        if @eventguest.valid?
            flash[:success] = 'You Are Registered!'
            redirect_to events_path
        end

        if @event.invalid?
            flash[:error] = 'Uh you missed something.'
            render :new
        end
        redirect_to events_path
    end
    
    def edit
        @eventguest = EventGuest.find(params[:id])
    end

    def update
        eventguest = Event.find(params[:id])
        eventguest.update(event_params)

        redirect_to events_path
    end

    def destroy
        Event.destroy(params[:id])
        # we are responding with to the delete with jason
        # render json: {status: 'success', message: 'Event was removed!'}
    end

end
