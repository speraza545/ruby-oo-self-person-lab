# your code goes here
class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(number)
        @happiness = number
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else
           @happiness
        end
    end

    def hygiene=(number)
        @hygiene = number
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        else
            @hygiene
        end
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        new_hygiene = @hygiene + 4
        self.hygiene = new_hygiene
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        new_happiness = @happiness + 2
        self.happiness = new_happiness
        new_hygiene = @hygiene - 3
        self.hygiene = new_hygiene
        return "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        new_happiness = @happiness + 3
        self.happiness = new_happiness
        friend_happiness = person.happiness + 3
        person.happiness = friend_happiness
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            new_happiness = @happiness - 2
            self.happiness = new_happiness
            friend_happiness = person.happiness - 2
            person.happiness = friend_happiness
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            new_happiness = @happiness + 1
            self.happiness = new_happiness
            friend_happiness = person.happiness + 1
            person.happiness = friend_happiness
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end