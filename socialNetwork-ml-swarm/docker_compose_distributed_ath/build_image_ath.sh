ssh -t yz2297@ath-9 'cd /home/yz2297/Software/deathstar_suite/socialNetwork-distributed-ath-write-user-tl && docker build -f ./Dockerfile -t yz2297/social-network-ml-swarm .'
ssh -t yz2297@ath-8 'cd /home/yz2297/Software/deathstar_suite/socialNetwork-distributed-ath-write-user-tl && docker build -f ./Dockerfile -t yz2297/social-network-ml-swarm .'
ssh -t yz2297@ath-3 'cd /home/yz2297/Software/deathstar_suite/socialNetwork-distributed-ath-write-user-tl && docker build -f ./Dockerfile -t yz2297/social-network-ml-swarm .'
# ssh -t yz2297@ath-2 'cd /home/yz2297/Software/deathstar_suite/socialNetwork-distributed-ath-write-user-tl && docker build -f ./Dockerfile -t yz2297/social-network-ml-swarm .'
# ssh -t yz2297@ath-5 'cd /home/yz2297/Software/deathstar_suite/socialNetwork-distributed-ath-write-user-tl && docker build -f ./Dockerfile -t yz2297/social-network-ml-swarm .'
ssh -t yz2297@ath-1 'cd /home/yz2297/Software/deathstar_suite/socialNetwork-distributed-ath-write-user-tl && docker build -f ./Dockerfile -t yz2297/social-network-ml-swarm .'

# docker build --no-cache -f ./TextFilterDockerfile -t yz2297/social-network-text-filer .
# docker build --no-cache -f ./Dockerfile -t yz2297/social-network-ml-swarm .
# docker build --no-cache -f ./TextFilterDockerfile -t yz2297/social-network-text-filer .
# docker build -f ./TextFilterDockerfile -t yz2297/social-network-text-filer .