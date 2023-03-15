class RemoveYearPassoutFromResumes < ActiveRecord::Migration[7.0]
  def change
    remove_column :resumes, :year_passout, :string
    remove_column :resumes, :qualification, :string
  end
end
