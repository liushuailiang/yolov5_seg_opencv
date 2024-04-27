# encoding: UTF-8
import glob as gb
import cv2

img_path = gb.glob("/root/autodl-tmp/opencv/output/car/*.jpg") 
videoWriter = cv2.VideoWriter('test.mp4', cv2.VideoWriter_fourcc(*'mp4v'), 25, (1920,1080))

for path in img_path:
    img  = cv2.imread(path) 
    # img = cv2.resize(img,(640,480))
    videoWriter.write(img)