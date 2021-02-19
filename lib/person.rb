# your code goes here
require 'pry'
class Person
    attr_accessor :bank_account, :happiness
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25 
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        if value > 10
            @happiness = 10
        elsif value < 0
            @happiness = 0
        else
            @happiness = value
        end
    end

    def hygiene=(value)
        if value > 10
            @hygiene = 10
        elsif value < 0
            @hygiene = 0
        else
            @hygiene = value
        end
    end
    
    def happy?
        if @happiness > 7 
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
           return true
        end
        false
    end

    def get_paid(salary)
        @bank_account+= salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene= @hygiene + 4 #do we have to call the instance class again or cal we just do +=4?
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3 #does it have to be self.hygiene = @hygiene -3?
        self.happiness +=2
        return "♪ another one bites the dust ♫"
    end

    def call_friend (friend)
        self.happiness+= 3
        friend.happiness += 3
         "Hi #{friend.name}! It's #{self.name}. How are you?" #why won't just using friend work instead of friend.name?
        # is @name the same as self.name?
        #binding.pry
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -=2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness +=1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end


end

