FROM ruby:2.2.0
RUN mkdir /app
WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN chmod 777 /app && bundle install
ADD . /app
CMD bundle exec puma config.ru -p $PORT -v