# A dbt template on Gitpod

This is a [dbt](https://www.getdbt.com/) template configured for ephemeral cloud development environments on [Gitpod](https://www.gitpod.io/). The project is based on the famous [jaffle_shop example](https://github.com/dbt-labs/jaffle_shop/).

## Connecting to BigQuery

Before you can connect to BigQuery, you need to create the following four [environment variables in Gitpod](https://gitpod.io/user/variables).

- `DBT_SERVICE_ACCOUNT`: the content of a valid service account JSON
- `DBT_PROJECT`: the name of your dbt project, in this case it is `gitpod_sample`
- `DBT_DEV_DATASET`: this depends on personal preference, e.g. `dbt_dev`
- `DBT_LOCATION`: the location of your BigQuery project, i.e. `US` or `EU`

Please check the [dbt configuration](https://docs.getdbt.com/reference/profiles.yml) if you want to connect to any other data warehouse.

## Next Steps

Click the button below to start a new development environment:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/gitpod-samples/template-dbt-bigquery)

The workspace will then try to connect to your data warehose. To use the models in this example project you need to run the following commands.

1. `dbt seed`: to materialize the CSVs
2. `dbt run`: to run the models
3. `dbt test`: to test all models

## Get Started With Your Own Project

### A new project

Click the above "Open in Gitpod" button to start a new workspace. Once you're ready to push your first code changes, Gitpod will guide you to fork this project so you own it.

### An existing project

To get started with dbt on Gitpod, add a [`.gitpod.yml`](./.gitpod.yml) to any of your existing dbt projects. To learn more, please see the [Getting Started](https://www.gitpod.io/docs/getting-started) documentation.
