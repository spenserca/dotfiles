export AWS_SDK_LOAD_CONFIG=true
export AWS_REGION=us-east-1
export AWS_PROFILE=xilution-shared
export AWS_XRAY_CONTEXT_MISSING=LOG_ERROR

# load from .bashrc
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

if [ -f ~/.local_bashrc ]; then
    source ~/.local_bashrc
fi
