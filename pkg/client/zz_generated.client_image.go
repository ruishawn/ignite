/*
	Note: This file is autogenerated! Do not edit it manually!
	Edit client_image_template.go instead, and run
	hack/generate-client.sh afterwards.
*/

package client

import (
	api "github.com/weaveworks/ignite/pkg/apis/ignite/v1alpha1"
	meta "github.com/weaveworks/ignite/pkg/apis/meta/v1alpha1"
	"github.com/weaveworks/ignite/pkg/storage"
)

// ImageClient is an interface for accessing Image-specific API objects
type ImageClient interface {
	storage.Cache

	// Get returns a Image object based on a reference string; which can either
	// match the Image's Name or UID, or be a prefix of the UID
	Get(ref string) (*api.Image, error)
	// Set saves a Image into the persistent storage
	Set(image *api.Image) error
	// Delete deletes the API object from the storage
	Delete(uid meta.UID) error
	// List returns a list of all Images available
	List() ([]*api.Image, error)
}

// Images returns the ImageClient for the Client instance
func (c *Client) Images() ImageClient {
	if c.imageClient == nil {
		c.imageClient = newImageClient(c.storage)
	}
	return c.imageClient
}

// Images is a shorthand for accessing Images using the default client
func Images() ImageClient {
	return DefaultClient.Images()
}

// imageClient is a struct implementing the ImageClient interface
// It uses a shared storage instance passed from the Client
type imageClient struct {
	storage.Cache
	storage storage.Storage
}

// newImageClient builds the imageClient struct using the storage implementation
// It automatically fetches all metadata for all API types of the specific kind into the cache
func newImageClient(s storage.Storage) ImageClient {
	c, err := s.GetCache(api.ImageKind)
	if err != nil {
		panic(err)
	}
	return &imageClient{storage: s, Cache: c}
}

// Get returns a Image object based on a reference string; which can either
// match the Image's Name or UID, or be a prefix of the UID
func (c *imageClient) Get(ref string) (*api.Image, error) {
	ob := meta.ObjectMeta{}
	ob.SetUID(meta.UID(ref))
	image := &api.Image{
		ObjectMeta: ob,
	}
	if err := c.storage.Get(image); err != nil {
		return nil, err
	}
	return image, nil
}

// Set saves a Image into the persistent storage
func (c *imageClient) Set(image *api.Image) error {
	return c.storage.Set(image)
}

// Delete deletes the API object from the storage
func (c *imageClient) Delete(uid meta.UID) error {
	return c.storage.Delete(api.ImageKind, uid)
}

// List returns a list of all Images available
func (c *imageClient) List() ([]*api.Image, error) {
	list, err := c.storage.List(api.ImageKind)
	if err != nil {
		return nil, err
	}
	result := []*api.Image{}
	for _, item := range list {
		result = append(result, item.(*api.Image))
	}
	return result, nil
}