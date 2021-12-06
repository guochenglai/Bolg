scp ~/Workspace/Bolg/blog-web/target/blog-web.jar centos01@20.210.96.76:/home/centos01/workspace
nohup java -server -Xms256m -Xmx512m -jar blog-web.jar > nohup.out2  2>&1 &

nohup java -server -Xms256m -Xmx512m -jar blog-web-80.jar > nohup.out3  2>&1 &