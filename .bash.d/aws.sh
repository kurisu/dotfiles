function awsauth() {
  aws sts get-session-token --serial-number arn:aws:iam::400329419115:mfa/kai --token-code $@
}
