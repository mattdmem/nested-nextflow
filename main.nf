#!/usr/bin/env nextflow

nextflow.enable.dsl=2

include { fastq_ingress } from './lib/fastqingress'
include {getVersions; getParams; makeReport; output; collectFastqIngressResultsInDir; pipeline} from './wf-template/main.nf'


// entrypoint workflow
WorkflowMain.initialise(workflow, params, log)
workflow {

    if (params.disable_ping == false) {
        Pinguscript.ping_post(workflow, "start", "none", params.out_dir, params)
    }

    samples = fastq_ingress([
        "input":params.fastq,
        "sample":params.sample,
        "sample_sheet":params.sample_sheet,
        "analyse_unclassified":params.analyse_unclassified,
        "fastcat_stats": params.wf.fastcat_stats,
        "fastcat_extra_args": ""])

    pipeline(samples)
    pipeline.out.fastq_ingress_results
    | map { [it, "fastq_ingress_results"] }
    | concat (
        pipeline.out.report.concat(pipeline.out.workflow_params)
        | map { [it, null] }
    )
    | output
}

if (params.disable_ping == false) {
    workflow.onComplete {
        Pinguscript.ping_post(workflow, "end", "none", params.out_dir, params)
    }

    workflow.onError {
        Pinguscript.ping_post(workflow, "error", "$workflow.errorMessage", params.out_dir, params)
    }
}
