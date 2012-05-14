class Cell
	constructor: (@x, @y) ->

class Lab
	constructor: (@width, @height) ->
		@cells = []
		@cells[x + y * @width] = new Cell(x,y) for y in [0...@height] for x in [0...@width]

	size: -> 
		@cells.length

root.Lab = Lab
root.Cell = Cell
