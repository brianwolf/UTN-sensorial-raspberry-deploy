IMAGE_NAME ?= sensorial-raspberry
REPO_NAME ?= utnsensorial

.SILENT:

logs l:
	docker-compose logs -f $(IMAGE_NAME)


install i:
	docker-compose up -d


stop s:
	docker-compose down


remove r:
	docker-compose down
	docker rm -f $(IMAGE_NAME)
	docker volume rm $(IMAGE_NAME)
	docker images | grep $(IMAGE_NAME) | tr -s ' ' | cut -d ' ' -f 2 | xargs -I {} docker rmi $(REPO_NAME)/$(IMAGE_NAME):{}


update u:
	docker-compose down
	git pull
	docker-compose pull
	docker-compose up -d


delete-volume delvol:
	docker-compose down
	docker volume rm $(IMAGE_NAME)
	docker-compose up -d
