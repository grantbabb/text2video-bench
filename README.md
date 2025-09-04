Implementation of AnimateDiff
https://github.com/guoyww/AnimateDiff

This deployment uses a serverless, container-based approach.

Example usage:
python -m scripts.animate --config configs/prompts/1_animate/1_1_animate_RealisticVision.yaml



This CloudFormation template creates:

Two S3 Buckets:

models bucket (with stack name prefix)
text2video bucket (with stack name prefix)


Networking Infrastructure:

VPC with public and private subnets
Internet Gateway and routing tables
Security groups for ALB, Lambda, and DocumentDB


Application Load Balancer:

Internet-facing ALB with target groups
HTTP listener on port 80


API Gateway:

REST API with three endpoints: /v1/prompt, /v1/render, /v1/generate
Each endpoint configured to call its respective Lambda function


Lambda Functions:

Three Lambda functions for each API endpoint
The generate Lambda includes DocumentDB connection code
VPC configuration for the generate Lambda to access DocumentDB


DocumentDB:

DocumentDB cluster named "videos"
Single instance in the cluster
Located in private subnets with appropriate security groups



Key features of the v1/generate Lambda function:

Connects to the DocumentDB cluster using pymongo
Uses environment variables for connection parameters
Includes error handling for database connections
Inserts a sample document into the "generations" collection

To deploy this template, you'll need to provide a password for the DocumentDB cluster. The template will create all resources with proper security configurations and networking setup.