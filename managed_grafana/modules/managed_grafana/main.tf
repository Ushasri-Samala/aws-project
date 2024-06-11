




resource "aws_iam_role" "grafana_assume_role" {
  name = "tf-grafana-assume"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "grafana.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_policy" "grafana_cw_policy" {
  name        = "grafana_cw_policy"
  path        = "/"
  description = "Allows Amazon Grafana to access CloudWatch"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "AllowReadingMetricsFromCloudWatch",
        Effect = "Allow",
        Action = [
          "cloudwatch:DescribeAlarmsForMetric",
          "cloudwatch:DescribeAlarmHistory",
          "cloudwatch:DescribeAlarms",
          "cloudwatch:ListMetrics",
          "cloudwatch:GetMetricStatistics",
          "cloudwatch:GetMetricData",
          "cloudwatch:GetInsightRuleReport",
        ],
        Resource = "*"
      },
      {
        Sid    = "AllowReadingLogsFromCloudWatch",
        Effect = "Allow",
        Action = [
          "logs:DescribeLogGroups",
          "logs:GetLogGroupFields",
          "logs:StartQuery",
          "logs:StopQuery",
          "logs:GetQueryResults",
          "logs:GetLogEvents",
        ],
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "grafana_cw_policy_attachment" {
  policy_arn = aws_iam_policy.grafana_cw_policy.arn
  role       = aws_iam_role.grafana_assume_role.name
}

resource "aws_grafana_workspace" "project_1" {
  name                  = var.grafana_workspace_name
  account_access_type   = "CURRENT_ACCOUNT"
  authentication_providers = ["AWS_SSO"]
  permission_type        = "SERVICE_MANAGED"
  role_arn               = aws_iam_role.grafana_assume_role.arn
  data_sources           = ["CLOUDWATCH"]
}

resource "aws_grafana_role_association" "admin_role" {
  role         = "ADMIN"
  user_ids     = [var.grafana_admin_user_id]
  workspace_id = aws_grafana_workspace.project_1.id
}
