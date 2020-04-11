class CreateEnglishes < ActiveRecord::Migration[6.0]
  def change
    create_table :englishes do |t|
      t.string :student_id
      t.string :theme
      t.string :sentences

      t.timestamps
    end
  end
end
