#!/bin/bash

export PORT=5108

cd ~/www/tasktracker
./bin/tasktracker stop || true
./bin/tasktracker start

