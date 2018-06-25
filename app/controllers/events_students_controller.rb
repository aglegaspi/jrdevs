
class EventsStudentsController < ApplicationController

    def new
        @eventstudent = EventsStudent.new   
    end

    def create
        @eventstudent = EventsStudent.create
        if @eventstudent.valid?
            flash[:success] = 'You Are Registered!'
            redirect_to students_path
        end

        if @event.invalid?
            flash[:error] = 'Uh you missed something.'
            render :new
        end
        redirect_to students_path

     
    end

    def edit
        @eventstudent = EventsStudent.find(params[:id])
    end

    def update
        @eventstudent = EventsStudent.find(params[:id])
        eventstudent.update(event_params)

        redirect_to students_path
       
    end

    def destroy
        Event.destroy(params[:id])
        # we are responding with to the delete with jason
        # render json: {status: 'success', message: 'Event was removed!'}
    end

    def event_params
        #will return somethine that looks like this:
        #{name: '...', :description: '...'}
        params.require(:event).permit(:title,:date,:start_time,:end_time,:description)
    end

end
