raw_data = '''Angry-bird	12.565	23.035	81.695	59.245	75.775
	Browser	13.495	15.605	87.68	74.65	81.195
	Dropbox	13.435	14.855	94.765	89.84	90.025
	Estrongs	14.6	16.52	95.015	89.895	Error
	Facebook	11.95	16.495	74.295	45.385	56.765
	Golf	13.895	20.4	80.2	52.335	Error
	Map	12.695	19.08	70.68	70.8	69.525
	Media	13.115	20.52	85.58	78.555	Error
	Trial	12.265	20.305	67.245	Error	123.01
	Virus	13.755	17.33	88.57	77.255	74.525'''.split('\n')

print '''
newgraph
xaxis size 5 min 0 max 60 no_auto_hash_labels no_auto_hash_marks label font Helvetica fontsize 12
yaxis size 2 min 0 max 100 label font Helvetica fontsize 12 : Wasted cycles (%)

newcurve linetype solid marktype none pts 0 100 60 100
newcurve linetype solid marktype none pts 60 0 60 100

legend custom 
'''


interactive_data = []
ondemand_data = []
x_l = 3.5
x_r = 4.5
for line in raw_data:
	line = line.split()	
	first = float(line[1])
	second = float(line[2])
	third = float(line[3])

	try:
		interactive = float(line[4])
		ondemand = float(line[5])
	except:
		continue

	'''
	print 'newline poly pfill 0 pts'
	print x_l,'0'
	print x_l,first
	print x_r,first
	print x_r,'0'

	print 'newline poly pfill 0.5 pts'
	print x_l,first
	print x_l,second
	print x_r,second
	print x_r,first

	print 'newline poly pfill 1.0 pts'
	print x_l,second
	print x_l,third
	print x_r,third
	print x_r,second
	'''
	print 'newline poly pfill 0 pts'
	print x_l,'0'
	print x_l,third
	print x_r,third
	print x_r,'0'
	x_l += 1
	x_r += 1
	
	print 'newline poly pfill 0.5  pts'
	print x_l,'0'
	print x_l,ondemand
	print x_r,ondemand
	print x_r,'0'
	
	
	print 'newstring fontsize 9 font Helvetica x %f  y -3 hjc vjt : %s' % ( (x_l + x_r) / 2, line[0])
	
	x_l += 1
	x_r += 1
	
	print 'newline poly pfill 1 pts'
	print x_l,'0'
	print x_l,interactive
	print x_r,interactive
	print x_r,'0'
	

	x_l += 8
	x_r += 8

ywidth = 3
x = 1
yaxis = 102
print '''
newline poly pfill 0 pts
%d %d
%d %d
%d %d
%d %d
''' % (x, yaxis + 1, x, yaxis + 1 + ywidth, x + 2, yaxis + 1 + ywidth, x+2, yaxis + 1)

print 'newstring fontsize 11 font Helvetica x %d  y %d hjl vjb : Fixed 1.2GHz' % (x + 3, yaxis)

yaxis += 0
x += 16
print '''
newline poly pfill 0.5 pts
%d %d
%d %d
%d %d
%d %d
''' % (x, yaxis + 1, x, yaxis + 1 + ywidth, x + 2, yaxis + 1 + ywidth, x+2, yaxis + 1)

print 'newstring fontsize 11 font Helvetica x %d  y %d hjl vjb : Ondemand' % (x+3, yaxis)

x += 14
yaxis += 0

print '''
newline poly pfill 1.0 pts
%d %d
%d %d
%d %d
%d %d
''' % (x, yaxis + 1, x, yaxis + 1 + ywidth, x + 2, yaxis + 1 + ywidth, x+2, yaxis + 1)

print 'newstring fontsize 11 font Helvetica x %d  y %d hjl vjb : Interactive' % (x+3, yaxis)
