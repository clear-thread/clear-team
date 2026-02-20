# Plan: Clear-Team Sub-agent Migration

## Phase 1: Infrastructure Setup
- [x] Create `.gemini/agents` directory.
- [x] Create `.gemini/settings.json` and enable `experimental.enableAgents`.
- [ ] Verify sub-agent discovery by the main agent. (Requires Restart)

## Phase 2: Persona Migration & Skill Building

### Julian (Marketing & GTM)
- [x] Define `julian.md` sub-agent with YAML frontmatter.
- [x] Build out skill: **Signaling Analysis** (High-status vs. Low-status signals).
- [x] Build out skill: **Competitive Game Theory** (ESS - Evolutionarily Stable Strategy).
- [x] Assign tools: `google_web_search`, `grep_search`, `read_file`.

### Maya (Product & Metrics)
- [x] Define `maya.md` sub-agent with YAML frontmatter.
- [x] Build out skill: **Metabolic ROI Analysis** (Feature value vs. Complexity cost).
- [x] Build out skill: **Lean Feedback Loops** (Hypothesis-driven development).
- [x] Assign tools: `read_file`, `find_files`, `get_file_summary`.

### Serra (Architecture & Security)
- [x] Define `serra.md` sub-agent with YAML frontmatter.
- [x] Build out skill: **Entropy Management** (Technical debt reduction).
- [x] Build out skill: **Substrate Resilience** (Security and error handling).
- [x] Assign tools: `run_shell_command`, `replace`, `write_file`, `context7`.

### Aris (Design & UX)
- [x] Define `aris.md` sub-agent with YAML frontmatter.
- [x] Build out skill: **Cognitive Fluency Audits** (Simplification of user flows).
- [x] Build out skill: **Phenotype Consistency** (Visual design systems).
- [x] Assign tools: `generate_image`, `generate_icon`, `read_file`.

## Phase 3: Integration & Refinement
- [x] Update `GEMINI.md` to remove monolithic expert definitions.
- [x] Update `GEMINI.md` to instruct the main agent on when to delegate to specific sub-agents.
- [ ] Test delegation loops for common startup tasks (e.g., "Analyze this PR for security" -> Serra).
- [ ] Final Clear-Team audit of the new modular architecture.

## Phase 4: Validation (Structural Resilience)
- [ ] Verify that each sub-agent can execute its specialized tools.
- [ ] Verify that token usage is more efficient during expert consultations.
- [ ] Add unit tests or "test cases" in `tests/cases/` to verify expert behavior.
