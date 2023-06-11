FROM elixir:1.15

RUN apt-get update -y  && apt-get install inotify-tools -y

RUN mix local.hex --force && mix local.rebar --force

RUN mix archive.install hex phx_new

WORKDIR /app

COPY . /app