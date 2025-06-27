

if [ ! -d "./pandemonium_engine/" ]; then
  echo "Folder ./pandemonium_engine/ does exist. Aborting."
  exit 1
fi

./pandemonium_engine/bin/pandemonium.x11.opt.tools.64 --gdnative-generate-json-api ./pandemonium_engine/modules/gdnative/api.json

if [ ! -d "gdnative_python/pandemonium_headers/" ]; then
  echo "Folder gdnative_python/pandemonium_headers/ does exist. Aborting."
  exit 1
fi

cd gdnative_python/pandemonium_headers/
rm -Rf *

cp -R ../../pandemonium_engine/modules/gdnative/include/* .
cp ../../pandemonium_engine/modules/gdnative/api.json .
cp ../../pandemonium_engine/modules/gdnative/gdnative_api.json .

cd ../..
