
class EventsStudentsController < ApplicationController

    def new
        @eventstudent = EventsStudent.new   
    end

    def create
        # {event_id: '67'} + {student_id: 33} = {event_id: '67', student_id: 33}
        # you get the event_id from the form, student_id from the params
        @eventstudent = EventsStudent.create(events_student_params.merge(student_id: params[:student_id])) # {event_id: '567', student_id: 66}
        if @eventstudent.valid?
            flash[:success] = 'You Are Registered!'
        else
            flash[:error] = 'Uh you missed something.'
        end
        redirect_to student_path(params[:student_id])
     
    end

    def edit
        @eventstudent = EventsStudent.new
    end

    def update
        @eventstudent = EventsStudent.find(params[:id])
        eventstudent.update(event_params)

        redirect_to students_path
       
    end

    def destroy
        events_student = EventsStudent.find(params[:id])
        events_student.destroy

        redirect_to student_path(events_student.student_id)
    end

    def events_student_params
        #will return somethine that looks like this:
        
        params.require(:events_student).permit(:event_id) #{event_id: '567'}
    end

end
