require_relative 'contact'
require_relative 'crm'

alpha = Contact.create("Ronnie", "Hoffer", "ronnie.hoffer@gmail.com", "Great trumpet player")
beta = Contact.create("Darryl", "Hoffer", "darryl.hoffer@gmail.com", "Great hockey player")
theta = Contact.create("Straw", "Man", "strawman@purplefuzz.com", "He is made out of straw")

CRM.new