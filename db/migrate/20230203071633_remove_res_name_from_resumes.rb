class RemoveResNameFromResumes < ActiveRecord::Migration[7.0]
  def change
    remove_column :resumes, :res_name, :string
  end
end
