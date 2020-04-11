class AddSentenceNumToJapaneses < ActiveRecord::Migration[6.0]
  def change
    add_column :japaneses, :sentence_num, :integer
  end
end
