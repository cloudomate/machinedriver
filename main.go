package main

import (
	"github.com/rancher/machine/libmachine/drivers/plugin"
	"github.com/cloudomate/machinedriver/g42"
)

func main() {
	plugin.RegisterDriver(g42.NewDriver("", ""))
}
