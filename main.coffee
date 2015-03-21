# util
util = require 'util'
p = (x) -> util.print x

# sample text
str = """
Hello!
This is a sample text.
"""

# read text with delay
for i in [0..str.length-1]
    setTimeout ((x)-> return (-> p(str[x])))(i), 100 * i
