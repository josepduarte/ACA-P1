r7 = "r7", [8, 10, 13, 14, 15, 20, 21, 22, 23]
r6 = "r6", [8, 9, 10, 12, 15, 19]
r5 = "r5", [9, 10, 11, 13, 15, 18, 20, 21, 22, 23]
r4 = "r4", [8, 9, 10, 12, 14, 17, 19, 20, 21, 22]
r3 = "r3", [9, 10, 11, 14, 15, 16, 18, 19, 22, 23]
r2 = "r2", [8, 9, 10, 13, 14, 15, 17, 18, 21, 22]
r1 = "r1", [9, 10, 12, 15, 16, 17, 22, 23]
r0 = "r0", [8, 9, 11, 14, 15, 16, 21, 22, 23]

lists = [r0, r1, r2, r3, r4, r5, r6, r7]
for l in lists:
	for elem in l[1]:
		similiarity = 0
		for l2 in [r for r in lists if r != l]:
			if elem in l2[1]:
				similiarity += 1
		print("Similiarity of " + str(l[0]) + " with " + str(l2[0]) + " is " + str(similiarity));