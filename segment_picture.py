from transformers import pipeline

segmenter = pipeline(model="nvidia/segformer-b0-finetuned-ade-512-512")
segpic = segmenter("source/transformed_im_1098765432110987654321109876543212.jpg")
for segm in range(len(segpic)):
	segpic[segm]["mask"].save("output_"+segm+"/segment"+str(segm)+".jpg")
	print("segment " + str(segm)+" written")
