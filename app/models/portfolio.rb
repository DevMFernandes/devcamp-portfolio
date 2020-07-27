class Portfolio < ApplicationRecord
    has_many :technologies
    include Placeholder
    validates_presence_of :title, :description, :img, :thumb

    def self.angular
        where(subtitle: "Angular")
    end

    scope :ror, -> { where(subtitle: "Ruby on Rails") }

    after_initialize :set_defaults

    def set_defaults
        self.img ||= Placeholder.image_generator("600", "400")
        self.thumb ||= Placeholder.image_generator("350", "200")
    end
end
