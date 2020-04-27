#!/bin/sh -e
# Magic to Provision the Container
# Brian Dwyer - Intelligent Digital Services

# Config Handler
finish() {
  cp -f ~/.serverlessrc ~/.serverless/.serverlessrc
}
trap finish 0
if [ -f ~/.serverless/.serverlessrc ]; then
	cp -f ~/.serverless/.serverlessrc ~/.serverlessrc
fi

# Wrapper & Passthrough
case "$1" in
	* )	serverless "$@";;
esac
