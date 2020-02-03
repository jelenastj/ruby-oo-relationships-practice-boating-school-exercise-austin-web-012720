class Student
    attr_reader :first_name
    @@all =[]

    def initialize (first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end
#should initialize a new boating test with a Student (Object), a boating test name (String), 
#a boating test status (String), and an Instructor (Object)
    def add_boating_test(boatingtest, status, instructor)
        BoatingTest.new(self, boatingtest, status, instructor)
    end

    #will take in a first name and output the student (Object) with that name
    def self.find_student(first_name)
        self.all.find do |student|
            student.first_name == first_name
          end
    end
    #should return the percentage of tests that the student has passed, 
    #a Float (so if a student has passed 3 / 9 tests that they've taken, 
    #this method should return the Float 33.33)

    def all_tests
        BoatingTest.all.select {|test| test.student == self}
    end

    def passed_tests
        all_tests.select {|test| test.status == "passed"}
    end
#saw the example, need to practice the logic and application of this
    def grade_percentage
        total_tests = all_tests.length.to_f
        passed = passed_tests.length.to_f
        ((passed / total_tests)*100).round(2)

    end

end
