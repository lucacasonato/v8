V8_VERSION = "7.6.203"

setup_v8:
	docker build --build-arg V8_VERSION=${V8_VERSION} --tag augustoroman/v8-lib:${V8_VERSION} docker-v8-lib/
	docker run --name v8 augustoroman/v8-lib:${V8_VERSION}
	docker cp v8:/v8/include include/
	docker cp v8:/v8/lib libv8/
	docker rm v8 ||:
