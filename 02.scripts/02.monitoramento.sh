#!/bin/bash

echo "Uso de CPU:"
top -bn1 | head -5

echo ""
echo "Memória:"
free -h

echo ""
echo "Disco:"
df -h
