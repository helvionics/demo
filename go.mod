module github.com/helvionics/demo

go 1.24

require github.com/helvionics/board v0.0.0

require github.com/helvionics/soc v0.0.0 // indirect

replace (
	github.com/helvionics/board => ../board
	github.com/helvionics/soc => ../soc
)
