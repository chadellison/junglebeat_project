require 'minitest/autorun'
require_relative '../lib/junglebeat'
require 'pry'

class JungleBeatTest < Minitest::Test

  def test_it_creates_a_new_node_object_when_it_initializes

    list = JungleBeat.new("beep")
    assert_equal "beep", list.head.data
  end

  def test_it_can_find_the_tail
    node = JungleBeat.new("bop")
    node.append("beep")
    assert_equal "beep", node.find_tail.data
  end

  def test_it_can_append

    list = JungleBeat.new("bop")
    list.append("beep")
    assert_equal "beep", list.find_tail.data
    assert_equal "bop beep", list.all
  end

  def test_it_can_prepend

    list = JungleBeat.new("bop")
    list.prepend("beep")
    assert_equal "beep", list.head.data
  end

  def test_it_can_count_the_linked_list

    list = JungleBeat.new("blip")
    list.append("dep")
    list.append("blap")
    list.prepend("dip")
    assert_equal 4, list.count
    #assert_equal 4,
  end

  def test_it_can_print_the_link_list

    list = JungleBeat.new("boop")
    list.append("dep")
    # make sure the count is 2
    assert_equal "boop dep", list.all
  end

  def test_it_can_check_to_see_if_a_word_is_in_the_link_list

    list = JungleBeat.new("beep")
    list.append("jep")
    assert_equal true, list.include?("jep")
  end

  def test_it_can_pop_the_last_word_off_the_list

    list = JungleBeat.new("blep")
    list.append("jep")




    assert_equal "jep", list.pop
    assert_equal "blep", list.all
  end

  def test_it_can_find_a_numeric_position_and_return_any_number_following
    list = JungleBeat.new("beep")
    list.append("dep")
    list.prepend("bep")
    list.append("dip")
    assert_equal "dip", list.find(3, 1)
  end

  def test_it_can_find_a_numeric_position_and_insert_data

    list = JungleBeat.new("beep")
    list.append("bep")
    list.append("bop")
    list.append("bap")
    list.insert(3, "boom")
    assert_equal "beep bep bop boom bap", list.all
  end

end
