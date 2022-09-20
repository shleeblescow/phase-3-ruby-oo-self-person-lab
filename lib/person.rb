# your code goes here

class Person

    attr_reader :name

    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(new_happy_val)
        if new_happy_val > 10
            @happiness = 10
        elsif new_happy_val < 0
            @happiness = 0
        else
            @happiness = new_happy_val
        end
    end

    def hygiene=(new_hyg_val)
        if new_hyg_val > 10
            @hygiene = 10
        elsif new_hyg_val < 0
            @hygiene = 0
        else
            @hygiene = new_hyg_val
        end
    end

    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if self.hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(hygiene+4)
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene=(hygiene-3)
        self.happiness=(happiness+2)
        '♪ another one bites the dust ♫'
    end

    def call_friend(person)
        person.happiness=(person.happiness+3) 
        self.happiness=(happiness+3)
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        case topic
        when "politics"
            person.happiness=(happiness-2) 
            self.happiness=(happiness-2)
            'blah blah partisan blah lobbyist'
        when "weather"
            person.happiness=(happiness+1) 
            self.happiness=(happiness+1)
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end




end
