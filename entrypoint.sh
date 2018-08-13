#!/bin/sh
set -e

# Prepend "psi-v4" if the first argument is not an executable
if ! type -- "$1" &> /dev/null; then
	set -- psi-v4 "$@"
fi

exec "$@"