#download file to current directory using curl
curl -O https://www.learningcontainer.com/wp-content/uploads/2020/04/sample-text-file.txt

#download file to specific directory from home

wget [link] -p ~/Desktop/Test

#store size of file in bytes -- to heavy
var=`wc sample-text-file.txt | awk '{print $3}'`
#maybe instead use the following
var=`ls -l sample-text-file.txt | awk '{print $5}'`

#store line count
var=`wc sample-text-file.txt | awk '{print $1}'`