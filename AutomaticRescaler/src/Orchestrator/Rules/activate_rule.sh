#!/usr/bin/env bash
curl -s -X PUT -H "Content-Type: application/json" http://orchestrator:5000/rule/$1/activate
