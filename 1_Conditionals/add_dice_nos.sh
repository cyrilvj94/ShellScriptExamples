#!/bin/bash
#Add dice numbers
echo $(( (RANDOM % 6 + 1) + (RANDOM % 6 + 1)))
