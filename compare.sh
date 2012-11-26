#!/bin/sh

# Find the latest available date
LATEST_DATE=`ls wv* | sort -r | head -n 1 | sed -e "s/wv//"`

# Use date provided on command line, or latest if none provided
DATE=${1:-$LATEST_DATE}
echo "Stats for $DATE"

echo "Number of entries in recent changes edits (including deletions/blocks):"
echo "WV: `wc -l < wv$DATE`"
echo "WT: `wc -l < wt$DATE`"

echo "Number of article edits:"
echo "WV: `grep 'diff | hist' wv$DATE | wc -l`"
echo "WT: `grep 'diff | hist' wt$DATE | wc -l`"
