

# Demonstration of range() function:
# 1. range with one parameter
# 2. range with two parameters
# 3. range with three parameters

#1:

print "Considering the range function, 3rd and 4th question..."

interval = 5
for x in range(interval):
   print x
   x = x + 9999		# x gets incremented by 9999 in the first iteration, but gets incremented 1 by 1 in each iteration. It is legal to manipulate the loop control variables but since loop parameters are evaluated only for once, the change only affects the value inside the body for once and manipulation does not affect the number of iterations.
   print x		
   interval = interval + 1	#interval gets incremented but does not affect the number of iterations.
print interval	#interval was incremented 5 times.
print x		# Even though the counter variable was not defined before the loop, its value is retained.

print "Range funciton question 1 and 2..."

#for x in range(4.6):
#  print x
''' 
   Prints the error: Traceback (most recent call last):
   File "yuksel_deniz_python.py", line 22, in <module>
   for x in range(4.6):
   TypeError: range() integer end argument expected, got float.
'''

#for x in range('apple'):
#   print 'pear'
'''
   Traceback (most recent call last):
   File "yuksel_deniz_python.py", line 31, in <module>
   for x in range('apple'):
   TypeError: range() integer end argument expected, got str.

'''
# Only integer argument is expected in range function, others are not legal.
for y in range(2):
   y = 999		#This causes no change. 
   for y in range(5):
      print y
print y		#The value of y is retained.

#Each time a new loop counter variable is declared in the #for statement, the value gets destroyed. So, the counter #control variable cannot be predefined.
print '\n'
#STEP SIZE FORM...
steps = 4
end = 17
start = 3
for x in range(start, end, steps):
   steps = 2
   print x
   
# step size cannot be modified.
# Demonstration of for loop_variable in object:

print "Considering for loop_variable in object form..."

iteratedList = [1,2,4,5,10,15,209,42]
for element in iteratedList:
    iteratedList[2] = 99999
    # The element in a location can be modified.
    print element
print '\n'


x = 10
for i in [x,x,x,x,x,x,x,x,x,x]:
    print i
    
print '\n'

