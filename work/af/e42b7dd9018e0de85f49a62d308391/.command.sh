#!/bin/bash -euo pipefail
mkdir fastcat_stats
fastcat             -s barcode24             -r fastcat_stats/per-read-stats.tsv             -f fastcat_stats/per-file-stats.tsv                          barcode24             | bgzip -@ 1 > seqs.fastq.gz
