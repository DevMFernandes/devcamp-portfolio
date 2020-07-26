class Portfolio < ApplicationRecord
    validates_presence_of :title, :description, :img, :thumb
end
