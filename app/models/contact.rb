class Contact < ActiveRecord::Base
	# Validation
	# Associations
	# callbacks
	# sql quires
	validates :name, :email, :cell, :suject, :presence => true
	#validates :email, format: { with: /[a-z0-9._]*(@){1}[a-z0-9]*(\.)[a-z]{3}/,
    #message: "Enter correct format" }, uniqueness: true
    validates :cell, numericality: { only_integer: true }, length: { is: 10 }

end
