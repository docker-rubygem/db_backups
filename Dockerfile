FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.9

RUN gem install db_backups --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["db_backups"]
CMD ["--help"]
