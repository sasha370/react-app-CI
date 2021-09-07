FROM ruby:2.5
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
COPY . .

RUN bundle install

ENTRYPOINT ["ruby", "script.rb"]
