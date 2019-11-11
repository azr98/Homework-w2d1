require('minitest/rg')
require('minitest/autorun')
require_relative('../student')


class TestStudent < MiniTest::Test

  def test_name
    me = Student.new('azhar','G-16')
    student_name = me.name
    assert_equal('azhar',student_name)
  end

  def test_cohort
    me = Student.new('azhar','G-16')
    student_cohort = me.cohort
    assert_equal('G-16',student_cohort)
  end

  def test_favourite_language
    me = Student.new('azhar','G-16')
    favourite = me.favourite_language('JavaScript')
    assert_equal('azhar\'s favourtie language is JavaScript!! ', favourite)
  end

  def test_talk
    me = Student.new('azhar','G-16')
    talking = me.talk
    assert_equal('I can talk', talking)
  end

end
