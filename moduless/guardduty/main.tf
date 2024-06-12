
# Enable GuardDuty
resource "aws_guardduty_detector" "example" {
  enable = true
}

# Enable GuardDuty Malware Protection
resource "aws_guardduty_organization_admin_account" "example" {
  admin_account_id = data.aws_caller_identity.current.account_id
}

resource "aws_guardduty_organization_configuration" "example" {
  detector_id = aws_guardduty_detector.example.id
  auto_enable = true

  depends_on = [
    aws_guardduty_detector.example,
    aws_guardduty_organization_admin_account.example
  ]
}

data "aws_caller_identity" "current" {}


