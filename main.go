package main

import (
	"fmt"

	"github.com/RKrahulkumar123/Build-Time-Variables-in-Go/config"
)

func main() {
	fmt.Println("My Go App Version:", config.Version)
	fmt.Println("My Go App Commit Hash:", config.CommitHash)
	fmt.Println("My Go App Build Time:", config.BuildTime)
}
