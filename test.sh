# test.sh
#!/bin/bash
echo "[TEST] Running unit test..."
EXPECTED="hello"
ACTUAL=$(echo "hello")
if [ "$EXPECTED" = "$ACTUAL" ]; then
  echo "[PASS] Test succeeded."
  exit 0
else
  echo "[FAIL] Test failed."
  exit 1
fi
