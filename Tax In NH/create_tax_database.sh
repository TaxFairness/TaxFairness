#! /bin/sh
#
# Create a new database named Property_in_Lyme.sqlite
# Read the file of commands to create the tables & views and initialize them
# Then import the CSV files

# This is cool because it's idempotent - it can be run multiple times using
# the same data and not change the result.

# Discard earlier database if it exists
test -f Taxes_in_NH.sqlite && rm Taxes_in_NH.sqlite

# Re-create database tables and views
sqlite3 Taxes_in_NH.sqlite < Create_Taxes_In_NH.sql

# Import the concatenated CSV files into the tables
sqlite3 Taxes_in_NH.sqlite < Import_Tax_Tables.sql

open Taxes_in_NH.sqlite
