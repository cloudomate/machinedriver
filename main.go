package main

import (
	"github.com/rancher/machine/libmachine/drivers/plugin"
	"github.com/masteryodareturns/machinedriver/g42"
)

func main() {
	plugin.RegisterDriver(g42.NewDriver("", ""))
}
