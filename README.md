# Salesforce CI/CD

This repository contains a sample Salesforce CI/CD pipeline using GitHub Actions and Salesforce CLI. It demonstrates how to set up a Scratch Org, deploy source code, retrieve source code, and manage predefined data and metadata.

## Scratch Org
You can create a new Scratch Org by running the following command:

```bash
sf org create scratch --target-dev-hub DevHub
```

You can define a duration for the Scratch Org by using the `--duration-days` option, for example:

```bash
sf org create scratch --target-dev-hub DevHub --duration-days 30
```

The duration can be set to a maximum of 30 days. If you do not specify a duration, the default is 7 days.

### Deploy Source Code
To deploy the source code to the Scratch Org, use:

```bash
sf project deploy start --target-org {{ScratchOrg}}
```

If you have Source Tracking enabled, you can preview the changes that will be deployed by running:

```bash
sf project deploy preview --target-org {{ScratchOrg}}
```

### Retrieve Source Code

To retrieve the source code from the Scratch Org, use:

```bash
sf project retrieve start --target-org MyScratchOrg
```

If you have Source Tracking enabled, you can preview the changes that will be retrieved by running:

```bash
sf project retrieve preview --target-org MyScratchOrg
```

### Predefined Data

Predefined data can be found in the `scratch-org/data` directory. You can import this data into your Scratch Org using the following command:

```bash
sf data import tree --target-org MyScratchOrg --plan scratch-org/data/plan.json
```

### Predefined Metadata

Predefined metadata can be found in the `scratch-org/metadata` directory. This metadata can be deployed to your Scratch Org using the following command:

```bash
sf project deploy start --target-org MyScratchOrg  --source-dir scratch-org/metadata
```

### Delete Scratch Org
To delete the Scratch Org, use the following command:

```bash
sf org delete scratch --target-org MyScratchOrg
```