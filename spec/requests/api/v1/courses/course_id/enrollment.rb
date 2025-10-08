class Api::V1::EnrollmentsController < ApplicationController
  def index
    # Find the course by id
    course = Course.find(params[:course_id])

    # Get all enrollments for this course
    enrollments_data = course.enrollments.map do |enrollment|
      {
        id: enrollment.id,
        student_name: enrollment.student.name,
        grade: enrollment.grade
      }
    end

    # Return as JSON
    render json: {
      course_id: course.id,
      course_title: course.title,
      enrollments: enrollments_data
    }
  end
end