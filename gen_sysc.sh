
wget https://accellera.org/images/downloads/standards/systemc/systemc-2.3.3.tar.gz
tar -zxvf systemc-2.3.3.tar.gz
rm systemc-2.3.3.tar.gz
mkdir systemc-2.3.3-built
cd systemc-2.3.3
cmake -B build -DCMAKE_INSTALL_PREFIX=../systemc-2.3.3-built
cd build
make
make install

