module terraform-provider-infrahub

go 1.23.3

replace github.com/opsmill/infrahub-sdk-go => ./sdk

require (
	github.com/Khan/genqlient v0.7.0
	github.com/hashicorp/terraform-plugin-framework v1.13.0
	github.com/hashicorp/terraform-plugin-log v0.9.0
	github.com/opsmill/infrahub-sdk-go v0.0.0-00010101000000-000000000000
	golang.org/x/text v0.21.0
)

require (
	github.com/fatih/color v1.16.0 // indirect
	github.com/golang/protobuf v1.5.4 // indirect
	github.com/hashicorp/go-hclog v1.6.3 // indirect
	github.com/hashicorp/go-plugin v1.6.2 // indirect
	github.com/hashicorp/go-uuid v1.0.3 // indirect
	github.com/hashicorp/terraform-plugin-go v0.25.0 // indirect
	github.com/hashicorp/terraform-registry-address v0.2.3 // indirect
	github.com/hashicorp/terraform-svchost v0.1.1 // indirect
	github.com/hashicorp/yamux v0.1.1 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.20 // indirect
	github.com/mitchellh/go-testing-interface v1.14.1 // indirect
	github.com/oklog/run v1.0.0 // indirect
	github.com/sergi/go-diff v1.3.2-0.20230802210424-5b0b94c5c0d3 // indirect
	github.com/vektah/gqlparser/v2 v2.5.11 // indirect
	github.com/vmihailenco/msgpack/v5 v5.4.1 // indirect
	github.com/vmihailenco/tagparser/v2 v2.0.0 // indirect
	golang.org/x/net v0.28.0 // indirect
	golang.org/x/sys v0.27.0 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20240814211410-ddb44dafa142 // indirect
	google.golang.org/grpc v1.67.1 // indirect
	google.golang.org/protobuf v1.35.1 // indirect
)
