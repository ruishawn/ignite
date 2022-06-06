module github.com/weaveworks/ignite

go 1.16

replace github.com/docker/distribution => github.com/docker/distribution v0.0.0-20190711223531-1fb7fffdb266

// TODO: Remove this when https://github.com/vishvananda/netlink/pull/554 is merged
replace github.com/vishvananda/netlink => github.com/twelho/netlink v1.1.1-ageing

require (
	github.com/alessio/shellescape v1.2.2
	github.com/c2h5oh/datasize v0.0.0-20200112174442-28bbd4740fee
	github.com/containerd/console v1.0.2
	github.com/containerd/containerd v1.5.13
	github.com/containerd/go-cni v1.0.2
	github.com/containernetworking/plugins v0.9.1
	github.com/containers/image v3.0.2+incompatible
	github.com/coreos/go-iptables v0.5.0
	github.com/docker/cli v0.0.0-20200130152716-5d0cf8839492
	github.com/docker/docker v20.10.6+incompatible
	github.com/docker/go-connections v0.4.0
	github.com/firecracker-microvm/firecracker-go-sdk v0.22.0
	github.com/freddierice/go-losetup v0.0.0-20170407175016-fc9adea44124
	github.com/go-openapi/spec v0.19.8
	github.com/gogo/googleapis v1.4.1 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/goombaio/namegenerator v0.0.0-20181006234301-989e774b106e
	github.com/gorilla/mux v1.7.4 // indirect
	github.com/krolaw/dhcp4 v0.0.0-20190909130307-a50d88189771
	github.com/lithammer/dedent v1.1.0
	github.com/miekg/dns v1.1.29
	github.com/mitchellh/go-homedir v1.1.0
	github.com/nightlyone/lockfile v1.0.0
	github.com/opencontainers/go-digest v1.0.0
	github.com/opencontainers/image-spec v1.0.2
	github.com/opencontainers/runtime-spec v1.0.3-0.20210326190908-1c3f411f0417
	github.com/otiai10/copy v1.1.1
	github.com/pkg/errors v0.9.1
	github.com/pkg/sftp v1.11.0
	github.com/prometheus/client_golang v1.7.1
	github.com/sirupsen/logrus v1.8.1
	github.com/spf13/cobra v1.0.0
	github.com/spf13/pflag v1.0.5
	github.com/stretchr/testify v1.7.0
	github.com/vishvananda/netlink v1.1.1-0.20201029203352-d40f9887b852
	github.com/weaveworks/libgitops v0.0.0-20200611103311-2c871bbbbf0c
	go.opencensus.io v0.23.0 // indirect
	golang.org/x/crypto v0.0.0-20210921155107-089bfa567519
	golang.org/x/sys v0.0.0-20220412211240-33da011f77ad
	golang.org/x/term v0.0.0-20201126162022-7de9c90e9dd1
	golang.org/x/tools v0.1.10 // indirect
	google.golang.org/genproto v0.0.0-20210416161957-9910b6c460de // indirect
	google.golang.org/grpc v1.37.0 // indirect
	gotest.tools v2.2.0+incompatible
	k8s.io/apimachinery v0.21.0
	k8s.io/code-generator v0.21.0
	k8s.io/gengo v0.0.0-20210203185629-de9496dff47b // indirect
	k8s.io/kube-openapi v0.0.0-20210305001622-591a79e4bda7
	sigs.k8s.io/yaml v1.2.0
)
