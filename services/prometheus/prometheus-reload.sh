#!/bin/bash

curl -X POST http://{{ project_external_ip }}:9090/-/reload
