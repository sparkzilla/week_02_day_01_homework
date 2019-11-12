class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_name
    @name
  end

  def get_cohort
    @cohort
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk
    p "I can talk!"
  end

  def say_favourite_language(language)
    p "I love #{language}"
  end

end
