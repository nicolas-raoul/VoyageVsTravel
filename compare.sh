#!/bin/sh

DATE="20121125"
echo "Stats for $DATE"

echo "Number of entries in recent changes edits (including deletions/blocks):"
echo "WV: `wc -l < wv$DATE`"
echo "WT: `wc -l < wt$DATE`"

echo "Number of article edits:"
echo "WV: `grep 'diff | hist' wv$DATE | wc -l`"
echo "WT: `grep 'diff | hist' wt$DATE | wc -l`"
