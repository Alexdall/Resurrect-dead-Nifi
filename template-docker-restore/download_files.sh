dname=$source_copy
docker cp nifi-$dname:/opt/nifi/nifi-current/conf/ .
docker cp nifi-$dname:/opt/nifi/nifi-current/database_repository/ .
docker cp nifi-$dname:/opt/nifi/nifi-current/state/ .
docker cp nifi-$dname:/opt/nifi/nifi-current/flowfile_repository/ .
docker cp nifi-$dname:/opt/nifi/nifi-current/provenance_repository/ .
docker cp nifi-$dname:/opt/nifi/nifi-current/content_repository/ .
docker cp nifi-$dname:/opt/nifi/nifi-current/logs/ .


chmod a+rw -R state/
chmod a+rw -R conf/
chmod a+rw -R database_repository/
chmod a+rw -R flowfile_repository/
chmod a+rw -R provenance_repository/
chmod a+rw -R content_repository/
chmod a+rw -R logs/

#ls -larth ls -larth flow.xml.gz nifi* state/local/

