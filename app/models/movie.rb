class Movie < ApplicationRecord
    def info
        puts "Finds info related to #{self.read_attribute(:title)}"
    end
end

