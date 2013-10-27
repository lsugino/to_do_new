require_relative '../../config/application'

class Controller
  
  def run!
    @arg = ARGV
    case @arg.shift
    when 'list'
      list
    when 'add'
      add
    when 'delete'
      delete
    when 'completed'
      complete
    end
  end

  def list
    Tasks.all.each { |task| puts "#{task.id}.".center(4) + " #{task.todo}" }
  end

  def add
    new_task = @arg.join(" ")
    Tasks.create(:todo => new_task )
    p "Appended '#{new_task}' to your TODO list..."
  end

  def delete
    id = @arg[0].to_i
    task = Tasks.find(id).todo
    Tasks.destroy(id)
    p "Deleted '#{task}' from your TODO list..."
  end

  def complete
    task = Tasks.find_by_todo(@arg.join(" "))
    task.update_attribute(:completed?, true)
    task.save
  end

end

Controller.new.run!