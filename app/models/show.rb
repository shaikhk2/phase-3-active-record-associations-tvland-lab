class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        actors.map  do |each_actor| 
            "#{each_actor.first_name} #{each_actor.last_name}"
        end
    end
end