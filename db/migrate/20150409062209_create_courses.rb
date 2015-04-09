class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
       t.text :course_name
  	   t.text :course_teacher
  	   t.text :course_time
      t.timestamps null: false
    end
  end
end
