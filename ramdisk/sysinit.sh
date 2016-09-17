#!/system/bin/sh
#Execute all files in /system/etc/init.d, and send the output to /cache/initlog
echo "Executing sysinit.sh" > /cache/initlog
for FILE in /system/etc/init.d/*; do
  echo "Executing $FILE" >> /cache/initlog
  chmod 755 $FILE
  sh $FILE >> /cache/initlog 2>&1
done
echo "Done!" >> /cache/initlog
