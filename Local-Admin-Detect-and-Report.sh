#!/bin/bash

AdminUser=$( dscl . -read /Groups/admin GroupMembership | sed 's/GroupMembership: //' | tr ' ' '\n' | grep -v -e _ -e root )

echo "<result>$AdminUser</result>"
