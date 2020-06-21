module main

import flag
import os

struct Args {
mut:
	additional []string
	fp &flag.FlagParser
}

fn parse_args() Args {
	mut fp := flag.new_flag_parser(os.args)

	mut args := Args{fp: fp}

	fp.application('gene')
	fp.version('v0.0.1')
	fp.description('Gene language')

	fp.skip_executable()

	// TODO revert when vlang #5039 is fixed
	additional := fp.finalize() or { []string{} }

	args.additional = additional
	return args
}

fn main() {
	args := parse_args()

	if args.additional.len() > 0 {
	}
}