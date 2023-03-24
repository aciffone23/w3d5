require "byebug"
class PolyTreeNode
    attr_accessor :parent, :children, :value
  def initialize(value)
    @value = value 
    @parent = nil 
    @children = []  
  end

  def parent=(value)
    if @parent != nil
        parent.children = parent.children.select {|ele| ele != self}
    end
    @parent = value 
    if !parent.children.include?(self)
        value.children << self
    end
  end
end
