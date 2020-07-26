class Portfolio < ApplicationRecord
    validates_presence_of :title, :description, :img, :thumb

    def self.angular
        where(subtitle: "Angular")
    end

    scope :ror, -> { where(subtitle: "Ruby on Rails") }

    after_initialize :set_defaults

    def set_defaults
        self.img ||= "https://placehold.it/600x400"
        self.thumb ||= "https://placehold.it/350x200"
    end
end
