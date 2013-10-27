class CreateToDoList < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :todo
    end
  end
end