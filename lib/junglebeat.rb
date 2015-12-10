require_relative 'Node'

class JungleBeat
  attr_accessor :head

  def initialize(beats = nil)
    @count = 0
    @head = Node.new
    append(beats)
    # @separate_beats = beats.split
    # beats.split.each { |beat| self.append(beat) }
  end

  def play
    `say -r 500 -v Boing #{all}`
  end

  def find_tail
    current_node = @head
    while current_node.next_node != nil
      current_node = current_node.next_node
    end
    current_node
  end

  def append_single(data)
    if @head == find_tail && @head.data.nil?
      @head.data = data
    else
      new_node = Node.new(data)
      find_tail.next_node = new_node
    end
  end

  def append(multi_string)
    multi_string.split.each do |word|
      append_single(word)
    end.length
  end

  def prepend_single(data)
    current_node = @head
    @head = Node.new(data, current_node)
  end

  def prepend(beats)
    beats.split.reverse.each do |beat|
      prepend_single(beat)
    end.length
  end

  def count
    current_node = @head
    while current_node.next_node != nil
      current_node = current_node.next_node
      @count += 1
    end
    @count + 1
  end

  def all
    current_node = @head
    list = []
    list << current_node.data
    while current_node.next_node != nil
      current_node = current_node.next_node
      list << current_node.data
    end
    #now return the string
    list.join(" ")
  end

  def include?(word)
    current_node = @head
    the_word = false
    while current_node.data != word || nil
      current_node = current_node.next_node
      if current_node.data == word
        the_word = true
      end
    end
    the_word
  end

  def pop(number = 1)
    current_node = @head
    #current_node = current_node.next_node
    while current_node.next_node.next_node != nil
      current_node = current_node.next_node

    end
    temp = current_node.next_node.data
    current_node.next_node = nil
    temp
  end

  def find(position, number = 0)
    current_node = @head
    beats = []
    counter = 0
    counter_two = 0

    while counter < position
      current_node = current_node.next_node
      counter += 1
    end

    while counter_two < number
      beats << current_node.data unless current_node.nil?
      current_node = current_node.next_node
      counter_two += 1
    end
    beats.join(" ")
  end

  def insert(position = 1, new_beats)
    current_node = @head
    counter = 1

    while counter < position
      current_node = current_node.next_node
      counter += 1
    end
    old_next = current_node.next_node
    current_node.next_node = Node.new(new_beats)
    current_node.next_node.next_node = old_next
  end
end

# place = position.times do teamporary_head.next_node
# place

# list = LinkList.new("bop")
# puts list

# class JungleBeat
#   @count = 0
#   list = data.split
#   first_word = list.shift
#   # while first_word != nil
#   #JungleBeat class
#   @head = Node.new(first_word, next_node)
#   @count += 1
# end
