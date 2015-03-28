# util
pl = (x) -> console.log x
util = require 'util'
p = (x) -> util.print x

# sample text
str = """
Hello!
This is a sample text.
"""

list = [[1, 'Hello!'], [2, ' '], [3, "\n"], [4, 'This'], [5, ' '], [6, 'is'], [7, ' '], [8, 'a'], [9, ' '], [10, 'sample'], [11, ' '], [12, 'text.']]

# read text with delay
for i in [0..list.length-1]
    setTimeout ((x)-> 
        return (-> 
            p(list[x][1])))(i), 
            100 * list[i][0]
