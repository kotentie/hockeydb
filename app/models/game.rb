class Game < ActiveRecord::Base
  attr_accessible :date, :home, :homehva, :hscore, :number, :visitor, :visitorhva, :vscore
end
