git clone -b local https://github.com/shellyfung/chatgpt-web.git

cd ./service
nohup pnpm start > service.log 2>&1 &
echo "Start service complete!"


cd ..
echo "" > front.log
nohup pnpm dev > front.log 2>&1 &
echo "Start front complete!"
# tail -f front.log
