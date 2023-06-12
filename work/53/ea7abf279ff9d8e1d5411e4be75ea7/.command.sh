#!/bin/bash -euo pipefail
mkdir -p out/barcode44
    echo '{
    "barcode": "barcode44",
    "type": "test_sample",
    "alias": "barcode44"
}' > metamap.json
    mv metamap.json seqs/seqs.fastq.gz stats/fastcat_stats out/barcode44
