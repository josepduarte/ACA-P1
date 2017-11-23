from pprint import pprint
import operator 

#pp = pprint.PrettyPrinter(indent=4)

file = open('results2.txt','wt') 

list_of_solutions =  []

tups_to_forget = []

def get_sol(lists, values):
	counter_list = {}

	lists_already_done = []
	positions_already_done = []

	for i in values:
		positions_already_done = positions_already_done + [i]
		for j in [a for a in values if a not in positions_already_done]:
			lists_already_done = []
			for l in lists:
				lists_already_done = lists_already_done + [l]
				for l2 in [a for a in lists if a not in lists_already_done]:
					if i in l and i in l2 and j in l and j in l2:
						if (i,j) not in counter_list.keys():
							counter_list[(i,j)] = 1
						else:
							counter_list[(i,j)] = counter_list[(i,j)] + 1

	#print("COUNTER_LIST: ")
	#pp.pprint(counter_list)
	#print("TUPS_TO_FORGET: ")
	#pp.pprint(tups_to_forget)

	if counter_list == {} or all_tups_in_tups_to_forget(counter_list):
		#pp.print("-----------------------------------------------------------------------------", file)
		#pp.pprint([l for l in lists], file)
		solution = (lists, sum([len(ll) for ll in lists]))
		list_of_solutions.append(solution)
		if(solution[1] < 41):
			file.write("------------------------------------------------\n")
			pprint(solution, stream=file)
		#pp.print("-----------------------------------------------------------------------------", file)
		#return lists


	counter_list = sorted(counter_list.items(), key = operator.itemgetter(1), reverse = 1)
	for tup, value in counter_list:
		if tup not in tups_to_forget:
			newlists = aggregate_tup(tup, lists)
			newvalues = set([j for i in newlists for j in i])
			get_sol(newlists, newvalues)
	
def aggregate_tup(tup, lists):
	newlists = [l[:] for l in lists[:]]
	if alone(tup, newlists):
		tups_to_forget.append(tup);
		return newlists
	for l in [a for a in newlists]:
		if tup[0] in l and tup[1] in l:
			l.remove(tup[0])
			l.remove(tup[1])
			l.append(tup[0] + "_" + tup[1])
	return newlists

def alone(tup, lists):
	for l in lists:
		if ("_" in tup[0] and tup[0] in l) and tup[1] not in l:
			return True
		if ("_" in tup[1] and tup[1] in l)  and tup[0] not in l:
			return True
	return False

def all_tups_in_tups_to_forget(counter_list):
	for tup in counter_list:
		if tup not in tups_to_forget:
			return False
	return True

def lists_similiarity(lits):
	similiarity = 0;
	for l in lists:
		for elem in l:
			for l2 in [r for r in lists if r != l]:
				if elem in l2:
					similiarity += 1
	return similiarity

r7 = ["8", "10", "13", "14", "15", "20", "21", "22", "23"]
r6 = ["8", "9", "10", "12", "15", "19"]
r5 = ["9", "10", "11", "13", "15", "18", "20", "21", "22", "23"]
r4 = ["8", "9", "10", "12", "14", "17", "19", "20", "21", "22"]
r3 = ["9", "10", "11", "14", "15", "16", "18", "19", "22", "23"]
r2 = ["8", "9", "10", "13", "14", "15", "17", "18", "21", "22"]
r1 = ["9", "10", "12", "15", "16", "17", "22", "23"]
r0 = ["8", "9", "11", "14", "15", "16", "21", "22", "23"]

lists = [r7, r6, r5, r4, r3, r2, r1, r0]
values = set(r0+r1+r2+r3+r4+r5+r6+r7)

get_sol(lists, values)
print("-------------------------------------------------------")
pp.pprint(sorted(list_of_solutions, key = operator.itemgetter(1), reverse=1))

#pp.pprint([l for l in aggregate_tup(("10", "15"), lists)])

#sol = get_sol(lists, values)
#sol = sorted(sol.items(), key = operator.itemgetter(1), reverse = 1)
#pp.pprint(sol)

