#!/bin/sh -l

echo "::group::linting directory: $1"

echo java -jar /target/CFLint-1.5.0-all.jar -d -text -folder "$1"
java -jar /target/CFLint-1.5.0-all.jar -d -folder "$1"

echo results=`cat cflint-result.txt`
results=`cat cflint-result.txt`
# results="${results//$'\n'/''}"
# results="${results//$'\r'/''}"

echo "::set-output name=results::$results"

echo "::endgroup::"
