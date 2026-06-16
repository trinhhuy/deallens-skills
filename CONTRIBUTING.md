# Contributing to DealLens Skills

Thanks for your interest in improving these skills! Contributions of all sizes welcome.

## Ways to contribute

### Report bugs (easiest)

[Open an issue](https://github.com/trinhhuy/deallens-skills/issues) with:
- What you asked the agent
- What output you got
- What you expected
- Which skill was triggered (or should have been)
- Which platform (Cursor, Claude Desktop, Claude Code)

### Suggest improvements

Skills get better with use. If you've found:
- A case where the skill produces bad output
- A signal type that should be detected but isn't
- A use case the skill doesn't cover well
- Wording in `SKILL.md` that confuses the agent

→ Open an issue with the example

### Add examples

`company-research/examples/` holds reference briefs that calibrate output quality. Submit PRs with:
- A real company brief you generated (lightly edited for clarity)
- What worked well
- What you'd want improved

Examples should be **real agent output**, not fabricated data. If you use an illustrative example for structure only, mark it clearly at the top (see `linear_brief.md`).

Other skills don't have `examples/` folders yet — add one if you have a strong reference output for that skill.

### Propose new skills

Before building, open an issue with:
- Name and brief description
- Target user persona
- 3–5 example user prompts that should trigger it
- Why it deserves its own skill vs being part of an existing one

We try to keep the skill set focused. Not every business research idea needs its own skill.

### Improve existing skills

PRs welcome for:
- `SKILL.md` instructions (more specific, less ambiguous)
- Description optimization (better triggering)
- New reference files (e.g., new context lens under `company-research/references/`)
- Better output templates

## Quality bar for PRs

Before submitting a PR, your changes should:

1. **Maintain quality philosophy**:
   - Citations required
   - Distinguish facts from inferences
   - No fabrication
   - Date time-sensitive info

2. **Pass smoke tests**: try the skill with 3–5 different inputs and verify it still works

3. **Document changes**: if you modified `SKILL.md`, write what you changed and why in the PR description

4. **Be concise**: `SKILL.md` under 500 lines, reference files under 300

## How to test changes

There's no automated test framework yet (contributions welcome!). For now:

1. Install your modified version locally (see README install options)
2. Test with at least 5 diverse queries
3. Compare output to current `main` version
4. Document differences in the PR

If you want to build a test framework:
- Look at Anthropic's skill-creator patterns
- An eval framework could test trigger accuracy + output quality
- This would be a high-value contribution

## What we won't merge

- Skills that promote specific products/companies
- Skills that compromise privacy (e.g., personal email lookups)
- Skills that fabricate or speculate beyond evidence
- Bloated `SKILL.md` (>500 lines) without strong reason
- "Universal" skills that try to do everything

## Code of conduct

See [CODE_OF_CONDUCT.md](./CODE_OF_CONDUCT.md). Be kind — we're building tools for sales reps, job seekers, investors, and founders. Different perspectives welcome.

## Questions?

- [Open a Discussion](https://github.com/trinhhuy/deallens-skills/discussions)
- [Open an issue](https://github.com/trinhhuy/deallens-skills/issues)
