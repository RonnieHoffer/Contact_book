require_relative 'contact'
require_relative 'crm'

alpha = Contact.create("Ronnie", "Hoffer", "ronnie.hoffer@gmail.com", "Trumpet player")
beta = Contact.create("Straw", "Man", "strawman@purplefuzz.com", "He is made out of straw")

first_use = CRM.new
first_use.main_menu

# p alpha.update(1, "Ron")