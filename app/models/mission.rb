class Mission < ApplicationRecord
  validates_presence_of :title, :time_in_space
  has_many :astronauts
  has_many :astronaut_missions

  def self.sort_alphabet
    order(:title)
  end
  
end
