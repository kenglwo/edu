class AddColumnToStudentInfos < ActiveRecord::Migration[6.0]
  def change
    add_column :student_infos, :theme, :text
  end
end
