docker build -f ./TextFilterDockerfile -t yz2297/social-network-text-filter .
docker build -f ./MediaFilterDockerfile -t yz2297/social-network-media-filter .
docker build --no-cache -f ./Dockerfile -t yz2297/social-network-ml-swarm .
# docker build -f ./MediaFilterDebugDockerfile -t yz2297/social-network-media-filter-debug .
# docker build --no-cache -f ./TextFilterDockerfile -t yz2297/social-network-text-filter .
# docker build -f ./TextFilterDockerfile -t yz2297/social-network-text-filter .