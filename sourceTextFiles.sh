#download file to current directory using curl
curl -O https://www.learningcontainer.com/wp-content/uploads/2020/04/sample-text-file.txt

#store size of file in bytes
var=`wc sample-text-file.txt | awk '{print $3}'`

#store line count
var=`wc sample-text-file.txt | awk '{print $1}'`
