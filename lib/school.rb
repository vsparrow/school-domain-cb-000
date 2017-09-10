# WORK ON roster

require 'pry'
class School
  attr_accessor #:school
  attr_reader   :school, :roster

  def initialize(school)
    @school=school
    @roster = {}
  end #initialize


  def add_student(student, grade)
    # roster[grade] = []
    if(!roster[grade])
      roster[grade] = []
    end
    roster[grade] << student
  end #add_student

  def grade(grade)
    @roster[grade]
  end #end grade

  def sort
    puts "DID WE GET HERE?"

    @roster.each do |grade,students|

      x= students.sort! do |a,b|
        if a == b
          puts ("****** a == b || a:#{a} || b: #{b} *******")

			    0
			  elsif a < b
          puts ("****** a  < b || a:#{a} || b: #{b} *******")
			    -1

			  elsif a > b
          puts ("****** a  > b || a:#{a} || b: #{b} *******")
			    1

        end #if
      end #sort.do
      puts "#{x.inspect}"
    end #each
  end #sort

end #class

school=School.new("Bayside")
school.add_student("Bart Simpson",9)

school.add_student("Avi Flombaum",10)
school.add_student("Jeff Baird",10)
school.add_student("Homer Simpson",9)

school.sort

# binding.pry
