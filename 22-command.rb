#
# Make a juice using command pattern.
#
class Command
  attr_writer :command

  def execute
  end
end

class AppleJuice < Command
  def initialize
    @name = 'アップルジュース'
  end

  def execute
    puts "#{@name}ができました"
  end
end

class LemonJuice < Command
  def initialize
    @name = 'レモンジュース'
  end

  def execute
    puts "#{@name}ができました"
  end
end

class Juicer
  def run
    @command.execute
  end

  def set_command(command)
    @command = command
  end
end

juicer = Juicer.new

# Prepare the command
apple_command = AppleJuice.new
lemon_command = LemonJuice.new

# Set the apple command
juicer.set_command(apple_command)

# Run the command
juicer.run

# Set the lemmon command
juicer.set_command(lemon_command)

# Run the command
juicer.run
