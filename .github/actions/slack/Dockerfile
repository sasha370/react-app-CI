FROM ruby:2.5
WORKDIR /usr/src/app
COPY . .

#COPY Gemfile Gemfile.lock ./
#RUN bundle install

ENTRYPOINT ['ruby', '/usr/src/app/script.rb']
