class CreateStudentInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :student_infos do |t|
      t.text :student_id
      t.text :student_name
      t.integer :score_toeic
      t.integer :score_toefl
      t.integer :score_eiken

      t.timestamps
    end
  end
end
