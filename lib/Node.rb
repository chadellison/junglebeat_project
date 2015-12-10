class Node
  attr_accessor :data, :next_node

  def initialize(data=nil, next_node=nil)
    @data = data
    @next_node = next_node
  end
end

# node3 = Node.new("beep")
# node2 = Node.new("bop", node3)
# node1 = Node.new("dep", node2)
#
# puts node2.link
#
# class LinkList
#   attr_accessor :head
#
#   def initialize(data) #make sure its pointing to the next place
#     @head = Node.new(data)
#   end
# end
#
# class JungleBeat
#
# end
#
# list = LinkList.new(5)
# puts list.head
# # you want to initialize it with a node if you're not passing in a node
#
# # class List
# #   #deep
# #   #dep
# #   #bop
# #   #tee
# #   #boop
# #   #la
# #   #na
# #
# # end
# # initialize one node from ll
# #
# # first test initialize a list of 4 nodes #make list
# #
# # def tail
# #   ask a node if it points to nil
# #   if yes --> return node
# #   otherwise --> node.link
# #   (some sort of loop)
# #   current_node will equal tail
# # end
# #
# # def append method
# # end
# #
# # def print list / all
# #   helpful for testing
# # end
