# AWS Amplify CLI Docker Image

> Docker image that bundles the AWS Amplify CLI in a Node.js environment.

## Using

The image's `ENTRYPOINT` is the `amplify` command. Pass arguments as needed to the container to execute Amplify commands.

## Configuring

Configure the Amplify CLI using a combination of environment variables and your project configuration. 

Key environment variables:

* `AWS_ACCESS_KEY_ID` - AWS IAM user access key ID to authenticate to AWS APIs
* `AWS_SECRET_ACCESS_KEY` - AWS IAM user access key secret to authenticate to AWS APIs
* `AWS_REGION` - AWS region your Amplify project is hosted in
* `AMPLIFY_ENV` - Amplify environment name for current execution. This is used to configure the `local-env-info.json` file

Mount your project at `/app` in the container such that `/app/amplify` is the path to the Amplify configuration.
This makes the Amplify configuration files available to the CLI commands.
