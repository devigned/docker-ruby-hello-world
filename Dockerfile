FROM ruby:2.2.0
RUN mkdir /app
WORKDIR /app
ADD . /app
RUN find /app -exec chmod 666 {} -v \;
CMD cd /app && bundle install && bundle exec puma config.ru -p $PORT -v