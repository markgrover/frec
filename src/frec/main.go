package main

import (
	"database/sql"
	_ "github.com/go-sql-driver/mysql"
	//"fmt"
	"log"
)

func main() {
	db, err := sql.Open("mysql",
		"frec:password@tcp(127.0.0.1:3306)/frec")
	if err != nil {
		log.Fatalf("Couldn't connect to db: %s", err)
	}
	err = db.Ping()
	if err != nil {
		log.Fatalf("Couldn't connect to db: %s", err)
	}
	defer db.Close()
}