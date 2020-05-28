package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello Nav, This is the Go Server")
	})
	log.Fatal(http.ListenAndServe("0.0.0.0:52", nil))
}

