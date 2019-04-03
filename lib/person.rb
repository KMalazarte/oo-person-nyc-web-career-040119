require 'pry'

class Person

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def name
    @name
  end

  def bank_account
    @bank_account
  end

  def bank_account=(balance)
    @bank_account = balance
  end

  def happiness
    @happiness
  end

  def happiness=(happiness_index)
    if happiness_index >= 10
      @happiness = 10
    elsif happiness_index <= 0
      @happiness = 0
    else
      @happiness = happiness_index
    end
  end

  def hygiene
    @hygiene
  end

  def hygiene=(hygiene_index)
    if hygiene_index >= 10
      @hygiene = 10
    elsif hygiene_index <= 0
      @hygiene = 0
    else
      @hygiene = hygiene_index
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    self.hygiene=(@hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @happiness += 2
    self.happiness = @happiness

    @hygiene -= 3
    self.hygiene = @hygiene

    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    #@happiness += 3
    self.happiness = @happiness + 3

    friend.happiness = friend.happiness + 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness = @happiness - 2
      friend.happiness = friend.happiness - 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = @happiness + 1
      friend.happiness = friend.happiness + 1
      "blah blah sun blah rain"
    else
      'blah blah blah blah blah'
    end

  end

end
