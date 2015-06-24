require_relative "entry.rb"

class AddressBook
    attr_accessor :entries
    
    def initialize
        @entries = []
    end
    
    def add_entry(name, phone, email)
        
        index = 0
        @entries.each do |entry|
            
            if name < entry.name
                break
            end
            index += 1
        end
        
        @entries.insert(index, Entry.new(name, phone, email))
        
    end
    
    def get_entry(number)
        
        if number < @entries.length
            index = number - 1
            @entries[index]
        end
    end

end