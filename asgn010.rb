require_relative 'contact'
require_relative 'crm'

alpha = Contact.create("Ronnie", "Hoffer", "ronnie.hoffer@gmail.com", "Trumpet player")
beta = Contact.create("Straw", "Man", "strawman@purplefuzz.com", "He is made out of straw")

CRM.new