# Terraform Provider Infrahub (Terraform Plugin Framework)


## Generate automatic documentation

Documentation is generated automatically using `make generate`, however there are possibilities to add more examples. Examples can be added in `example/` consult `example/README.md` for more information. All documentation is available in `docs/`.


## Prerequisites for deployment

1. Set ENV GPG_FINGERPRINT `export GPG_FINGERPRINT=9A52F2BE41E9C446A902C723B53E44105C84C057`
2. Set ENV GPG_PUBLIC_KEY `export GPG_PUBLIC_KEY=$(gpg --armor --export $GPG_FINGERPRINT)`
3. Set ENV GITHUB_TOKEN `export GITHUB_TOKEN=XXXXX`


## Prerequisites for local development

```bash
#To be able to run this make sure to set the Provider override in the go bin
cat /Users/marco/.terraformrc
provider_installation {

  dev_overrides {
      "registry.terraform.io/marcom4rtinez/infrahub" = "/Users/marco/go/bin"
  }

  # For all other providers, install them directly from their origin provider
  # registries as normal. If you omit this, Terraform will _only_ use
  # the dev_overrides block, and so no other providers will be available.
  direct {}
}
```
