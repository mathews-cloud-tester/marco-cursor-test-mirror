# AGENTS.md (fixture)

FIXTURE-AGENTS-MD-7f3a

This repository is a Cloud Agent fixture. It exists so the environment-build
request-context bake can be compared byte-for-byte against the live first turn.
Every file under this repo carries a unique `FIXTURE-*` marker so each prompt
region can be attributed to exactly one file.

Rules for agents working here:

- Do not remove or rename any `FIXTURE-*` marker.
- Do not add timestamps or other non-deterministic content to any file.
- Treat `src/index.ts` as the only source file; everything else is config.
