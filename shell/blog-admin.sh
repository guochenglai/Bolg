scp ~/Workspace/Bolg/blog-web/target/blog-admin.jar centos01@20.210.96.76:/home/centos01/workspace
nohup java -server -Xms256m -Xmx512m -jar blog-admin.jar  > nohup.out  2>&1 &