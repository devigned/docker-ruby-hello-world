FROM ruby:2.2.0
ENV BUNDLE_PATH /app/.gems
RUN mkdir /app
WORKDIR /app
ADD . /app
RUN bundle install
CMD bundle exec puma config.ru -p $PORT -v