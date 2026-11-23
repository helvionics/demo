package main

import (
	"board"
	"time"
)

func main() {
	board.InitLED()
	for {
		board.ToggleLED()
		println("tick")
		time.Sleep(500 * time.Millisecond)
	}
}
