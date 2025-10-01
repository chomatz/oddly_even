#!/bin/env sh

while IFS="," read email forward; do
	echo "setting mail mail forwarding for ${email} to ${forward}"
	cmd="zmprov ma ${email} zimbraMailForwardingAddress ${forward}"
	echo ${cmd}
done < ${1}
