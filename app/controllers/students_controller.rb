class StudentsController < ApplicationController
    def index 
        students = Student.all 
        render json: students
    end

    def grades
        students = Student.grades
        render json: students 
    end

    def highest_grade
        render json: Student.highest_grade
    end
end
