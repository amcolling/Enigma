class Message
  attr_reader :message

  def initialize
    @message = File.read('message.txt').chomp
  end

  def message_characters_into_array
    @message.chars
  end






end
