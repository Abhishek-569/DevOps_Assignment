#!/bin/bash
echo $var_name > /python-docker/new.txt
python3 -m  flask  run --host=0.0.0.0

