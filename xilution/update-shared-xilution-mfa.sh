#!/bin/bash

MFA_CODE=${1}

unset AWS_PROFILE

~/repos/xilution/xilution-scripts/update-xilution-mfa-profile.sh $AWS_SHARED_ACCOUNT_ID $AWS_USER_ID ${MFA_CODE}