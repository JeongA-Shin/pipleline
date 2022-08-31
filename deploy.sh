#인스턴스를 배포하는 쉘 스크립트
EPOSITORY=/home/ubuntu/app
cd $REPOSITORY

APP_NAME=pipleline #1 애플리케이션이 구동 중인지 확인하기 위해 사용할 애플리케이션 이름
JAR_NAME=$(ls $REPOSITORY/build/libs/ | grep '.jar' | tail -n 1)
JAR_PATH=$REPOSITORY/build/libs/$JAR_NAME

CURRENT_PID=$(pgrep -f $APP_NAME)

if [ -z $CURRENT_PID ] #2  현재 인스턴스에서 애플리케이션이 구동중인지 확인하고, 구동 중이면 종료
then
  echo "> 현재 구동중인 애플리케이션이 없으므로 종료하지 않습니다."
else
  echo "> kill -15 $CURRENT_PID"
  sudo kill -15 $CURRENT_PID
  sleep 5
fi

echo "> $JAR_PATH 배포" #3
nohup java -jar /home/ubuntu/app/build/libs/pipeline-1.0.jar > /dev/null 2> /dev/null < /dev/null &