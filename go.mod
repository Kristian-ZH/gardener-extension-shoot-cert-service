module github.com/gardener/gardener-extension-shoot-cert-service

go 1.16

require (
	github.com/Masterminds/goutils v1.1.1 // indirect
	github.com/ahmetb/gen-crd-api-reference-docs v0.2.0
	github.com/frankban/quicktest v1.11.3 // indirect
	github.com/gardener/cert-management v0.5.0
	github.com/gardener/gardener v1.21.0
	github.com/go-logr/logr v0.3.0
	github.com/golang/mock v1.5.0
	github.com/mitchellh/copystructure v1.1.1 // indirect
	github.com/nwaples/rardecode v1.1.0 // indirect
	github.com/onsi/ginkgo v1.14.2
	github.com/onsi/gomega v1.10.5
	github.com/pierrec/lz4 v2.5.2+incompatible // indirect
	github.com/pkg/errors v0.9.1
	github.com/spf13/cobra v1.1.1
	github.com/spf13/pflag v1.0.5
	github.com/ulikunitz/xz v0.5.7 // indirect
	k8s.io/api v0.20.2
	k8s.io/apimachinery v0.20.2
	k8s.io/client-go v11.0.1-0.20190409021438-1a26190bd76a+incompatible
	k8s.io/code-generator v0.20.2
	k8s.io/component-base v0.20.2
	k8s.io/utils v0.0.0-20210111153108-fddb29f9d009
	sigs.k8s.io/controller-runtime v0.8.3
)

replace (
	k8s.io/api => k8s.io/api v0.20.2
	k8s.io/apimachinery => k8s.io/apimachinery v0.20.2
	k8s.io/apiserver => k8s.io/apiserver v0.20.2
	k8s.io/client-go => k8s.io/client-go v0.20.2
	k8s.io/code-generator => k8s.io/code-generator v0.20.2
	k8s.io/component-base => k8s.io/component-base v0.20.2
	k8s.io/helm => k8s.io/helm v2.13.1+incompatible
)
