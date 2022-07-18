class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.grades
    Student.order(grade: :desc) 
  end

  def self.highest_grade
    grades.first
  end
end
