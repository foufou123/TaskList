require './lib/task'

@list = []
@completed = []
def main_menu
  puts "Press 'a' to add a task or 'l' to list all of your tasks or 'c' to complete"
  puts "Press 'x' to exit."
  main_choice = gets.chomp
  if main_choice == 'a'
    add_task
  elsif main_choice == 'l'
    list_tasks
  elsif main_choice == "c"
    complete_task
  elsif main_choice == 'x'
    puts "Good-bye!"
  else
    puts "Sorry, that wasn't a valid option."
    main_menu
  end
end
def add_task
  puts "Enter a description of the new task:"
  user_description = gets.chomp
  @list << Task.new(user_description)
  puts "Task added.\n\n"
  main_menu
end

def list_tasks
  puts "Here are all of your tasks:"
  user_description = gets.chomp
  @list.each do |task|
    puts task.description
  end
  puts "\n"
  main_menu
end

def complete_task
  puts "Which one of the tasks is completed?"
  @list.each_with_index do |task, index|
    puts "#{index}.#{task.description}"
  end
  user_task = gets.chomp.to_i
  puts user_task
  completedlist = @list[user_task].completed
  puts "#{@list[user_task]}.description has been completed"
  @completed << completedlist
  main_menu
end

main_menu


