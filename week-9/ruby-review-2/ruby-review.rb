# OO Basics: Student


# I worked on this challenge [with: Lyudmila Arinich].
# This challenge took me [#] hours.


# Pseudocode
# set accessor symbol equal to an instance variable
# create student objects
# create array made up of student objects


# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end

  def average
    sum = 0
    @scores.each do |value|
      sum += value
    end
    @avg = sum/@scores.length
  end

  def letter_grade
    if @avg >= 90 && @avg <= 100
      return "A"
    elsif @avg >= 80 && @avg < 90
      return "B"
    elsif @avg >= 70 && @avg < 80
      return "C"
    elsif @avg >= 60 && @avg < 70
      return "D"
    else
      return "F"
    end
  end

end


def linear_search(array, name)
    array.each_index do |index|
      answer = -1
      if array[index].first_name == name
        answer = index
      end
      return answer
    end
  end



def binary_search(array, name)
  array.sort_by! {|letter| letter.first_name}
  answer = -1


#   middle = (array.length/2).floor + 1
#   if array[middle].first_name == name
#     return middle
#   else



  lower = -1
  upper = array.count
  mid = (lower + upper) / 2
    if upper == lower + 1
      return nil
      if name == array[mid].first_name
        return mid
        if name < array[mid].first_name
          upper = mid
        else
          lower = mid
        end
      end
    end
# p array
  array.each_index do |index|
    if array[index].first_name == name
      answer = index
    end
    # p answer
    return answer
  end
end


student1 = Student.new("Alex",[100,100,100,0,100])
student2 = Student.new("Sarah",[90,80,80,70,100])
student3 = Student.new("Frank",[80,100,100,90,100])
student4 = Student.new("Anna",[100,90,90,100,100])
student5 = Student.new("Sam",[90,80,50,70,100])

students = [student1, student2, student3, student4, student5]


p binary_search(students, "Alex")









# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

# Additional Tests 3:

p binary_search(students, "Frank") == 2
p binary_search(students, "NOT A STUDENT") == -1



# Reflection

# • What concepts did you review in this challenge?
# In this challenge my pair and I reviewed object-oriented basics (composition and searching).

# • What is still confusing to you about Ruby?
# I still find attribute accessors a bit confusing.

# • What are you going to study to get more prepared for Phase 1?
# I’m going to learn more about when and how to use attribute accessors.
