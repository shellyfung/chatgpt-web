git pull

cd ./service
pnpm install
nohup pnpm start > service.log 2>&1 &
echo "Start service complete!"


cd ..
pnpm bootstrap
echo "" > front.log
nohup pnpm dev > front.log 2>&1 &
echo "Start front complete!"
# tail -f front.log
