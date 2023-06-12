#!/bin/bash -euo pipefail
mkdir fastcat_stats
fastcat             -s barcode08             -r fastcat_stats/per-read-stats.tsv             -f fastcat_stats/per-file-stats.tsv                          barcode08             | bgzip -@ 1 > seqs.fastq.gz
