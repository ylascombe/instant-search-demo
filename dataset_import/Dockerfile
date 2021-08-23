FROM ruby:3.0.2

LABEL maintainer="yohan.lascombe@gmail.com"
RUN gem install algoliasearch

RUN mkdir /dataset_import/
WORKDIR /dataset_import/
COPY . .
CMD ["./push.rb", ${APPLICATION_ID}, ${ADMIN_API_KEY}, ${INDEX_NAME}]

# TODO do not run with root user
