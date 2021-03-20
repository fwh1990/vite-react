#!/usr/bin/env bash

string_modules='md avi swf wma wmv mpg mpeg mov'

cat > ./src/misc/module.d.ts <<EOF
/**
 * This file is generated by $(basename $0) automatically.
 */
import 'vite/client';
EOF

for name in $string_modules
do
  cat >> ./src/misc/module.d.ts <<EOF

declare module '*.$name' {
  const content: string;
  export = content;
}
EOF
done
