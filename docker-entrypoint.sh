#!/bin/sh -e
# Magic to Provision the Container
# Brian Dwyer - Intelligent Digital Services

# Wrapper & Passthrough
case "$1" in
	* )	serverless "$@";;
esac
