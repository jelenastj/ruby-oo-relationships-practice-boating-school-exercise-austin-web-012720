class Instructor
    attr_reader :name
    @@all =[]

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
#should take in a student instance and test name. 
#If there is a BoatingTest whose name and student match the values passed in, 
#this method should update the status of that BoatingTest to 'passed'. 
#If there is no matching test, this method should create a test with the student, 
#that boat test name, and the status 'passed'. 
#Either way, it should return the BoatingTest instance.
   def test_by_instructor
    BoatingTest.all.select {|test| test.instructor == self}
   end

    def pass_student(student, boatingtest)
        check_test = test_by_instructor.find {|test| test.student == student && 
        test.boatingtest == boatingtest}
        if check_test = []
            BoatingTest.new(student, boatingtest, "passed", self)
        else 
            check_test.status = "passed"
        end
    end

    def fail_student (student, boatingtest)
        check_test = test_by_instructor.find {|test| test.student == student && 
        test.boatingtest == boatingtest}
        if check_test = []
            BoatingTest.new(student, boatingtest, "failed", self)
        else 
            check_test.status = "failed"
        end

    end



end
