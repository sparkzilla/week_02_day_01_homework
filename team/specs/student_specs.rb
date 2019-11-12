require('minitest/autorun')
require('minitest/rg')
require_relative('../student.rb')

class TestStudent < MiniTest::Test

  def test_student_name
    student = Student.new('Mark', 'G-16')
    assert_equal('Mark', student.get_name)
  end

  def test_student_cohort
    student = Student.new('Billy', 'G-15')
    assert_equal('G-15', student.get_cohort)
  end

  def test_update_student_name
    student = Student.new('Debbie', 'G-16')
    student.set_name('Alan')
    assert_equal('Alan', student.get_name)
  end

  def test_update_student_cohort
    student = Student.new('Alex', 'G-16')
    student.set_cohort('G-15')
    assert_equal('G-15', student.get_cohort)
  end

  def test_student_can_talk
    student = Student.new('Bob', 'G-16')
    assert_equal("I can talk!", student.talk)
  end

  def test_say_favourite_language
    student = Student.new('Andy', 'G-15')
    assert_equal('I love Ruby', student.say_favourite_language('Ruby'))
  end


end
