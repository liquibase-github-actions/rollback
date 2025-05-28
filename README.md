# Liquibase Rollback Action
Official GitHub Action to run Liquibase Rollback in your GitHub Action Workflow. For more information on how rollback works visit the [Official Liquibase Documentation](https://docs.liquibase.com/commands/home.html).
## Rollback
Rollback changes made to the database based on the specific tag
## Usage
```yaml
steps:
- uses: actions/checkout@v3
- uses: liquibase-github-actions/rollback@v4.32.0
  with:
    # The root changelog file
    # string
    # Required
    changelogFile: ""

    # Tag to rollback to
    # string
    # Required
    tag: ""

    # The JDBC database connection URL
    # string
    # Required
    url: ""

    # Fully-qualified class which specifies a ChangeExecListener
    # string
    # Optional
    changeExecListenerClass: ""

    # Path to a properties file for the ChangeExecListenerClass
    # string
    # Optional
    changeExecListenerPropertiesFile: ""

    # Context string to use for filtering
    # string
    # Optional
    contextFilter: ""

    # The default catalog name to use for the database connection
    # string
    # Optional
    defaultCatalogName: ""

    # The default schema name to use for the database connection
    # string
    # Optional
    defaultSchemaName: ""

    # The JDBC driver class
    # string
    # Optional
    driver: ""

    # The JDBC driver properties file
    # string
    # Optional
    driverPropertiesFile: ""

    # Label expression to use for filtering
    # string
    # Optional
    labelFilter: ""

    # Password to use to connect to the database
    # string
    # Optional
    password: ""

    # [PRO] Enable or disable reporting.
    # bool
    # Optional
    reportEnabled: ""

    # [PRO] The name of the report.
    # string
    # Optional
    reportName: ""

    # [PRO] The path to the directory to generate the report.
    # string
    # Optional
    reportPath: ""

    # [PRO] Setting to prevent the display of exceptions (which might contain SQL) in operation reports. If suppressSql is on, and no value is provided here, it is assumed to also be on.
    # bool
    # Optional
    reportSuppressException: ""

    # [PRO] Setting to prevent the display of changeset SQL in operation reports.
    # bool
    # Optional
    reportSuppressSql: ""

    # Rollback script to execute
    # string
    # Optional
    rollbackScript: ""

    # Tag version to use for multiple occurrences of a tag
    # string
    # Optional
    tagVersion: ""

    # Username to use to connect to the database
    # string
    # Optional
    username: ""

```

### Secrets
It is a good practice to protect your database credentials with [GitHub Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)

## Optional Liquibase Global Inputs
The liquibase rollback action accepts all valid liquibase global options as optional parameters. A full list is available in the official [Liquibase Documentation](https://docs.liquibase.com/parameters/command-parameters.html).

### Example
```yaml
steps:
  - uses: actions/checkout@v3
  - uses: liquibase-github-actions/rollback@v4.32.0
    with:
      changelogFile: ""
      tag: ""
      url: ""
      headless: true
      licenseKey: ${{ secrets.LIQUIBASE_LICENSE_KEY }}
      logLevel: INFO
```

## Feedback and Issues
This action is automatically generated. Please submit all feedback and issues with the [generator repository](https://github.com/liquibase/github-action-generator/issues).
