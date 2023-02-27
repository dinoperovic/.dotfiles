#!/bin/sh

MODULES=$(cat modules.txt)

for module in $MODULES
do
  echo ""
  echo "=== $module start ==="
  sh -c "cd $module && ./link.sh"
  echo "=== $module end ====="
done

echo ""
echo "Done!"

