
require "pry"

class School

	attr_reader :name, :roster
	
	def initialize(name_school)
		@name_school = name_school
		@roster = {}
	end

	# reader method the same what attr_reader :roster
	# def roster
	#     @roster
	# end 

	# def add_student(student_name, grade)
	# 	if @roster[@grade]
	# 		@roster[@grade] << student_name  
	# 	else 
	# 		@roster[@grade] =[]   
	# 		@roster[grade] << student_name
	# 	end 
	# end
	
	def add_student(student_name, grade)
        if !@roster[grade]
            @roster[grade] = [] 
        end
		@roster[grade] << student_name
	end
	
	def grade(grade)
		@roster[grade]
    end 
    
    def sort
        roster = @roster.each {|k,v| @roster[k] = v.sort}
	end 
	
end 

# binding.pry
	
# def sort
#     new_roster = {}
#     @roster.each do |k, v| 
#         a = @roster[k] = v.sort
#         new_roster[k] = v.sort
#         end
#         new_roster
# end


# sort method:
# should I define the variable for that statement? working without
# why map does not work here? map only work for array? nested array


# school = School.new("Bayside High School")
# school.add_student("AC Slater", 9)
# school.add_student("Kelly Kapowski", 10)
# school.add_student("Screech", 11)