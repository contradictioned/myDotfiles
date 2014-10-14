#!/bin/bash
acpi -b | grep "Battery" | awk '{print $5}' | cut -c 1-5
