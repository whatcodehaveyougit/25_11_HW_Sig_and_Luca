require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../students')

class StudentList < MiniTest::Test


	def test_can_get_student_name
		student = Student.new("Sigurd", "E36")
		assert_equal("Sigurd", student.get_student_name())
	end	

	def test_can_get_cohort
		student = Student.new("Sigurd", "E36")
		assert_equal("E36", student.get_student_cohort())
	end	

	def test_update_student_name
		student = Student.new("Sigurd", "E36")
		assert_equal("Luca", student.update_student_name())
	end	

	def test_the_student_is_alive_aka_the_doctor_method
		student = Student.new("Sigurd", "E36")
		assert_equal("I can talk, YOLO!" , student.the_student_is_alive())
	end	

	def test_students_favourite_language
		student = Student.new("Sigurd", "E36")
		assert_equal("My favourite language is Ruby", student.students_favourite_language("Ruby"))
	end	



# ======================= PART B =======================================



def test_get_team_name
	team = A_team_students.new("A_team", ["john", "jim", "jonathan"], "Mark", 0)
	assert_equal("A_team", team.get_team_name)
end

def test_get_players
	team = A_team_students.new("A_team", ["john", "jim", "jonathan"], "Mark", 0)
	assert_equal(["john", "jim", "jonathan"], team.get_players)
end

def test_get_coach_name
	team = A_team_students.new("A_team", ["john", "jim", "jonathan"], "Mark", 0)
	assert_equal("Mark", team.get_coach_name)
end

def test_add_player_to_array
	team = A_team_students.new("A_team", ["john", "jim", "jonathan"], "Mark", 0)
	assert_equal(3, team.player_names.length)
end

def test_check_player_is_in_team
	team = A_team_students.new("A_team", ["john", "jim", "jonathan"], "Mark", 0)
	assert_equal(true, team.check_to_see_if_player_is_in_team("jim"))
end

def test_updating_points
	team = A_team_students.new("A_team", ["john", "jim", "jonathan"], "Mark", 0)
	assert_equal(3, team.updating_points("win"))
end	

# ======================= EXTENSION ============================

def test_get_title_of_book
	result = get_title_of_book(@book_one)
	assert_equal("shining", result)
end




end
