#!/usr/bin/ruby
require 'ruby2d'

@node1 = Node.new(50, 50, [200, 200, 200, 1])
@node2 = Node.new(400, 400, [200, 200, 200,1])
@path = Path.new([@node1, @node2], 100, [0,0,0,1])
@node1.display
@node2.display
@path.display
# Set the window size
set width: 500, height: 500
# Set the background color
set background: '#376278'
# Create the buttons


# Show the window
show
#show
@running = true
# Game loop
#while @running
# If the mouse is pressed, check which button is selected
# If it's create node, create a new node at the mouse position
# If it's create path, check if the mouse clicked on a node
    # If it did and waitingForNode is false save that node as the first node of the path and set waitingForNode to true
    # If it did and waitingForNode is true create the new path using the saved node and the clicked node
# If it's delete check if a node or path was clicked and delete it if so
# If it's set start and a node was clicked, save that node as the starting node
# If it's set end and a node was clicked, save that node as the ending node
#If it's run then run the dijkstra's algorithm on the current set of nodes and display the result
#end

BEGIN{
# Class for nodes. Contains position, Paths. Display, Delete, Set Color, Add/Remove Path
class Node
    @@noOfNodes = 0
    #def initialize(position, paths, color)
    #    @position = position
    #    @paths = paths
    #    @color = color
  attr_reader :x, :y
    def initialize(x, y, color)
        @x = x
        @y = y
        @color = color
        # Black circle behind main circle to create and outline
        @outline = Circle.new(
            x: x,
            y: y,
            radius: 22,
            color: "black"
        )
        # Main circle
        @circle = Circle.new(
            x: x,
            y: y,
            radius: 20,
            color: color
        )

        @@noOfNodes = @@noOfNodes + 1
    end

    def display
        puts "I am a Node! #{@@noOfNodes}"
    end

    def remove
    end

    def setColor(color)
    end

    def addPath(path)
    end

    def removePath(path)
        puts "filler"
    end
end
# Class for Paths. Contains two nodes, weight of path. Display, Delete, Set Color, Change Nodes
class Path
    @@noOfPaths = 0
    def initialize(nodes, weight, color)
        @weight = weight
        @nodes = nodes
        @color = color
        @line = Line.new(
            x1: nodes[0].x, y1: nodes[0].y,
            x2: nodes[1].x, y2: nodes[1].y,
            width: 2,
            color: color)

        @@noOfPaths = @@noOfPaths + 1
    end

    def display
        puts "I am a Path! #{@@noOfPaths}"
    end

    def remove
    end

    def setColor(color)
    end

    def changeNodes(startNode, endNode)
    end


end

class Button
    @@numOfButtons = 0
    def initialize(x, y, width, height, color)

        @@numOfButtons = @numOfButtons + 1
    end
end
}
