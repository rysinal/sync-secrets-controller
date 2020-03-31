module github.com/xunleii/sync-secrets-operator

go 1.13

require (
	github.com/onsi/ginkgo v1.12.0
	github.com/onsi/gomega v1.9.0
	github.com/pkg/errors v0.9.0 // indirect
	github.com/prometheus/common v0.4.1
	github.com/spf13/pflag v1.0.5
	github.com/thoas/go-funk v0.5.0
	golang.org/x/sys v0.0.0-20200113162924-86b910548bc1 // indirect
	gopkg.in/yaml.v2 v2.2.7 // indirect
	k8s.io/api v0.17.2
	k8s.io/apimachinery v0.17.2
	k8s.io/client-go v0.17.2
	k8s.io/component-base v0.17.2
	k8s.io/klog v1.0.0
	sigs.k8s.io/controller-runtime v0.5.0
)
