default: buildrelease

buildgo: 
	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

builddocker: 
	docker build -t localhost:5000/httpshutdown .

pushdocker:
	docker push localhost:5000/httpshutdown 

cleanup: 
	rm main

buildrelease: buildgo builddocker pushdocker cleanup
