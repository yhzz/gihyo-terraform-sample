// 参考ページ
// https://github.com/gruntwork-io/terratest/blob/master/test/terraform_http_example_test.go
package test

import (
	"crypto/tls"
	"testing"
	"time"

	http_helper "github.com/gruntwork-io/terratest/modules/http-helper"
	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestWebServerHttpRequest(t *testing.T) {
	opt := terraform.WithDefaultRetryableErrors(
		t,
		&terraform.Options{TerraformDir: "../"},
	)
	// TestWebServerHttpRequest終了時にdestroyを実行
	defer terraform.Destroy(t, opt)
	// init, applyの実行
	terraform.InitAndApply(t, opt)
	// Webサーバのアクセス先アドレスを取得
	url := terraform.Output(
		t,
		opt,
		"web_server_url",
	)
	// 正常にページが表示されることを検証
	http_helper.HttpGetWithRetry(
		t,
		url,
		&tls.Config{},
		200,               // 期待ステータスコード
		"Terratest World", // 期待ボディ
		30,                // 試行回数
		5*time.Second,     // 間隔
	)
}
