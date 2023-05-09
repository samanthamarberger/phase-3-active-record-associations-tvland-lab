require "pry"
class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        return "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        # binding.pry
        roles = []
        characters = self.characters
        characters.each do |c|
            roles << "#{c.name} - #{c.show.name}"
        end
        return roles.join("\n")
    end
end