#!/bin/bash

AdminUser=$(dscl . -read /Groups/admin GroupMembership | tr ' ' '\n' | grep -v -e _ -e root)

echo "<result>$AdminUser</result>"