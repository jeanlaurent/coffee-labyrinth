#mocha --ui qunit --compilers coffee:coffee-script --growl lab-test.coffee
expect = require('expect.js')
require("./lab.coffee")

suite('LabGeneration')

test('Checking lab height & width', ->
		lab = new Lab 2,2
		expect(lab.width).to.be 2
		expect(lab.height).to.be 2
)

test('Checking a 2x2 Lab holds 4 cells', ->
		lab = new Lab 2,2
		expect(lab.size()).to.be 4
)

test('Checking a 4x4 Lab holds 16 cells', ->
		lab = new Lab 4,4
		expect(lab.size()).to.be 16
)

test('Checking a cell distributionof a 2x2 lab', ->
		lab = new Lab 2,2
		cell = lab.cells[0]
		expect(cell.x).to.be 0
		expect(cell.y).to.be 0
		cell = lab.cells[1]
		expect(cell.x).to.be 1
		expect(cell.y).to.be 0
		cell = lab.cells[2]
		expect(cell.x).to.be 0
		expect(cell.y).to.be 1
		cell = lab.cells[3]
		expect(cell.x).to.be 1
		expect(cell.y).to.be 1
)

