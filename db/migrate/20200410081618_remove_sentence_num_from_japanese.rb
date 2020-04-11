class RemoveSentenceNumFromJapanese < ActiveRecord::Migration[6.0]
  def change
    remove_column :japaneses, :sentence_num
  end
end
