docker build -t go-pds
docker run -e  PROJECT=bloomfilter FILE=bloomfilter.go -t go-pds:latest
docker run -e  PROJECT=bloomfilter FILE=hashmap.go -t go-pds:latest
docker run -e  PROJECT=count-min-sketch FILE=count-min-sketch.go -t go-pds:latest
docker run -e  PROJECT=count-min-sketch FILE=hashmap.go -t go-pds:latest
docker run -e  PROJECT=hyperloglog FILE=hyperloglog.go -t go-pds:latest
docker run -e  PROJECT=hyperloglog FILE=hashmap.go -t go-pds:latest
docker run -m 50m --memory-swap=50m --memory-swappiness=0 -e  PROJECT=bloomfilter FILE=bloomfilter.go -t go-pds:latest
docker run -m 50m --memory-swap=50m --memory-swappiness=0 -e  PROJECT=bloomfilter FILE=hashmap.go.go -t go-pds:latest
docker inspect xxx | grep oom -i
