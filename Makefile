all:

telegram-server-build:
	cd telegram-bot-api && \
		docker build -t sevkin/telegram-bot-api .

telegram-server-push:
	docker push sevkin/telegram-bot-api:latest