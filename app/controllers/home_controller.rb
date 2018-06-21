class HomeController < ApplicationController

    def index

        @events = Event.all
        @first_event = @events.where("date >= ?", Time.now).order(date: :asc).first

    end

end
