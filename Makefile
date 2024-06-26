build:
	docker-compose up -d
	docker-compose exec php bin/console doctrine:migrations:diff
	docker-compose exec php bin/console doctrine:migrations:migrate
	docker-compose exec php bin/console lexik:jwt:generate-keypair
	docker-compose exec php bin/console app:film:import src/Infrastructure/System/Mock/import-csv-payload.csv

load_mock_data:
	docker-compose exec php bin/console app:film:import src/Infrastructure/System/Mock/import-csv-payload.csv

test:
	docker-compose exec php bin/console doctrine:database:create --env=test
	docker-compose exec php bin/console doctrine:schema:update --env=test --force
	docker-compose exec php bin/phpunit