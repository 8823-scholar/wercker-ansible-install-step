export APT_LIST_PATH=$WERCKER_CACHE_DIR/wercker/apt-lists
mkdir -p $APT_LIST_PATH
#sudo rm -rf /var/lib/apt/lists
#sudo ln -s $APT_LIST_PATH/ /var/lib/apt/lists
#if [ $( find $WERCKER_CACHE_DIR/wercker/aptupdated -mtime -1 | wc -l ) -eq 0 ] ;
#then 
  sudo add-apt-repository -y ppa:rquillo/ansible;
  sudo apt-get update; 
  touch $WERCKER_CACHE_DIR/wercker/aptupdated;  
#fi

sudo apt-get install -y ansible python-simplejson python-keyczar
