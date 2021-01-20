class Contact

  @@contacts = []
  @@id = 1

  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id += 1
  end


  attr_reader :id
  attr_accessor :first_name, :last_name, :email, :note


  # This method should call the initializer, 
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact
  end


  # This method should return all of the existing contacts
  def self.all
    return @@contacts
  end


  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    @@contacts.each do |contact|
      if contact.id == id
        return contact
      end
    end
  end


  # This method should allow you to specify 
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  # NOTE:  This method should take in two arguements (e.g., "First Name" and "Ronnie")
  def update(attribute, new_value)
    case attribute
    when 1 then @first_name = new_value
    when 2 then @last_name = new_value
    when 3 then @email = new_value
    when 4 then @note = new_value
    end
    return self
  end


  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  # NOTE:  This method should take in two arguements (e.g., "First Name" and "Ronnie")
  def self.find_by(attribute, value)
    
    case attribute
      when 1 then
      @@contacts.each do |contact|
        if contact.first_name == value
          return contact
        else
          return nil
        end
      end

    when 2 then
      @@contacts.each do |contact|
        if contact.last_name == value
          return contact
        else
          return nil
        end
      end

    when 3 then
      @@contacts.each do |contact|
        if contact.email == value
          return contact
        else
          return nil
        end
      end

    when 4 then
      @@contacts.each do |contact|
        if contact.note == value
          return contact
        else
          return nil
        end
      end

    else return nil

    end
  end


  # This method should delete all of the contacts
  def self.delete_all
    # @@contacts = []
    @@contacts.clear
  end


  def full_name
    return "#{@first_name} #{@last_name}"
  end


  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete
    @@contacts.delete(self)
  end

  # Feel free to add other methods here, if you need them.
  
end