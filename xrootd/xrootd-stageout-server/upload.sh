source ../../environment
docker login $SWARM
dockerimageid=`docker images | grep xrootd-stageoutserver | grep latest | awk '{print $3}'`
docker tag $dockerimageid $SWARM/xrootd-stageout-server:latest
docker push $SWARM/xrootd-stageout-server
