class Person
	attr_accessor :bank_account, :happiness, :hygiene

	attr_reader :name

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end



	def happiness
		if @happiness < 0
			@happiness = 0
		elsif @happiness > 10
			@happiness = 10
		else
		end
		@happiness
	end

	# def hapiness=(amount)
	# 	@happiness += amount
	# 	if @happiness < 0
	# 		@happiness = 0
	# 	elsif @happiness > 10
	# 		@happiness = 10
	# 	else
	# 	end
	# 	@happiness
	# end

	def hygiene
		if @hygiene < 0
			@hygiene = 0
		elsif @hygiene > 10
			@hygiene = 10
		else
		end
		@hygiene
	end

	# def hygiene=(amount)
	# 	@hygiene += amount
	# 	if @hygiene < 0
	# 		@hygiene = 0
	# 	elsif @hygiene > 10
	# 		@hygiene = 10
	# 	else
	# 	end
	# 	@hygiene
	# end

	def clean?
		if @hygiene > 7
			return true
		else
			return false
		end
	end
	
	def happy?
		if @happiness > 7
			return true
		else
			return false
		end
	end

	def get_paid(salary)
		@bank_account += salary
		"all about the benjamins"
	end

	def take_bath
		self.hygiene += 4
		
		# modify_hygiene(4)
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		modify_happiness(2, self)
		self.hygiene-=3
		"♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		modify_happiness(3, self)
		modify_happiness(3, friend)
		"Hi #{friend.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(person, conversation_topic)
		if conversation_topic == "politics"
			modify_happiness(-2, self)
			modify_happiness(-2, person)
			"blah blah partisan blah lobbyist"
		elsif conversation_topic == "weather"
			modify_happiness(1, self)
			modify_happiness(1, person)
			"blah blah sun blah rain"
		else 
			"blah blah blah blah blah"
		end
	end

	private 

	def modify_happiness(amount, person)
		person.happiness += amount

		if person.happiness > 10
			person.happiness = 10
		elsif person.happiness < 0
			person.happiness = 0
		else
		end
	end

	def modify_hygiene(amount)
		
		@hygiene += amount

		if @hygiene > 10
			@hygiene = 10
		elsif @hygiene < 0
			@hygiene = 0
		else
		end
	end




end


