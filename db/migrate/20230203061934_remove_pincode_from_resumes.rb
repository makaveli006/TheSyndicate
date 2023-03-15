class RemovePincodeFromResumes < ActiveRecord::Migration[7.0]
  def change
    remove_column :resumes, :pincode, :integer
  end
end
