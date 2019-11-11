
class Student
  attr_accessor :name, :cohort

  def initialize(name,cohort)
    @name = name
    @cohort = cohort
  end

  def name
    @name
  end

  def cohort
    @cohort
  end

  def talk
    'I can talk'
  end

  def favourite_language(fav)
    
     "#{@name}'s favourtie language is #{fav}!! "
  end

end
