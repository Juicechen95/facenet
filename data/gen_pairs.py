import os

base = '用户/jiangchenzhi/data/face/sansuo/augmented_mtcnnpy_160'
info = 'pairs.txt'
f = open(info,'w')
names = os.listdir(base)
count = 0
for name in names:
	count = count + 1
	if not os.path.isdir(os.path.join(base,name)):
		continue
	
	persons = os.listdir(os.path.join(base,name))
	if len(persons)==0:
		print(name+'  empty!')
	face, card = False, False
	for person in persons:
		if '0face' in person and len(person)<10:
			face = True
		if 'card' in person:
			card = True
	if face and card and count > 2:
		f.write(name+' '+str(len(persons))+'\n')
		f.write(name+' '+str(len(persons))+' ' + temp_name + ' ' + tr(len(temp_persons)) + '\n')
	else:
		print(name+' has no 0face or card')
	temp_name = name
	temp_persons = persons
	if count > 200:
		break
f.close()
