#!/bin/bash

# rsync commands to sync User Files between two Linux machines
# v - increase verbosity
# r - recurse into directories
# u - skip files that are newer on the receiver
# l - copy symlinks as symlinks
# p - preserve permissions
# hard-links - preserve hardlinks
# E - preserve executability
# t - preserve modification times
# force - force deletion of empty dirs
# human-readable - human readable format
# progress - show progress of file transfer

rsync \
	-v \
	-r \
	-l \
	-p \
	--hard-links \
	-E \
	-t \
	--force \
	--human-readable \
	--progress \
	~/Pictures \
	$1
	


