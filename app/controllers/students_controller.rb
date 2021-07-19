class StudentsController < ApplicationController

    def index
        allStudents = Student.all
        render json: allStudents
    end

    def grades
        studentGrades = Student.order(grade: :desc)
        render json: studentGrades
    end

    def highest_grade
        highest = Student.order(grade: :desc).first
        render json: highest
    end

end
