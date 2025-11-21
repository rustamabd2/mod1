package tstcue
import "strconv"

hello1: #"""
    hello world \(not(an(expr))) \#("test")
    """#

hello2: #"""
    hello world \(not(an(expr))) \#(strconv.Atoi("""
        123\("4")
        """+{a: ["1"]}.a[0]))
    and more
    """#
