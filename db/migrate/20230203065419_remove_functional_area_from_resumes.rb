class RemoveFunctionalAreaFromResumes < ActiveRecord::Migration[7.0]
  def change
    remove_column :resumes, :functional_area, :string
    remove_column :resumes, :edu_specialization, :string
    remove_column :resumes, :course_type, :string
  end
end
