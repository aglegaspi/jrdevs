class HomeController < ApplicationController

    def index
        @admin = current_admin
        @events = Event.all
        @first_event = @events.where("date >= ?", Time.now).order(date: :asc).first

    end

end
