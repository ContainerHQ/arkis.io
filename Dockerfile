FROM ubuntu:14.04

RUN apt-get update && apt-get install -yq \
    git \
    build-essential \
    ruby \
    ruby-dev \
    zlib1g-dev \
    nodejs

RUN gem install --no-ri --no-rdoc bundler

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN cd /app && bundle install

COPY . /app

EXPOSE 4567

WORKDIR /app

CMD ["bundle", "exec", "middleman", "server"]
