#!/bin/bash -euo pipefail
mkdir fastcat_stats
fastcat             -s barcode67             -r fastcat_stats/per-read-stats.tsv             -f fastcat_stats/per-file-stats.tsv                          barcode67             | bgzip -@ 1 > seqs.fastq.gz
