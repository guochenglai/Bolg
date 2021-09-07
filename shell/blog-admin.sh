scp ~/Workspace/Bolg/blog-web/target/blog-admin.jar gcl@104.41.185.226:/home/gcl/workspace
nohup java -server -Xms256m -Xmx512m -jar blog-admin.jar --spring.profiles.active=prod > nohup.out  2>&1 &