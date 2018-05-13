require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/message'
require './lib/date'



class MessageTest < Minitest::Test
  def test_it_exists
    message = Message.new("this is so secret ..end..")
    assert_instance_of Message, message
  end

  def test_message_characters_into_array
    message = Message.new("this is so secret ..end..")
    result = ["t", "h", "i", "s", " ", "i", "s", " ", "s", "o", " ", "s", "e", "c", "r", "e", "t", " ", ".", ".", "e", "n", "d", ".", "."]
    assert_equal result, message.message_characters_into_array("this is so secret ..end..")
  end


end
