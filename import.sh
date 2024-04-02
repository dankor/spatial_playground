#!/bin/bash

if [ ! -d "shp" ]; then
  echo "Directory $shp_dir does not exist."
  exit 1
fi

for file in "shp"/*.shp; do
  filename=$(basename -- "$file")
  filename="${filename%.*}"
  
  docker exec -it db sh -c "shp2pgsql $file $filename | psql -d spatial"
  
  if [ $? -eq 0 ]; then
    echo "Successfully imported $file"
  else
    echo "Error importing $file"
  fi
done

