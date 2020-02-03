class BoatingTest
    attr_accessor :student, :boatingtest, :status, :instructor

    @@all = []

    def initialize(student, boatingtest, status, instructor)
        @student = student
        @boatingtest = boatingtest
        @status = status
        @instructor = instructor

        @@all << self
    end
    def self.all
        @@all
    end
end
