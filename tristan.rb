class Members
  def initialize(full_name)
    @fullname = full_name
  end

  def full_name
    @full_name
  end
end

      class Student < Members
        def initialize(full_name, about)
          super(full_name)
          @about = about
        end

        def about
          @about
        end

        def add_student
          student_hash = {}
          student_hash[@full_name] = @about
        end


      end

      class Coach < Members
        def initialize(full_name, bio, skills)
          super(full_name)
          @bio = bio
          @skills = skills
        end

        def bio
          @bio
        end

        def skills
            @skills
        end

        def add_coach
          coach_hash = {}
          coach_hash[@full_name] = @bio, @skills
        end

      end


jane = Student.new("Jane Doe", "I am trying to learn Ruby")
vicky = Coach.new("Vicky Ruby", "Im a top bird", "Ruby Wizard")

puts jane.about
