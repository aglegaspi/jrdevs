class EventsController < ApplicationController

    def index
        @events = Event.all
        @guests = Guest.all;

    end

    def create
        @event = Event.create(event_params)

        if @event.valid?
            flash[:success] = 'Yas...The event has been added!'
            redirect_to students_path
        end


        if @event.invalid?
            flash[:error] = 'Uh you missed something.'
            render :new
        end
        redirect_to events_path
    end

    def new
        @event = Event.new
    end

    def edit
        @event = Event.find(params[:id])
    end

    def show
        @event = Event.find(params[:id])
    end

    def update
        event = Event.find(params[:id])
        event.update(event_params)

        redirect_to events_path
    end

    def destroy
        Event.destroy(params[:id])
        # we are responding with to the delete with jason
        # render json: {status: 'success', message: 'Event was removed!'}
    end

    private
    def event_params
        #will return somethine that looks like this:
        #{name: '...', :description: '...'}
        params.require(:event).permit(:title,:date,:start_time,:end_time,:description)
    end

end
