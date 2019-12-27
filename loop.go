package main

import "fmt"

func main() {
    var a int
    var i int
    for i = 1; i<10000000; i++ {
        a=i;
    }
	fmt.Println(a)
}
