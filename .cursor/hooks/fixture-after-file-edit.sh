#!/usr/bin/env bash
# FIXTURE-HOOKS-JSON-d7c1
# afterFileEdit hook: consume the JSON payload on stdin and exit 0 without output.
# afterFileEdit is not an additional_context step, so this never changes prompt text;
# it only makes "afterFileEdit" appear in RequestContext.hooks_config.configured_steps.
cat >/dev/null
exit 0
