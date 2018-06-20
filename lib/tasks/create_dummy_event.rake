# allow you to create multiple tasks under the same category
namespace :dummy do
    task create_events: :environment do

        # this turns i into an integer do to the times method
        10.times do |i|

            Event.create(
                title: i.to_s * 4,
                date: 20180710,
                start_time: nil,
                end_time: nil,
                description: "sei april 2018 show of full stack students"
            )
        end
    end
end