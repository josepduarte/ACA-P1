import pprint
import operator 

pp = pprint.PrettyPrinter(indent=4)

r7 = [8, 10, 13, 14, 15, 20, 21, 22, 23]
r6 = [8, 9, 10, 12, 15, 19]
r5 = [9, 10, 11, 13, 15, 18, 20, 21, 22, 23]
r4 = [8, 9, 10, 12, 14, 17, 19, 20, 21, 22]
r3 = [9, 10, 11, 14, 15, 16, 18, 19, 22, 23]
r2 = [8, 9, 10, 13, 14, 15, 17, 18, 21, 22]
r1 = [9, 10, 12, 15, 16, 17, 22, 23]
r0 = [8, 9, 11, 14, 15, 16, 21, 22, 23]

lists = [r0, r1, r2, r3, r4, r5, r6, r7]


counter_list = {} # (8,9): 5)

lists_already_done = []
positions_already_done = []

for i in range(8, 23):
	positions_already_done = positions_already_done + [i]
	for j in [a for a in range(8, 23) if a not in positions_already_done]:
		lists_already_done = []
		for l in lists:
			lists_already_done = lists_already_done + [l]
			for l2 in [a for a in lists if a not in lists_already_done]:
				if i in l and i in l2 and j in l and j in l2:
					if (str(i) + "-" + str(j)) not in counter_list.keys():
						counter_list[(str(i) + "-" + str(j))] = 1
					else:
						counter_list[(str(i) + "-" + str(j))] = counter_list[(str(i) + "-" + str(j))] + 1

sorted_list = sorted(counter_list.items(), key = operator.itemgetter(1))

pp.pprint(sorted_list)

print("--------------------------------------------------------------")


r77 = [14, 22, 23, 1015, 821, 1320]
r66 = [8, 9, 1015, 1219]
r55 = [21, 23, 1015, 922, 1118, 1320]
r44 = [10, 20, 922, 821, 1417, 1219]
r33 = [14, 19, 1015, 922, 1118, 1623]
r22 = [13, 18, 1015, 922, 821, 1417]
r11 = [12, 17, 1015, 922, 1623]
r00 = [11, 14, 15, 922, 821, 1623]

newlists = [r00, r11, r22, r33, r44, r55, r66, r77]
newValues = [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 1015, 821, 1320, 1219,
			 922, 1118, 1417, 1623]


counter_list = {}

for i in newValues:
	positions_already_done = positions_already_done + [i]
	for j in [a for a in newValues if a not in positions_already_done]:
		lists_already_done = []
		for l in newlists:
			lists_already_done = lists_already_done + [l]
			for l2 in [a for a in newlists if a not in lists_already_done]:
				if i in l and i in l2 and j in l and j in l2:
					if (str(i) + "-" + str(j)) not in counter_list.keys():
						counter_list[(str(i) + "-" + str(j))] = 1
					else:
						counter_list[(str(i) + "-" + str(j))] = counter_list[(str(i) + "-" + str(j))] + 1

sorted_list = sorted(counter_list.items(), key = operator.itemgetter(1))

pp.pprint(sorted_list)


print("--------------------------------------------------------------")


r77 = [14, 22, 23, 1015, 821, 1320]
r66 = [8, 9, 1015, 1219]
r55 = [21, 23, 1015922, 1118, 1320]
r44 = [10, 20, 922821, 1417, 1219]
r33 = [14, 19, 10159221623, 1118]
r22 = [13, 18, 1015922, 821, 1417]
r11 = [12, 17, 10159221623]
r00 = [11, 14, 15, 922821, 1623]

lists = [r00, r11, r22, r33, r44, r55, r66, r77]
values = set(r77 + r66 + r55 + r44 + r33 + r22 +r11+ r00)

			 
counter_list = {}

for i in values:
	positions_already_done = positions_already_done + [i]
	for j in [a for a in values if a not in positions_already_done]:
		lists_already_done = []
		for l in lists:
			lists_already_done = lists_already_done + [l]
			for l2 in [a for a in lists if a not in lists_already_done]:
				if i in l and i in l2 and j in l and j in l2:
					if (str(i) + "-" + str(j)) not in counter_list.keys():
						counter_list[(str(i) + "-" + str(j))] = 1
					else:
						counter_list[(str(i) + "-" + str(j))] = counter_list[(str(i) + "-" + str(j))] + 1

sorted_list = sorted(counter_list.items(), key = operator.itemgetter(1))

pp.pprint(sorted_list)