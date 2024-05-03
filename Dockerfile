# Используем базовый образ Ruby 3.3.1
FROM ruby:3.3.1

# Устанавливаем зависимости, такие как PostgreSQL клиент, netcat и ImageMagick,
# удаляем ненужные пакеты и очищаем кеш
RUN apt-get update -qq \
    && apt-get install -y postgresql-client netcat-openbsd imagemagick \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Устанавливаем рабочую директорию в контейнере
WORKDIR /performer

# Копируем Gemfile и Gemfile.lock
COPY Gemfile Gemfile.lock /performer/

# Устанавливаем Bundler, устанавливаем зависимости
RUN gem install bundler \
    && bundle install --jobs 4 --retry 3

# Копируем код приложения
COPY . /performer

# Добавление скрипта для запуска сервера
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
