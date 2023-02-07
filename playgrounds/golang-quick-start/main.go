package main

import (
	"fmt"
)

func main() {
	fmt.Println("test")
}

type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}

func evaluateTree(root *TreeNode) bool {
	if root.Val == 3 {
		return evaluateTree(root.Left) && evaluateTree(root.Right)
	}
	if root.Val == 2 {
		return evaluateTree(root.Left) || evaluateTree(root.Right)
	}
	return root.Val == 1
}
