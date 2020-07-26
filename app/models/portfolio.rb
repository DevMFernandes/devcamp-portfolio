class Portfolio < ApplicationRecord
    validates_presence_of :title, :description, :img, :thumb

    def self.angular
        where(subtitle: "Angular")
    end

    scope :ror, -> { where(subtitle: "Ruby on Rails") }
end
