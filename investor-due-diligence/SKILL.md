---
name: investor-due-diligence
description: Conduct preliminary due diligence on a startup or company for investment evaluation, covering business model, traction, team quality, competitive positioning, and risk factors. Use this skill when the user is evaluating a potential investment, doing diligence on a startup, looking at a deal, considering investing in a company, or analyzing a target for M&A. Triggers on phrases like "do diligence on X", "evaluate this startup", "thinking about investing in", "research this company for investment", "is X a good investment", "DD on [company]", or combinations of company names with investment/funding/acquisition context. Trigger proactively when user shares a company + any investor context, even without explicitly saying "diligence".
---

# Investor Due Diligence

This skill helps angel investors, VCs, M&A analysts, and operator-investors conduct preliminary diligence on a target company before deeper engagement.

## When to use

Trigger when context indicates investment evaluation. Examples:
- "Do diligence on this startup: example.com"
- "Should I invest in X?"
- "Evaluate this Series A deal"
- "Research [company] for acquisition consideration"
- "What's the bull case and bear case for X?"

## Scope of this skill

This skill provides PRELIMINARY diligence — public information synthesis. It is NOT a substitute for:
- Direct founder calls
- Financial statement review
- Customer references
- Legal/IP diligence
- Cap table analysis

Always end with what the user should investigate next that requires private information.

## Process

### Step 1: Use company-research skill foundation

Run `company-research` for baseline. Apply the `investor_lens.md` reference for context.

### Step 2: Business model deep dive

Beyond what they do, capture HOW they make money:

- **Revenue model**: subscription, transaction, ads, hybrid, freemium-to-paid
- **Pricing**: tiers if public, ACV estimates
- **Customer mix**: enterprise vs mid-market vs SMB vs consumer
- **Geographic distribution**: US-centric or global
- **Unit economics signals**: gross margin estimates, CAC clues from marketing posts
- **Revenue concentration**: known mega-customer dependency?

### Step 3: Traction analysis

Search for growth signals:

- **Revenue numbers**: any disclosed in press, podcasts, founder essays
- **Customer count**: logos disclosed, customer page count
- **Headcount trajectory**: from LinkedIn over time
- **Geographic expansion**: new office announcements
- **Product launch cadence**: how fast are they shipping
- **Hiring composition**: weighted toward GTM (revenue scaling) or product (still building)?

Note: be EXPLICIT about data confidence. "Estimated $20M ARR per [podcast]" is weaker than "Disclosed $50M ARR per S-1".

### Step 4: Competitive analysis

- Direct competitors (3-5 with brief description)
- Indirect competitors (alternative solutions)
- Market dynamics: consolidating? Growing? Mature? Disrupted?
- Their differentiation claim vs reality
- Defensibility: network effects? Data moat? Switching costs? IP? None?

Be skeptical. Most "moats" claimed by startups don't hold up.

### Step 5: Team quality

For founders:
- Background: prior companies, exits, education
- Founder-market fit signals
- Public thought leadership (essays, podcasts, talks)
- Track record indicators
- Red flags: high-profile failures, controversies

For broader team:
- Quality of senior hires (where from, how senior previously)
- Advisory board if disclosed
- Engineering blog quality (signals product depth)
- Tenure stability of execs

### Step 6: Risk assessment

Be thorough and honest:

**Market risks**:
- Declining market?
- Regulatory threats?
- Platform dependency (Apple/Google/AWS could squeeze)?

**Competitive risks**:
- Well-funded incumbents about to enter?
- Open source alternative undermining?
- Commoditization pressure?

**Team risks**:
- Key person dependency?
- Recent senior departures?
- Founder conflict signals?

**Product risks**:
- Tech debt visible from job postings?
- Customer complaints in reviews?
- Bad Glassdoor / Blind feedback?

**Financial risks**:
- High burn signals from hiring volume?
- Recent layoffs?
- Funding history suggesting struggle (down rounds, repeated bridge rounds)?

### Step 7: Investment thesis & questions

Synthesize:

**Bull case** (3-5 bullet points): why this could be a great investment

**Bear case** (3-5 bullet points): why this could fail

**Questions to ask founder**:
- Strategic questions (where they're going)
- Execution questions (how they'll get there)
- Financial questions (gross margins, NRR, payback)
- Team questions (key hires planned, attrition)

**Data to request before commitment**:
- Cohort retention tables
- NRR by customer segment
- Burn multiple
- Detailed P&L
- Customer references (specific names, not just "yes we can provide some")

**Comparable transactions** (if you can find them):
- Similar companies that exited
- At what stage and multiple

## Output format

Use this structure:

📋 **Executive Summary** (3-5 sentences: what they do, traction, key question)
💰 **Business Model & Unit Economics**
📈 **Traction Signals**
⚔️ **Competitive Landscape**
👥 **Team Assessment**
⚠️ **Risk Factors** (be thorough)
🐂 **Bull Case**
🐻 **Bear Case**
❓ **Diligence Questions**
🔍 **Information Needed Before Investment**

## Quality rules

- Distinguish FACTS from CLAIMS: companies make claims, third parties confirm facts
- Distinguish DISCLOSED from INFERRED: be explicit about confidence levels
- Don't over-rely on training data — current data is critical for investment decisions
- Date all time-sensitive information
- If you can't find something important (revenue, burn), say so explicitly

## Tone

- Analytical, not promotional
- Investor-friendly language (TAM, NRR, payback, moat, comparable)
- Highlight gaps and unknowns
- Bull and bear case should both be honest, not strawman

## What this skill is NOT

- Not legal due diligence
- Not technical code review
- Not a substitute for founder calls
- Not financial modeling
- Not a recommendation to invest or not invest — synthesis of public info only

## Disclaimer to include in output

End every brief with:

> **Note**: This brief synthesizes publicly available information only. It is not investment advice. Conduct full due diligence including founder conversations, financial review, customer references, and legal/technical assessment before any investment commitment.
