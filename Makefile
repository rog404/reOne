up:
	docker compose run --rm --service-ports app

drop:
	mix ecto.drop
	MIX_ENV=test mix ecto.drop

create:
	mix ecto.create
	MIX_ENV=test mix ecto.create

migrate:
	mix ecto.migrate
	MIX_ENV=test mix ecto.migrate

seed:
	mix ecto.seeds

reset:
	drop create migrate seed