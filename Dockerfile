FROM ruby:2.2.0
RUN mkdir /app
WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install
ADD . /app
CMD bundle exec rackup config.ru -p 8080 -s thin -o 0.0.0.0
# Expose ports.
EXPOSE 8080