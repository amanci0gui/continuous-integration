lint:
	  docker run --rm -it -v $(pwd):/app -w /app golangci/golangci-lint golangci-lint run controllers/ database/ models/ routes/
test:
	  docker compose exec app go test main_test.go
start: 
		docker compose up -d 
ci: start lint test
	 	 
