#!/bin/bash

echo "Setting up GitHub repository structure..."

mkdir -p .github/ISSUE_TEMPLATE
mkdir -p .github/workflows

mv bug_report.txt .github/ISSUE_TEMPLATE/ 2>/dev/null
mv feature_request.txt .github/ISSUE_TEMPLATE/ 2>/dev/null
mv PULL_REQUEST_TEMPLATE.txt .github/ 2>/dev/null
mv SECURITY.md .github/ 2>/dev/null
mv FUNDING .github/ 2>/dev/null
mv ci.yml .github/workflows/ 2>/dev/null
mv SUPPORT.md .github/ 2>/dev/null
mv CODE_OF_CONDUCT.md .github/ 2>/dev/null
mv MAINTAINERS .github/ 2>/dev/null
mv roadmap.txt .github/ 2>/dev/null

echo "Repository structure is ready."

