class Student

# Contructor Method!
  def initialize(name, cohort)
    @student_name = name
   	@cohort = cohort
  end

	def get_student_name()
		return @student_name
	end	

	def get_student_cohort()
		return @cohort
	end	

	def update_student_name()
		@student_name = "Luca"
		return @student_name
	end

	def the_student_is_alive()
		return "I can talk, YOLO!"
	end

	def students_favourite_language(favourite_language)
		return "My favourite language is " + favourite_language
	end	
end

# PART B =============================================================

class A_team_students

	attr_reader :team_name, :player_names, :coach, :points
	attr_writer :team_name, :player_names, :coach, :points

	def initialize(team_name, player_names, coach, points)
		@team_name = team_name
		@player_names = player_names
		@coach = coach
		@points = points
	end
	

	def get_team_name
		return @team_name
	end	

	def get_players
		return @player_names
	end	

	def get_coach_name
		return @coach
	end	

	def add_player_to_array(new_player_name)
		new_array = @player_names.push("Mike")
		return new_array
	end	

	def check_to_see_if_player_is_in_team(player_name)
		for player in @player_names
			if player == player_name
				return true
			end	
		end
		return false	
	end	

	def updating_points(result)
		if result == "win"
			return @points += 3
		elsif result == "draw"
			return @points += 1
		else 
			return @points
		end		
	end	
end

# ======================= EXTENSION =================

class library

@book_one = {
	title: "shining"
	rental_details: {
		student_name: "Luca"
		date: "25/11/19"
	}
@book_two = {
	title: "lord_of_rings"
	rental_details: {
		student_name: "Luca"
		date: "25/11/19"
	}	
@book_three = {
	title: "lord_of_rings"
	rental_details: {
		student_name: "Luca"
		date: "5/11/19"
	}
@book_four = {
	title: "harry potter"
	rental_details: {
		student_name: "Luca"
		date: "2/11/19"
	}		
}

@books = [@book_one, @book_two, @book_three, @book_four]
	

def get_title_of_book(book)
	return book[:title]
end	




































