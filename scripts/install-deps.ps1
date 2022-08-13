# tgbot-cpp

git clone https://github.com/reo7sp/tgbot-cpp
cd tgbot-cpp
cmake .
make -j4
make install
cd ..

# nlohmann-json
git clone https://github.com/nlohmann/json
cd json
cmake .
make -j
make install
cd ..

Remove-Item -Path .\tgbot-cpp -Recurse -Force
Remove-Item -Path .\json -Recurse -Force
