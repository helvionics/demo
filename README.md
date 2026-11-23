# Helvionics Demos

Out-of-tree TinyGo applications targeting Helvionics board and SoC modules.

## Examples

### `blinky`

Uses virtual `import "board"` to blink the onboard LED and print `tick` every 500 ms. The same application builds unchanged for any board implementing `board.InitLED()` and `board.ToggleLED()`.

## Building

Build a UF2 image for Pimoroni Tiny 2350:

```bash
tinygo build -o blinky-tiny2350.uf2 -target=pkg:github.com/helvionics/board/pimoroni/tiny-2350 ./blinky
```

Build the exact same code for Seeed XIAO RP2350:

```bash
tinygo build -o blinky-xiao.uf2 -target=pkg:github.com/helvionics/board/seeed/xiao-rp2350 ./blinky
```

> **Note:** When developing against local checkouts of `github.com/helvionics/board` and `github.com/helvionics/soc`, ensure `go.mod` `replace` directives (or a `go.work` file) point to your local directories.
