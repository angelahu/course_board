class AddCreditToCourses < ActiveRecord::Migration
  def change
  	add_column(:courses, :course_place, :text)
  	add_column(:courses, :course_credit, :integer)  
  end
end
