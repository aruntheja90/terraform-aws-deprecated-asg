# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

variable "service-name" {
  type        = "string"
  description = "the name of the service"
}

variable "cluster-role" {
  default     = "app"
  description = "primary role/function of the cluster"
}

variable "environment" {
  type        = "string"
  description = "the created resources will belong to this infrastructure environment"
}

variable "asg-vpc-zone-identifier" {
  type        = "list"
  description = "the created ASGs will spawn instances to these subnet IDs"
}

variable "asg-lb-target_group-arn" {
  type        = "string"
  description = "the created ASGs will be attached to this target group"
}

variable "asg-min-capacity" {
  default     = 1
  description = "the created ASGs will have this number of instances at minimum"
}

variable "asg-desired-capacity" {
  type        = "string"
  description = "the created ASGs will be spawned initially with this capacity"
}

variable "asg-max-capacity" {
  default     = 5
  description = "the created ASGs will have this number of instances at maximum"
}

variable "asg-wait-timeout" {
  type        = "string"
  description = "A maximum duration that Terraform should wait for ASG instances to be healthy before timing out"
}

variable "asg-health-check-type" {
  type        = "string"
  default     = "ELB"
  description = "controls how ASG health checking is done"
}

variable "asg-health-check-grace-period" {
  type        = "string"
  default     = "300"
  description = "Time, in seconds, to wait for new instances before checking their health"
}

variable "asg-tags" {
  default     = []
  description = "the created ASGs will have these tags"
}

variable "instance-sgs" {
  type        = "list"
  description = "the created instances will spawn instances with these security groups"
}

variable "instance-profile" {
  type        = "string"
  description = "the created instances will spawn instances with this IAM profile"
}

variable "instance-key-name" {
  default     = ""
  description = "the created instances will spawn instances with this SSH key name"
}

variable "instance-type" {
  type        = "string"
  description = "the created instances will spawn instances with this type"
}

variable "instance-ami-id" {
  type        = "string"
  description = "the created instances will spawn instances with this AMI"
}

variable "instance-monitoring" {
  default     = true
  description = "the created instances will spawn instances with enhanced monitoring if enabled"
}

variable "instance-ebs-optimized" {
  default     = true
  description = "the created instances will spawn EBS-optimized instances if enabled"
}

variable "instance-user-data" {
  default     = ""
  description = "The user data to launch instances with. Use the value of data.template_cloudinit_config.rendered" // https://www.terraform.io/docs/providers/template/d/cloudinit_config.html#rendered
}
