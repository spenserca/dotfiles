#!/bin/bash

MFA_CODE=${1}

unset AWS_PROFILE

~/Repositories/Xilution/GitHub/xilution-scripts/update-xilution-mfa-profile.sh $AWS_SHARED_ACCOUNT_ID $AWS_USER_ID ${MFA_CODE}