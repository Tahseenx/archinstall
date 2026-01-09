#!/bin/bash
chromium --app="file://$(realpath "$1")" >/dev/null 2>&1 &
