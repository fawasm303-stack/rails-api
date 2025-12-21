FROM ruby:3.3-alpine AS builder
RUN apk add --no-cache build-base git tzdata yaml-dev pkgconf
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install
COPY . .

FROM ruby:3.3-alpine
RUN apk add --no-cache tzdata
WORKDIR /app
COPY --from=builder /usr/local/bundle /usr/local/bundle
COPY --from=builder /app /app
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

