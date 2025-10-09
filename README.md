Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices



Примеры команд: 
# Открыть в стандартном текстовом редакторе Mac
open ~/.dbt/profiles.yml

https://t.me/inzhenerka_dbt_bot - External Database URL

cd ~/dbt_scooters

ping dpg-d3gjbph5pdvs73eilg50-a.frankfurt-postgres.render.com - проверка соедения
- `create extension postgis schema public` - для гео
- `create role finance nologin;` - создать фин. роль

- dbt docs generate
- dbt docs serve


- `dbt run` - запускает только модели
- `dbt build` - запускает модели и тесты
- `nano ~/.dbt/profiles.yml` - открыть файл, для подмены серктов
- `dbt run-operation create_role --args "name: finance"` - создание роли в базе (на примере роли "finance")
- `dbt source freshness` - проверка свежести
- `dbt test -s age_groups` - запуск теста


## Основные команды dbt

- `dbt debug` - проверка подключения к хранилищу данных (проверка профиля)
- `dbt parse` - парсинг файлов проекта (проверка корректности)
- `dbt compile` - компилирует dbt-модели и создает SQL-файлы
- `dbt run` - материализация моделей в таблицы и представления
- `dbt test` - запускает тесты для проверки качества данных
- `dbt seed` - загружает данные в таблицы из CSV-файлов
- `dbt build` - основная команда, комбинирует run, test и seed
- `dbt source freshness` - проверка актуальности данных в источниках
- `dbt docs generate` - генерирует документацию проекта
- `dbt docs serve` - запускает локальный сервер для просмотра документации