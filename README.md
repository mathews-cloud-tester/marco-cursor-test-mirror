# marco-cursor/test — Cloud Agent request-context fixture

FIXTURE-README-b8d3

This repository exercises every repo-derived input that the Cloud Agent
environment-build bake (`exec-daemon prebuild-request-context-cache`) puts into
the first-turn `RequestContext`, so a byte-identity comparison between the
legacy and minimal first-token flows can attribute every prompt region to a
file.

| File | Marker | RequestContext field |
| --- | --- | --- |
| `AGENTS.md` | `FIXTURE-AGENTS-MD-7f3a` | `rules[]` (global) and `cloud_rule` |
| `packages/app/AGENTS.md` | `FIXTURE-NESTED-AGENTS-MD-2b91` | `rules[]` (nested global, file-scoped) |
| `.cursor/rules/always-apply.mdc` | `FIXTURE-RULE-ALWAYS-c4e8` | `rules[]` (global) |
| `.cursor/rules/typescript-globs.mdc` | `FIXTURE-RULE-GLOB-TS-9d12` | `rules[]` (fileGlobbed `**/*.ts`) |
| `.cursor/rules/agent-requestable.mdc` | `FIXTURE-RULE-DESC-5a77` | `rules[]` (agentFetched) |
| `.cursor/skills/fixture-alpha/SKILL.md` | `FIXTURE-SKILL-ALPHA-e1f0` | `agent_skills[]` |
| `.cursor/skills/fixture-beta/SKILL.md` | `FIXTURE-SKILL-BETA-6b3c` | `agent_skills[]` |
| `.cursor/agents/fixture-reviewer.md` | `FIXTURE-SUBAGENT-8e4d` | `custom_subagents[]` |
| `.cursor/CLOUD.md` | `FIXTURE-CLOUD-MD-3c5f` | `cloud_rule` (after `AGENTS.md`) |
| `.cursorrules` | `FIXTURE-CURSORRULES-a0b2` | `rules[]` (global) |
| `.cursor/settings.json` | plugin `vercel` | plugin manifest (not baked) |
| `.cursor/hooks.json` | `FIXTURE-HOOKS-JSON-d7c1` | `hooks_config.configured_steps` (serve-time only) |
| `.cursor/environment.json` | `echo fixture-install` | build definition, not prompt content |

Every file is deterministic: no timestamps, no generated content.
