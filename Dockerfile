FROM ruby:2.7.1

LABEL maintainer=​"carlosvazquez@outlook.com"

RUN apt-get update -yqq

RUN apt-get install -yqq --no-install-recommends nodejs vim

RUN curl https://deb.nodesource.com/setup_12.x | bash
RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install -y nodejs yarn postgresql-client

ADD Gemfile /usr/src/app/
ADD Gemfile.lock /usr/src/app/
WORKDIR /usr/src/app
RUN bundle install
ADD . /usr/src/app

RUN bundle install

CMD [ "rails", "webpacker:install" ]

COPY entrypoint.sh /usr/bin/

RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

EXPOSE 5432

# RUN bin/rake assets:precompile
