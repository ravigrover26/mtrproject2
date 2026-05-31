---
name: salesforce-apex
description: Salesforce Apex, triggers, test classes, and best practices for Salesforce development.
---

# Salesforce Apex Skill

Use this skill when working on Salesforce Apex, triggers, batch jobs, queueables, callouts, test classes, and related metadata.

## When to Use
- Generating Apex classes, triggers, handlers, services, selectors, or utilities.
- Writing or reviewing Apex test classes.
- Reviewing Apex debug logs.
- Refactoring Salesforce code for bulk safety, security, or maintainability.

## Instructions
- Default to `with sharing` unless there is a strong reason not to.
- Respect CRUD, FLS, and record-level security where applicable.
- Keep Apex bulkified.
- Never place SOQL or DML inside loops.
- Use collections, maps, and sets for multi-record processing.
- Keep triggers thin and move logic into handler or service classes.
- Prefer one trigger per object.
- Write clear, maintainable code with meaningful names.
- Avoid unnecessary abstraction.
- Handle exceptions explicitly.
- Do not expose sensitive data in logs or error messages.

## Testing Guidance
- Create a matching test class for every Apex class.
- Use `@IsTest`.
- Build test data inside the test.
- Cover positive, negative, bulk, and edge cases.
- Use `Test.startTest()` and `Test.stopTest()` when needed.
- Use `System.runAs()` when user context matters.
- Prefer assertions that verify behavior, not just code execution.
- Do not rely on existing org data.

## Response Style
- If the request is ambiguous, ask clarifying questions before generating code.