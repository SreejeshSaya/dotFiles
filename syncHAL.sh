#!/bin/bash

# rsync commands to sync User Files between two Linux machines
# v - increase verbosity
# u - skip files that are newer on the receiver
# a - equals -rlptgoD

# r - recurse into directories [NOT IN USE]
# l - copy symlinks as symlinks [NOT IN USE]
# p - preserve permissions [NOT IN USE]
# t - preserve modification times [NOT IN USE]

# hard-links - preserve hardlinks
# E - preserve executability
# force - force deletion of empty dirs
# human-readable - human readable format
# progress - show progress of file transfer
# deleted - delete files if don't exist on source after transfer

rsync \
	-v \
	-a \
	--hard-links \
	-E \
	--force \
	--human-readable \
	--progress \
	--delete-after \
	~/Pictures \
	$1
