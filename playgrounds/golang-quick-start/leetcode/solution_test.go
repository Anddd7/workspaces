package leetcode

import (
	"fmt"
	"testing"
)

func Test_uniquePathsWithObstacles(t *testing.T) {
	inputs := [][]int{
		{0, 0, 0},
		{0, 1, 0},
		{0, 0, 0},
	}
	// inputs := [][]int{
	// 	{1},
	// }

	// result := uniquePathsWithObstacles(inputs)
	result := uniquePathsWithObstacles_optimize(inputs)

	fmt.Println(result)
}

func Test_minDeletionSize(t *testing.T) {
	inputs := []string{"vqyoysnpxbjiitandmvugsqpfmggkv", "uzdfeclxepjzfecmsxrqqkcomtrnvm", "yvhwrsapfffwehdmvqwxstgeexfeua", "awjymwysjpazpgdeqtvdiebfwuapin", "odhihlbvsnximvdwqntdeqptigiyik", "qtrfpwiilxskcieilfvarqbnpdxham", "whvrqkdwuzbcaagsmlfvfbeataygud", "kncwqrmejjmhtfhppsrdmzqperwlww", "hgphuwaumjjibzhvvejpniopjxizie", "bxvccswqevnudqicgrvjecfqpeppob", "nnmvncnpbksdjyjjelsjizliicxpgz", "oifmofrkbgpxlhkcbibwaoiygmqqio", "ekdfyvsumngcfjlydgpmhgjjyfovfi", "fyqryrpkvauhkylmfzhuasjxpqrohx", "rdvjglvpavzdmtobnpjfwdwivhrpsj", "zahrkuiejecndfprwysunznialtfok", "jlrgpfdptlolmlqoophhciiqjnxdkh", "bhbsdukebqvvemrcunboipprcbrfcl", "kreyeyvsmufolvsrzdyeqpuqlieeij", "vgosaxsfnbsndstjohgyknyionhoga", "igmnlibpadandgtugbgxpxwlqbknmv", "mjdbxxprxbjegvtthlrenhfpdlamww", "qfssehellhvqyntozbrizixptppfpr", "utghfndlcturahtcvmqrjyxqfhrsxt", "xvminqhybbiadetniqfwubqxmjokjv", "udfckncwvhcrmxtbkqbqqptymlqnss", "gwwcmterazvyakuvwtyhthfiohlywq", "mpieryurvarojfvhfbbcwepdeoedri", "lpaonsugmlzuweyvrrlgwwdjsgwmoh", "kexyawgkinwvjvzwvofqlthmhaicgs"}

	result := minDeletionSize(inputs)

	fmt.Println(result)
}

func Test_hasPathSum(t *testing.T) {
	// inputs := &TreeNode{
	// 	5,
	// 	&TreeNode{
	// 		4,
	// 		&TreeNode{11,
	// 			&TreeNode{7, nil, nil},
	// 			&TreeNode{2, nil, nil},
	// 		},
	// 		nil,
	// 	},
	// 	&TreeNode{
	// 		8,
	// 		&TreeNode{13, nil, nil},
	// 		&TreeNode{4, nil, &TreeNode{1, nil, nil}},
	// 	},
	// }
	inputs := &TreeNode{
		-2,
		nil,
		&TreeNode{-3, nil, nil},
	}

	result := hasPathSum(inputs, -2)

	fmt.Println(result)
}

func Test_thirdMax(t *testing.T) {
	inputs := []int{
		1, 2, -2147483648,
	}

	result := thirdMax(inputs)

	fmt.Println(result)
}

func Test_divingBoard(t *testing.T) {
	result := divingBoard(1, 2, 3)

	fmt.Println(result)
}

func Test_respace(t *testing.T) {
	result := respace(
		[]string{
			"looked", "just", "like", "her", "brother",
		},
		"jesslookedjustliketimherbrother",
	)

	fmt.Println(result)
}

func Test_maxProfit(t *testing.T) {
	result := maxProfit(
		[]int{
			1, 2, 3,
		},
	)

	fmt.Println(result)
}

func Test_intersect(t *testing.T) {
	result := intersect(
		[]int{4, 9, 5},
		[]int{9, 4, 9, 8, 4},
	)

	fmt.Println(result)
}

func Test_minimumTotal(t *testing.T) {
	result := minimumTotal(
		[][]int{
			{2},
			{3, 4},
			{6, 5, 7},
			{4, 1, 8, 3},
		},
	)

	fmt.Println(result)
}

func Test_isBipartite(t *testing.T) {
	result := isBipartite(
		[][]int{
			{3},
			{2, 4},
			{1},
			{0, 4},
			{1, 3},
		},
	)

	fmt.Println(result)
}
func Test_searchInsert(t *testing.T) {
	result := searchInsert(
		[]int{
			1, 3, 5, 6,
		}, 2,
	)

	fmt.Println(result)
}

func Test_minArray(t *testing.T) {
	result := minArray(
		[]int{
			// 3, 4, 5, 1, 2,
			// 2, 2, 2, 0, 1,
			// 1, 3, 5,
			// 1, 1,
			// 3, 1, 3,
			// 10, 1, 10, 10, 10,
		},
	)

	fmt.Println(result)
}

func Test_minPathSum(t *testing.T) {
	result := minPathSum(
		[][]int{
			{1, 3, 1},
			{1, 5, 1},
			{4, 2, 1},
		},
	)

	fmt.Println(result)
}

func Test_integerBreak(t *testing.T) {
	result := integerBreak(
		10,
	)

	fmt.Println(result)
}

func Test_canFinish(t *testing.T) {
	result := canFinish(
		3,
		[][]int{
			{1, 0},
			{1, 2},
			{0, 1},
		},
	)

	fmt.Println(result)
}
func Test_rob(t *testing.T) {
	result := rob(
		&TreeNode{
			3,
			&TreeNode{3, &TreeNode{1, nil, nil}, &TreeNode{3, nil, nil}},
			&TreeNode{5, nil, &TreeNode{1, nil, nil}},
		},
	)

	fmt.Println(result)
}

func Test_sortedListToBST(t *testing.T) {
	result := sortedListToBST(
		&ListNode{
			Val: -10,
			Next: &ListNode{
				Val: -3,
				Next: &ListNode{
					Val: 0,
					Next: &ListNode{
						Val: 5,
						Next: &ListNode{
							Val:  9,
							Next: nil,
						},
					},
				},
			},
		},
	)

	fmt.Println(result)
}
