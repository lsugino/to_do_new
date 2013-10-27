require_relative '../../../config'

class CreateToDoList < ActiveRecord::Migration
  def change
    create_table :todolist do |t|
      t.string :tasks
    end
  end
end