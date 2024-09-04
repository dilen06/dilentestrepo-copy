#!/bin/bash

# This script calculates simple interest

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3
    interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
    echo "The Simple Interest is: $interest"
}

# Read principal, rate, and time from the user
read -p "Enter the Principal amount: " principal
read -p "Enter the Rate of interest: " rate
read -p "Enter the Time period (in years): " time

# Call the function to calculate interest
calculate_simple_interest $principal $rate $time
