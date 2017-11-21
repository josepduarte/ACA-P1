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