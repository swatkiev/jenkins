# jenkins
# Выполнить команду ./jenkins.sh для docker решения (предварительно выполнить chmod +x jenkins.sh) либо docker-compose up -d для docker-compose решения
# Можно добавить параметр --restart="always" в файле jenkins.sh либо раскоментировать параметр # restart: always в файле docker-compose.yml
# Чтобы получить первичный пароль при установке Jenkins в веб интерфейсе выполните:
# docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword для docker решения
# docker exec %container_name% cat /var/jenkins_home/secrets/initialAdminPassword для docker-compose решения (%container_name% - название контейнера в yml файле)
