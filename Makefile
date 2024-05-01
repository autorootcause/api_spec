install-openapi:
	go install github.com/deepmap/oapi-codegen/cmd/oapi-codegen@latest

api: install-openapi
	oapi-codegen --package=client --generate models,client api.yaml > openapi.gen.go