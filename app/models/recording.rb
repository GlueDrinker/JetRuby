class Recording < ApplicationRecord
	validates :name, presence: true
	validates :surname, presence: true
	validates :patronymic, presence: true
	validates :phone, presence: true
	validates :email, presence: true
	validates :weight, presence: true
	validates :length, presence: true
	validates :width, presence: true
	validates :height, presence: true
	validates :origin, presence: true
	validates :destination, presence: true
end
