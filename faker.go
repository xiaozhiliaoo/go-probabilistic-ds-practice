package main

import (
	"fmt"

	"github.com/icrowley/fake"
)

func main() {
	fmt.Println("start...")
	for i := 0; i < 10000000; i++ {
		fmt.Println(string(fake.IPv4()))
	}
	fmt.Println("end...")
}
