class Message < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.text :content
    end
  end
end
