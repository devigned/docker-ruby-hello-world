FROM ruby:2.2.0
ENV BUNDLE_PATH /app/.gems
RUN mkdir /app
WORKDIR /app
ADD . /app
RUN find /app -exec chmod 777 {} \; && chmod 777 /app && chmod 777 /app && chmod -R 777 /usr/local/bundle
CMD bundle install && bundle exec puma config.ru -p $PORT -v