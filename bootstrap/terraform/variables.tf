# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "name" {
  description = "EKS Cluster Name and the VPC name"
  type        = string
  default     = "crossplane-blueprints"
}

variable "cluster_version" {
  type        = string
  description = "Kubernetes Version"
  default     = "1.27"
}

variable "capacity_type" {
  type        = string
  description = "Capacity SPOT or ON_DEMAND"
  default     = "SPOT"
}

variable "enable_upbound_aws_provider" {
  type        = bool
  description = "Installs the upbound aws provider"
  default     = true
}

variable "enable_aws_provider" {
  type        = bool
  description = "Installs the contrib aws provider"
  default     = false
}

variable "enable_kubernetes_provider" {
  type        = bool
  description = "Installs the kubernetes provider"
  default     = true
}

variable "enable_helm_provider" {
  type        = bool
  description = "Installs the helm provider"
  default     = true
}

variable "aws_account_id" {
  type = string
}

variable "oidc_provider" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "families" {
  default = [
    "dynamodb",
    "elasticache",
    "iam",
    "kms",
    "lambda",
    "rds",
    "s3",
    "sns",
    "sqs",
    "vpc"
  ]
}

variable "tags" {
  type = map(string)
  default = {}
}

variable "audience" {
  default = "sts.amazonaws.com"
}
