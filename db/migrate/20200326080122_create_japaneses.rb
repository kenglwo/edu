class CreateJapaneses < ActiveRecord::Migration[6.0]
  def change
    create_table :japaneses do |t|
      t.text :student_id
      t.text :theme
      t.text :sentences

      t.timestamps
    end
  end
end
