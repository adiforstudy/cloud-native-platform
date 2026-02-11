# Rollback Procedure

## Scenario
If a release is faulty.

## Steps

1. Edit values.yaml
   Set image tag to previous version.

2. Commit and push.

3. Sync ArgoCD.

## Example

Rollback to v0.1.0:

tag: v0.1.0

Then:

argocd app sync api-dev

## Verification

kubectl describe pod | grep Image
