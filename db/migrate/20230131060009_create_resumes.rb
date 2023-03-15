class CreateResumes < ActiveRecord::Migration[7.0]
  def change
    create_table :resumes do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :marital_status
      t.string :gender
      t.string :mob_num
      t.string :email
      t.integer :pincode
      t.string :current_address
      t.string :functional_area
      t.string :experience
      t.string :key_skills
      t.string :qualification
      t.string :edu_specialization
      t.string :institute_name
      t.string :year_passout
      t.string :course_type
      t.string :res_name
      t.string :res_attachment

      t.timestamps
    end
  end
end
