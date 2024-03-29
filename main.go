package main

import (
  _ "embed"
  "fmt"
  "github.com/KoduIsGreat/wails-go-release-template/internal"
  "github.com/KoduIsGreat/wails-go-release-template/pkg/counter"
  "github.com/wailsapp/wails"
)

//go:embed frontend/build/main.js
var js string

//go:embed frontend/build/main.css
var css string

func main() {
  fmt.Println(internal.Version)
  app := wails.CreateApp(&wails.AppConfig{
    Width:  1024,
    Height: 768,
    Title:  "wails-go-release-template",
    JS:     js,
    CSS:    css,
    Colour: "#131313",
  })
  app.Bind(&counter.Counter{})
  app.Run()
}
