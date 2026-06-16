# DealLens Skills

> Open-source Claude & Cursor Skills for company intelligence — research any business in 60 seconds, right inside your AI assistant.

[![GitHub stars](https://img.shields.io/github/stars/trinhhuy/deallens-skills?style=social)](https://github.com/trinhhuy/deallens-skills)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Skills count](https://img.shields.io/badge/skills-5-blue)](https://github.com/trinhhuy/deallens-skills)

## What is this?

A curated set of **Agent Skills** that turn Claude or Cursor into a business intelligence assistant. Whether you're:

- A **sales rep** prepping for a meeting
- A **job seeker** researching a potential employer
- An **angel investor** doing diligence on a startup
- A **founder** analyzing competition
- A **journalist** researching a company

These skills turn `"research stripe.com"` into a structured intelligence brief with cited sources, recent signals, and tailored insights — without leaving your chat.

## Quick demo

Without skill installed:
> **You**: "Tell me about Linear"
> **Claude**: "Linear is a project management tool. It was founded around 2019 and provides issue tracking. They offer subscription plans..." *(generic, possibly outdated)*

With `company-research` skill installed:
> **You**: "Research Linear"
> **Claude**: *Actively searches the web, fetches Linear's blog, checks recent news, then returns a structured brief with TL;DR, signals, key people, and sources.*

See [`company-research/examples/linear_brief.md`](./company-research/examples/linear_brief.md) for a full example of the target output format. *(Illustrative — live runs use current public sources.)*

## The 5 skills

| Skill | What it does | Best for |
|---|---|---|
| [`company-research`](./company-research/) | Comprehensive intelligence brief on any company | Everyone — foundation skill |
| [`interview-prep`](./interview-prep/) | Tailored prep for job interviews + interviewer research | Job seekers |
| [`sales-prep`](./sales-prep/) | Sales meeting prep + outreach draft generation | Sales/BD/Founders |
| [`investor-due-diligence`](./investor-due-diligence/) | Preliminary investment diligence with bull/bear analysis | Angels, VCs, M&A |
| [`competitive-analysis`](./competitive-analysis/) | Competitive intelligence on companies and markets | Strategy, PMs, Founders |

## Install

### Option 1: Quick install (recommended)

```bash
git clone https://github.com/trinhhuy/deallens-skills.git
cd deallens-skills
./install.sh
```

The installer prompts for **Claude Desktop** or **Cursor**, then copies the skill(s) you choose.

### Option 2: Manual install (Claude Desktop)

1. Find your Claude Desktop skills folder:
   - **macOS**: `~/Library/Application Support/Claude/skills/`
   - **Windows**: `%APPDATA%\Claude\skills\`
   - **Linux**: `~/.config/Claude/skills/`

2. Copy any skill folder into it:
   ```bash
   cp -r company-research ~/Library/Application\ Support/Claude/skills/
   ```

3. Restart Claude Desktop.

### Option 3: Manual install (Cursor)

Copy skill folders to your personal skills directory:

```bash
mkdir -p ~/.cursor/skills
cp -r company-research ~/.cursor/skills/
```

Or add them to a project repo under `.cursor/skills/` to share with your team.

Restart Cursor or start a new agent session so skills are picked up.

### Option 4: Claude Code

In Claude Code, point to a skill directory:

```bash
claude --skills ./company-research
```

### Option 5: Cherry-pick

Don't want all 5? Copy only the folder(s) you need.

## Usage examples

After installing, talk naturally:

```
"Research stripe.com"
"I have an interview at Anthropic next week, help me prep"
"Help me prep for tomorrow's sales call with Linear"
"Do diligence on this startup: example.com"
"Compare Notion, Coda, and Airtable"
"Who competes with Vercel?"
```

The relevant skill triggers automatically based on your intent.

## How it works

Skills are **Markdown instruction files** that teach the agent how to perform a workflow well. No API server, no infrastructure, no monthly subscription for the skills themselves.

When you ask a relevant question, the agent:
1. Matches your intent to a skill's `description`
2. Reads `SKILL.md` instructions
3. Uses available web search / fetch tools to gather current data
4. Returns output in the defined format

Everything runs inside your AI session. Web research queries use your assistant's built-in search tools (and your existing subscription quota).

## Costs

**Zero infrastructure cost** for these skills. You pay only for your Claude Pro/Max or Cursor subscription. Each research query typically uses 1–3 messages worth of quota — no additional fees from this repo.

## Quality philosophy

These skills follow strict rules:
- Every claim cited with a source URL
- Distinguish facts from inferences
- Never fabricate data ("Insufficient public data" beats hallucination)
- Date all time-sensitive information
- Scannable output structure
- Honest tone (no marketing fluff, no false enthusiasm)

## What these skills are NOT

- Not a replacement for ZoomInfo/Apollo/Crunchbase (no contact data, no proprietary databases)
- Not real-time monitoring (no persistent tracking — query when needed)
- Not a CRM (no data storage between conversations)
- Not investment or legal advice (synthesis of public info only)

For deeper functionality (CRM sync, persistent monitoring, premium data sources), see [Future: MCP version](#future-mcp-version) below.

## Contributing

Contributions welcome! See [CONTRIBUTING.md](./CONTRIBUTING.md).

Quick ways to help:
- **Bug reports**: skill output wrong or missing → [open an issue](https://github.com/trinhhuy/deallens-skills/issues)
- **Better examples**: add real briefs to `company-research/examples/`
- **Skill improvements**: PRs to `SKILL.md` or reference files

## Roadmap

Skills planned for future releases:

- `pricing-research` — pricing benchmarking for SaaS comparisons
- `domain-monitor` — event notifications (requires MCP integration)
- `employee-research` — public info on key team members
- `vc-mapping` — investor analysis and matching
- `acquisition-target` — M&A candidate evaluation

## Future: MCP version

For users wanting **persistent monitoring, CRM sync, and team features**, a paid MCP server may build on these skills. Star this repo if you want updates when that ships.

## License

MIT — see [LICENSE](./LICENSE). Use freely, fork freely, sell what you build with these freely.

## Credits

Built by [@trinhhuy](https://github.com/trinhhuy). Inspired by researching companies manually before every meeting.

If these skills save you time:
- Star this repo
- Share with colleagues who'd benefit
- Open a PR or issue if something can be better

---

**Questions?** [Open a discussion](https://github.com/trinhhuy/deallens-skills/discussions). **Issues?** [Open a GitHub issue](https://github.com/trinhhuy/deallens-skills/issues).
