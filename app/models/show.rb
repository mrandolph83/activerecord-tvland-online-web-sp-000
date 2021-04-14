require 'pry'
class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network
    has_many :actors, through: :characters 

    def actors_list
        character_list = []
        self.characters.each do |character|
        character_list << character.actor 
        # binding.pry
        end
        full_names = []
        character_list.each do |actor|
        full_names << "#{actor.first_name} #{actor.last_name}"
        end
        full_names
    end
  

end