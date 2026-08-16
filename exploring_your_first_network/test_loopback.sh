#!/usr/bin/env bash
ping -c 4 "$(ip -4 addr show scope host | grep -m1 'inet ' | tr -s ' ' | cut -d ' ' -f 3 | cut -d '/' -f 1)"
