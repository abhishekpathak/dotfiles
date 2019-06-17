echo "configuring skil env..."

#Local skil install related configurations
export CLOUD_CREDS_DIR=$HOME/code/skymind/cloudCreds
export SKIL_AWS_CRED_FILE=$CLOUD_CREDS_DIR/skil_aws_cred.json
export SKIL_GCP_CRED_FILE=$CLOUD_CREDS_DIR/skil_gcp_cred.json
#export SKIL_HOME="/Users/abhishek/opt/skil"
#export SKIL_LOG_DIR=$SKIL_HOME/logs
#export SKIL_PID_FILE=$SKIL_HOME/skil.pid
#export SKIL_LICENSE_PATH=/Users/abhishek/code/skymind/skil-server/skilaspects/src/test/resources/skil-trial-license.txt
#export SKIL_PUBLIC_KEY_PATH=/Users/abhishek/code/skymind/skil-server/skil-test-resources/src/main/resources/skil-trial-public.txt
#export SKIL_CLASS_PATH=$SKIL_HOME/lib/*:$SKIL_HOME/native/*:$SKIL_HOME/lib/ext/*:$SKIL_HOME/jackson-2.5.1/*
#   
export SKIL_DEBUG_MODE=false
export SKIL_DEBUG_PORT=8500
export SKIL_DEBUG_FREEZE=n
# alias to  update a skil subpackage in SKIL_HOME
alias skilup="mvn clean package -DskipTests && cp $PWD/target/*.jar $SKIL_HOME/lib && $SKIL_HOME/sbin/stop-skil-daemon && sleep 10 && $SKIL_HOME/sbin/start-skil-daemon"
export SPARK_HOME="/opt/spark"
export HADOOP_HOME="/opt/hadoop"
export SPARK_MASTER_WEBUI_PORT=9095
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
#export HADOOP_NAMENODE_HOST="127.0.0.1"
#export HADOOP_NAMENODE_PORT="8020"