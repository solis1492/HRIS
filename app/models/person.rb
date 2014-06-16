class Person < ActiveRecord::Base
	has_many :tests
	has_many :contacts
	has_many :universities
	has_many :notes
	has_many :colleges
	has_many :callcenters
	has_many :residences
	has_many :sources

end
