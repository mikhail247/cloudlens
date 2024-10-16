# CloudLens

This repository contains the implementation of the CloudLens project. Specifically, 
it includes PDDL domain files representing the AWS model, along with several problem files 
(test cases) adapted from the '[IAM Vulnerable Benchmark](https://github.com/BishopFox/iam-vulnerable)'. Please note that the test cases in 
this repository are not representative of real-world datasets. We plan to share real-world data 
with the research community after proper anonymization.

## Requirements
- [Fast Downward planner](https://www.fast-downward.org/)

## Command Line

```bash
<fast-downward-executable> --alias lama-first <domain-file> <problem-file>
```

## Table of Contents

### PDDL Domain File
- **attackPathDomain.pddl**

### PDDL Problem Files
1. **privesc1** - Create New Policy Version: `privesc1-CreateNewPolicyVersion_problem.pddl`
2. **privesc4** - Create Access Key: `privesc4-CreateAccessKey_problem.pddl`
3. **privesc5** - Create Login Profile: `privesc5-CreateLoginProfile_problem.pddl`
4. **privesc6** - Update Login Profile: `privesc6-UpdateLoginProfile_problem.pddl`
5. **privesc7** - Attach User Policy: `privesc7-AttachUserPolicy_problem.pddl`
6. **privesc8** - Attach Group Policy: `privesc8-AttachGroupPolicy_problem.pddl`
7. **privesc9** - Attach Role Policy: `privesc9-AttachRolePolicy_problem.pddl`
8. **privesc10** - Put User Policy: `privesc10-PutUserPolicy_problem.pddl`
9. **privesc11** - Put Group Policy: `privesc11-PutGroupPolicy_problem.pddl`
10. **privesc12** - Put Role Policy: `privesc12-PutRolePolicy_problem.pddl`
11. **privesc13** - Add User to Group: `privesc13-AddUserToGroup_problem.pddl`
12. **privesc14** - Updating Assume Role Policy: `privesc14-UpdatingAssumeRolePolicy_problem.pddl`
13. **privesc15** - Pass Existing Role to New Lambda, Then Invoke: `privesc15-PassExistingRoleToNewLambdaThenInvoke_problem.pddl`
14. **privesc16** - Pass Role to New Lambda, Then Trigger with New Dynamo: `privesc16-PassRoleToNewLambdaThenTriggerWithNewDynamo_problem.pddl`
15. **privesc17** - Edit Existing Lambda Function with Role: `privesc17-EditExistingLambdaFunctionWithRole_problem.pddl`
16. **privesc18** - Create New Lambda Function with Role: `privesc18-CreateNewLambdaFunctionWithRole_problem.pddl`
17. **privesc** - Assume Role: `privesc-AssumeRole_problem.pddl`
18. **privesc** - SSM Send Command Policy: `privesc-ssmSendCommand-policy_problem.pddl`
19. **privesc** - SSM Start Session Policy: `privesc-ssmStartSession-policy_problem.pddl`

### Real-World Datasets
**will be shared after proper anonymization**
