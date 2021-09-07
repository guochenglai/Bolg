scp ~/Workspace/Bolg/blog-web/target/blog-web.jar gcl@104.41.185.226:/home/gcl/workspace
nohup java -server -Xms256m -Xmx512m -jar blog-web.jar > nohup.out  2>&1 &