ssh -t yz2297@ath-9 'docker rm -f $(docker ps -q -a)'
ssh -t yz2297@ath-8 'docker rm -f $(docker ps -q -a)'
ssh -t yz2297@ath-3 'docker rm -f $(docker ps -q -a)'
ssh -t yz2297@ath-1 'docker rm -f $(docker ps -q -a)'
# ssh -t yz2297@ath-2 'docker rm -f $(docker ps -q -a)'
# ssh -t yz2297@ath-5 'docker rm -f $(docker ps -q -a)'
ssh -t yz2297@ath-9 'docker volume rm $(docker volume ls -q)'
ssh -t yz2297@ath-8 'docker volume rm $(docker volume ls -q)'
ssh -t yz2297@ath-3 'docker volume rm $(docker volume ls -q)'
ssh -t yz2297@ath-1 'docker volume rm $(docker volume ls -q)'
# ssh -t yz2297@ath-2 'docker volume rm $(docker volume ls -q)'
# ssh -t yz2297@ath-5 'docker volume rm $(docker volume ls -q)'
ssh -t yz2297@ath-9 'docker rmi yz2297/social-network-microservices-distributed-ath'
ssh -t yz2297@ath-8 'docker rmi yz2297/social-network-microservices-distributed-ath'
ssh -t yz2297@ath-3 'docker rmi yz2297/social-network-microservices-distributed-ath'
ssh -t yz2297@ath-1 'docker rmi yz2297/social-network-microservices-distributed-ath'
#ssh -t yz2297@ath-2 'docker rmi yz2297/social-network-microservices-distributed-ath'
#ssh -t yz2297@ath-5 'docker rmi yz2297/social-network-microservices-distributed-ath'
