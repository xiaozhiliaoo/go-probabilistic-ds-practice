package main

import (
	"fmt"
	"log"
	"os"

	"github.com/icrowley/fake"
)

func main() {
	fmt.Println("start...")
	f, err := os.OpenFile("./access.log", os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		log.Println(err)
	}
	//10000000 ten million
	for i := 0; i < 10000000; i++ {
		ip := fake.IPv4()
		if _, err := f.WriteString(ip + "\n"); err != nil {
			log.Println(err)
		}
	}
	fmt.Println("end...")
	f.Close()
}
