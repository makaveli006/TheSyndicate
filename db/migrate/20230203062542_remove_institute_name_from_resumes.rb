class RemoveInstituteNameFromResumes < ActiveRecord::Migration[7.0]
  def change
    remove_column :resumes, :institute_name, :string
  end
end
