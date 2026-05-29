# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Salesforce DX project (mtrproject2) targeting API v66.0, deployed to the `mtrorg4` org. Contains sample Apex classes demonstrating OOP concepts and one Account trigger that auto-creates related Contacts on insert.

## Development Commands

### Org & Deployment

```bash
sf org login web --instance-url https://login.salesforce.com --alias mtrorg4
sf project deploy start                                          # deploy all
sf project deploy start --metadata ApexClass:ClassName           # deploy one class
sf project deploy start --metadata ApexTrigger:TriggerName       # deploy one trigger
sf project retrieve start                                        # pull from org
sf apex run test                                                 # run Apex tests in org
```

### Code Quality

```bash
npm run prettier          # format all: Apex, JS, HTML, XML, JSON, YAML
npm run prettier:verify   # check formatting without writing
npm run lint              # ESLint on Aura and LWC JS only
```

### LWC Testing (Jest)

```bash
npm run test:unit           # run all LWC Jest tests
npm run test:unit:watch     # watch mode
npm run test:unit:coverage  # generate coverage report
```

Pre-commit hooks (Husky + lint-staged) automatically run Prettier on all staged files, ESLint on Aura/LWC JS, and Jest on affected LWC files.

## Architecture

### Apex Class Categories

- **Domain/OOP examples**: `Person`, `Student`, `Employee`, `Product`, `Address` — standalone classes with no Salesforce DML, used purely to demonstrate OOP patterns (constructors, inheritance, method overloading).
- **Utility classes**: `MathUtility`, `Calculator`, `DiscountCalculator`, `StaticAndNonStaticMethods` — static math/business logic helpers.
- **Trigger handler**: `AccountTrigger` — subscribes to all Account events; currently only the `after insert` context is implemented. Logic is inline (no separate handler class).

### AccountTrigger Logic

On `after insert`: iterates `Trigger.new`, builds a `Contact` list with `FirstName = LastName = acc.Name` and `AccountId = acc.Id`, then inserts only after checking `Schema.sObjectType.Contact.isCreateable()` and FLS on all three fields.

### Configuration Files

- `sfdx-project.json` — package directory (`force-app`), namespace (empty), API version
- `.sf/config.json` — default target org (`mtrorg4`)
- `config/project-scratch-def.json` — scratch org shape
- `eslint.config.js` — flat ESLint config covering Aura, LWC, and Jest mock files
- `.prettierrc` — Prettier rules with `prettier-plugin-apex`

## Key Conventions

- **Single trigger per object**: All Account logic stays in `AccountTrigger`. Add a handler class when logic grows beyond a few contexts.
- **Static boolean guard**: Add a static flag on the handler class to prevent recursive trigger execution.
- **CRUD/FLS before DML**: Always guard inserts/updates with `Schema.sObjectType.X.isCreateable()` and field-level `isCreateable()` checks.
- **`with sharing`**: All classes use `with sharing` to enforce record-level sharing rules.
- **Meta XML**: Every `.cls` and `.trigger` file needs a paired `-meta.xml` with `<apiVersion>66.0</apiVersion>`.
