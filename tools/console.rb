require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
student1 = Student.new("Jelena")
student2 = Student.new("Lady Gaga")
student3 = Student.new("Lizzo")

instructor1=Instructor.new("Obama")
instructor2=Instructor.new("Eminem")
instructor3=Instructor.new("TinaFey")

boatingtest1 = BoatingTest.new(student1, "intro", "passed", instructor1)
boatingtest2 = BoatingTest.new(student2, "intro", "pending", instructor2)
boatingtest3 = BoatingTest.new(student3, "intro", "failed", instructor3)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line

