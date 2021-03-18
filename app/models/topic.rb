class Topic < ApplicationRecord
    belongs_to :user
    validates :title, length: { maximum: 20 }, presence: true
    validates :text, length: { maximum: 100 }, presence: true
end
