import random
import base64

media_dir = "/home/zhangyanqi/cornell/Software/socialNetwork-ml-swarm/DeathStarBench/socialNetwork-ml-swarm/wrk2/scripts/social-network/images/"
media_jpg = {}
media_jpg_num = 17
media_png  = {}
media_png_num = 15

for i in range(1, media_jpg_num + 1):
	with open(media_dir + str(i) + '.jpg', 'rb') as f:
		media = str(base64.b64encode(f.read()))
		if media.startswith("b\'"):
			media = media[2:]
		if media[-1] == "\'":
			media = media[:-1]
		media_jpg[i] = media
		print(media_jpg[i])
		print()

for i in range(1, media_png_num + 1):
	with open(media_dir + str(i) + '.png', 'rb') as f:
		media = str(base64.b64encode(f.read()))
		if media.startswith("b\'"):
			media = media[2:]
		if media[-1] == "\'":
			media = media[:-1]
		media_png[i] = media
		print(media_png[i])
		print()

medium = '['
media_types = '['

for i in range(0, 3):
	media_id = random.randint(1, media_jpg_num)
	medium += '\"' + media_jpg[media_id] + '\",'
	media_types += '\"jpg\",'

medium = medium[:-1] + ']'
media_types = media_types[:-1] + ']'
print(medium)
print(media_types)