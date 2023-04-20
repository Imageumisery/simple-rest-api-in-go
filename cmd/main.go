package main

import (
	"log"
	"todo"
	"todo/pkg/handler"
)

func main() {
	srv := new(todo.Server)
	handler := new(handler.Handler)
	if err := srv.Run("8080", handler.InitRoutes()); err != nil {
		log.Fatalf("error occured while running http server: %s", err.Error())
	}
}
