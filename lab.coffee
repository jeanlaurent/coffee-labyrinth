#width = 640
#height = 480
#canvas = document.getElementById('canvas')
#context = canvas.getContext('2d')
#canvas.width = width
#canvas.height = height

clear = ->   
  context.fillStyle = '#d0e7f9'
  context.beginPath()
  context.rect(0, 0, width, height)
  context.closePath()
  context.fill()

class Cell
	constructor: (@x, @y) ->
		@walls = [false,false,false,false]

class Lab
	constructor: (@width, @height) ->
		@cells = []
		@cells[x + y * @width] = new Cell(x,y) for y in [0...@height] for x in [0...@width]

	size: -> 
		@cells.length

#Exports...
root.Lab = Lab
root.Cell = Cell
