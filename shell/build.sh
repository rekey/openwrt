git pull origin master
./scripts/feeds update -a
./scripts/feeds install -a
make download -j$(nproc)
make V=s -j$(nproc)