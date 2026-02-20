# Plan: Clear-Team Sub-agent Migration

## Phase 1: Infrastructure Setup
- [ ] Create `.gemini/agents` directory.
- [ ] Create `.gemini/settings.json` and enable `experimental.enableAgents`.
- [ ] Verify sub-agent discovery by the main agent.

## Phase 2: Persona Migration & Skill Building

### Julian (Marketing & GTM)
- [ ] Define `julian.md` sub-agent.
- [ ] Build out skill: **Signaling Analysis** (High-status vs. Low-status signals).
- [ ] Build out skill: **Competitive Game Theory** (ESS - Evolutionarily Stable Strategy).
- [ ] Assign tools: `google_web_search`, `grep_search`, `read_file`.

### Maya (Product & Metrics)
- [ ] Define `maya.md` sub-agent.
- [ ] Build out skill: **Metabolic ROI Analysis** (Feature value vs. Complexity cost).
- [ ] Build out skill: **Lean Feedback Loops** (Hypothesis-driven development).
- [ ] Assign tools: `read_file`, `find_files`, `get_file_summary`.

### Serra (Architecture & Security)
- [ ] Define `serra.md` sub-agent.
- [ ] Build out skill: **Entropy Management** (Technical debt reduction).
- [ ] Build out skill: **Substrate Resilience** (Security and error handling).
- [ ] Assign tools: `run_shell_command`, `replace`, `write_file`, `context7`.

### Aris (Design & UX)
- [ ] Define `aris.md` sub-agent.
- [ ] Build out skill: **Cognitive Fluency Audits** (Simplification of user flows).
- [ ] Build out skill: **Phenotype Consistency** (Visual design systems).
- [ ] Assign tools: `generate_image`, `generate_icon`, `read_file`.

## Phase 3: Integration & Refinement
- [ ] Update `GEMINI.md` to remove monolithic expert definitions.
- [ ] Update `GEMINI.md` to instruct the main agent on when to delegate to specific sub-agents.
- [ ] Test delegation loops for common startup tasks (e.g., "Analyze this PR for security" -> Serra).
- [ ] Final Clear-Team audit of the new modular architecture.

## Phase 4: Validation (Structural Resilience)
- [ ] Verify that each sub-agent can execute its specialized tools.
- [ ] Verify that token usage is more efficient during expert consultations.
- [ ] Add unit tests or "test cases" in `tests/cases/` to verify expert behavior.
