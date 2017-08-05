#!/bin/bash
rm *.html
ROOT=./
HTTP="./"
OUTPUT="index.html" 

i=0
echo "<a href='../index.html'><img src='http://archive.ev3lessons.com/web/EV3lessons-EV3Trainer-v1/advanced/back_arrow.jpg'></a>" > $OUTPUT
echo "<style>h1 {color:red;font-family:verdana;font-size:200%;} b  {    color:green;    font-family:arial;    font-size:100%} p  {    color:brown;    font-family:arial;    font-size:110%}</style>" >> $OUTPUT
echo "<h1>EV3lessons.com v5.0.0 Simple Edition (v1 Base)</h1>" >> $OUTPUT
#echo "<UL>" > $OUTPUT
for filepath in `ls -1 | awk -F '.' '{print $1}' | uniq | fgrep -v index | fgrep -v copy | fgrep -v create_lessons | fgrep -v folder`; do
  path=`basename "$filepath"`
  echo "  <a href='"$path".html'><img src='folder.gif'> $path</a><br>" >> $OUTPUT
#  echo "  <UL>" >> $OUTPUT
#  for i in `find "$filepath" -maxdepth 1 -mindepth 1 -type f| sort`; do
#    file=`basename "$i"`
#    echo "    <LI><a href=\"./$path/$file\">$file</a></LI>" >> $OUTPUT
#  done
#  echo "  </UL>" >> $OUTPUT
done
#echo "</UL>" >> $OUTPUT



i=0
#echo "<UL>" > $OUTPUT
for filepath in `ls -1 | awk -F '.' '{print $1}' | fgrep -v index | uniq`; do
  path=`basename "$filepath"`
  OUTPUT=$path'.html'
  echo "<a href='index.html'><img src='http://archive.ev3lessons.com/web/EV3lessons-EV3Trainer-v1/advanced/back_arrow.jpg'></a>" > $OUTPUT
  echo "<style>h1 {color:red;font-family:verdana;font-size:200%;} b  {    color:green;    font-family:arial;    font-size:100%} p  {    color:brown;    font-family:arial;    font-size:110%}</style>" >> $OUTPUT
  echo "<h1>$path</h1>" >> $OUTPUT
  echo "  <a href='http://www.ev3lessons.com/translations/en-us/beginner/"$path".pptx'><img src='http://archive.ev3lessons.com/web/EV3lessons-EV3Trainer-v1/advanced/Calibrate/powerpoint.svg'  width='30' height='30'> $path - Microsoft Powerpoint</a><br>" >> $OUTPUT
  echo "  <a href='http://www.ev3lessons.com/translations/en-us/beginner/"$path".pdf'><img src='http://cwidaho.cc/sites/all/themes/omega_cwi/images/icons/adobe-pdf-icon.png'  width='30' height='30'> $path - Microsoft Powerpoint</a><br>" >> $OUTPUT
#  echo "  <UL>" >> $OUTPUT
#  for i in `find "$filepath" -maxdepth 1 -mindepth 1 -type f| sort`; do
#    file=`basename "$i"`
#    echo "    <LI><a href=\"./$path/$file\">$file</a></LI>" >> $OUTPUT
#  done
#  echo "  </UL>" >> $OUTPUT
done