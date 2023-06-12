#!/bin/bash -euo pipefail
mkdir -p out/barcode47
    echo '{
    "barcode": "barcode47",
    "type": "test_sample",
    "alias": "barcode47"
}' > metamap.json
    mv metamap.json seqs/seqs.fastq.gz stats/fastcat_stats out/barcode47
