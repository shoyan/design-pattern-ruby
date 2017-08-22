#
# Make a juice using command pattern.
#
class Command
  def initialize(name)
    @name = name
  end

  def execute
  end
end

class AppleJuice < Command
  def initialize
    super('アップルジュース')
  end

  def execute
    puts "#{@name}ができました"
  end
end

class LemonJuice < Command
  def initialize
    super('レモンジュース')
  end

  def execute
    puts "#{@name}ができました"
  end
end

class Juicer
  def initialize
    @command = []
  end

  def run
    @command.each { |cmd| cmd.execute }
  end

  def add_command(command)
    @command << command
  end
end

juicer = Juicer.new

# Prepare the command
apple_command = AppleJuice.new
lemon_command = LemonJuice.new

# Add the apple command
juicer.add_command(apple_command)
# Add the lemmon command
juicer.add_command(lemon_command)

# Run the command
juicer.run
