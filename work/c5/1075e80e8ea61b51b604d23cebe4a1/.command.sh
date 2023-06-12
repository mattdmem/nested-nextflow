#!/bin/bash -euo pipefail
# Output nextflow params object to JSON
    echo '{
    "help": false,
    "version": false,
    "fastq": "/Users/Matt.Parker/wc/wf-tb-amr/test_data/fastq",
    "out_dir": "output",
    "sample": null,
    "sample_sheet": null,
    "aws_image_prefix": null,
    "aws_queue": null,
    "disable_ping": false,
    "analyse_unclassified": false,
    "process_label": "wftemplate",
    "monochrome_logs": false,
    "validate_params": true,
    "show_hidden_params": false,
    "schema_ignore_params": "show_hidden_params,validate_params,monochrome_logs,aws_queue,aws_image_prefix,wf",
    "wf": {
        "fastcat_stats": true,
        "example_cmd": [
            "--fastq test_data/reads.fastq.gz"
        ],
        "container_sha": "shaee16e78afd054a8cec95a293277f113abba597e5",
        "agent": null
    }
}' > params.json