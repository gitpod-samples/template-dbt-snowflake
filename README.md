# A dbt template on Gitpod

This is a [dbt](https://www.getdbt.com/) template configured for ephemeral cloud development environments on [Gitpod](https://www.gitpod.io/). The project is based on the famous [jaffle_shop example](https://github.com/dbt-labs/jaffle_shop/).

## Connecting to Snowflake

Before you can connect to Snowflake, you need to create the following six [environment variables in Gitpod](https://gitpod.io/user/variables). This template uses Snowflake's [key pair authentication method](https://docs.snowflake.com/en/user-guide/key-pair-auth). By changing the environment variables and adapting the `profiles.yml`, it is possible to connect to Snowflake using the other methods that are listed in the [dbt documentation](https://docs.getdbt.com/reference/warehouse-setups/snowflake-setup). Since this config includes your private key, we encourage you to only use this for testing. Please check [this blog](https://www.gitpod.io/blog/signing-git-commits-on-gitpod-with-1-password) post on how to manage your SSH keys with 1password.

- `DBT_SNOWFLAKE_USER`: your username
- `DBT_SNOWFLAKE_PRIVATE_KEY`: the content of the private SSH key file, newlines should be replaced with whitespaces
- `DBT_SNOWFLAKE_ACCOUNT`: the address of your Snowflake instance
- `DBT_SNOWFLAKE_WH`: the name of the warehouse
- `DBT_SNOWFLAKE_DB`: the name of the database
- `DBT_SNOWFLAKE_SCHEMA`: the name of the schema you want to use for dbt

Please check the [dbt configuration](https://docs.getdbt.com/reference/profiles.yml) if you want to connect to any other data warehouse.

## Next Steps

Click the button below to start a new development environment:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/gitpod-samples/template-dbt-snowflake)

The workspace will then try to connect to your data warehose. To use the models in this example project you need to run the following commands.

1. `dbt seed`: to materialize the CSVs
2. `dbt run`: to run the models
3. `dbt test`: to test all models

## Get Started With Your Own Project

### A new project

Click the above "Open in Gitpod" button to start a new workspace. Once you're ready to push your first code changes, Gitpod will guide you to fork this project so you own it.

### An existing project

To get started with dbt on Gitpod, add a [`.gitpod.yml`](./.gitpod.yml) to any of your existing dbt projects. To learn more, please see the [Getting Started](https://www.gitpod.io/docs/getting-started) documentation.
