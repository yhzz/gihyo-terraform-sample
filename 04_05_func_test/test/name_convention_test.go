// 参考ページ
// https://github.com/gruntwork-io/terratest/blob/master/test/terraform_aws_example_plan_test.go
package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestSampleServerNameConvention(t *testing.T) {
	// ワーキングディレクトリ、インプット変数の値を指定
	opt := terraform.WithDefaultRetryableErrors(
		t,
		&terraform.Options{
			TerraformDir: "../",
			Vars: map[string]interface{}{
				"env":         "dev",
				"unique_name": "function-test",
			},
			PlanFilePath: "plan.out",
		})
	// init, plan, showの実行
	plan := terraform.
		InitAndPlanAndShowWithStruct(t, opt)
	// アウトプット値を取得
	output := plan.RawPlan.
		OutputChanges["sample_server_name"].After
	//期待した値と一致しているかを検証
	assert.Equal(
		t,
		"dev-function-test-server",
		output,
	)
}
