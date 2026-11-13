#!/bin/bash
read -p "indiquez un nombre de minutes: " total
hours=$(($total / 60))
minutes=$(($total % 60))
echo "$total minutes = $hours heures et $minutes minutes"