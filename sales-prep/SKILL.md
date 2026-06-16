---
name: sales-prep
description: Prepare comprehensively for a sales meeting, outbound outreach, or B2B prospect engagement by researching the target company, identifying decision makers, detecting buying signals, and drafting personalized messages. Use this skill whenever the user is preparing to sell to, pitch, or reach out to a B2B company. Triggers on phrases like "prep for my sales meeting", "research this prospect", "I'm pitching X tomorrow", "draft an email to [company]", "find decision makers at Y", "outbound to [company]", "who should I contact at Z", or combinations of company names with sales/pitch/meeting/outreach/prospect context. Use proactively when user shares both a company and any sales context — even without explicitly asking for "prep".
---

# Sales Prep

This skill helps B2B sales professionals (AEs, BDRs, SDRs, founders, agency consultants) prepare for outreach or meetings by combining company research with sales-specific intelligence and outreach drafting.

## When to use

Trigger when context shows sales/BD intent. Examples:
- "Help me prep for my Stripe sales meeting tomorrow"
- "Research this prospect: linear.app"
- "Draft an email to the CTO of Vercel about our security product"
- "Who should I talk to at HubSpot about partnerships?"
- "I'm pitching our service to Anthropic next week"

## Inputs needed

Gather these (ask if missing critical ones):

1. **Target company** (required): domain or name
2. **What you're selling** (highly recommended): product/service description
3. **Your value prop** (recommended): 1-sentence why your offering matters
4. **Sales stage** (optional): cold outreach, discovery call, demo, close
5. **Existing contact** (optional): if you already know who you're talking to

If user is vague, default to "cold outreach prep with discovery focus".

## Process

### Step 1: Use company-research skill foundation

Run `company-research` first to gather:
- Firmographic data
- Recent signals
- Decision maker candidates

### Step 2: Find buying signals (sales angle)

Re-prioritize signals through sales lens:

**HIGH-VALUE signals** (timing-based, ~3-month window):
- Funding rounds → budget freed up
- Leadership changes → new buyer with new agenda
- Hiring surge → growth → need for X
- Strategic initiatives announced → aligned with your pitch?
- Pain point mentions in CEO/exec public posts
- M&A → integration challenges your product solves

**LOWER-VALUE signals**:
- General PR
- Awards
- Generic culture posts

For each high-value signal, draft "the pitch angle":
- "They just raised Series B → they need [X] to scale operations"
- "New CTO from Acme → likely brings preference for [Y]"

### Step 3: Identify decision makers

Tailor by company size:
- **Startup (<50)**: founder/CEO. Direct outreach OK.
- **Mid-market (50-500)**: VP-level or function head. CEO may be too busy.
- **Enterprise (500+)**: Director or VP. Champion + economic buyer model. C-level usually requires intro.

For each:
- Name, role, LinkedIn URL
- Tenure (new in role = more open, also high stakes)
- Background: prior companies (warm intro paths?)
- Recent public activity (conversation hooks)
- Best channel to reach them

### Step 4: Generate outreach drafts

If user mentions cold outreach, draft 2-3 message variants:

**Variant 1: Signal-led** (leads with timely event)
Subject: {Reference to specific signal}
Hook: {Open with the signal, show research}
Bridge: {Connect signal to relevance for them}
Value: {What you offer, briefly}
CTA: {Specific ask — 15-min call, intro, etc.}

**Variant 2: Value-led** (leads with what you offer)
Different opening style, sometimes more direct

**Variant 3: Warm-intro angle** (if mutual connections exist)
Reference shared context

Rules for drafts:
- 100-180 words for email, 50-100 for LinkedIn
- Personalization must be REAL, not "I see you went to Stanford"
- Avoid: "I hope this email finds you well", "I came across your profile", "circling back"
- Subject lines 4-7 words
- One clear CTA, not three asks

### Step 5: Meeting prep checklist (if user has scheduled meeting)

Generate practical prep:
- 3 talking points based on signals
- 5 discovery questions to ask
- 2 likely objections and your responses
- 1 "wow moment" — a fact about them that shows deep research

## Output format

Use scannable structure with sections:

📊 **Company Quick Facts**
🎯 **Buying Signals** (sorted by sales relevance)
👥 **Decision Makers** (with approach strategy)
✉️ **Outreach Drafts** (in distinct boxes, copyable)
🗣️ **Meeting Prep** (if relevant)
🎁 **Bonus Intelligence** (anything unique you uncovered)

## Quality rules

- All signals dated and sourced
- Outreach drafts must reference REAL signals, not generic flattery
- Never include personal email/phone even if findable in sources
- Mark assumptions clearly: "Assumed they're hiring for Engineering based on job posts — verify"
- Be useful in 60 seconds — sales rep is busy

## Anti-patterns

- ❌ "Stripe is a leading fintech company" → ✅ "Stripe processes $1T+ annually, competes with Adyen on enterprise"
- ❌ Generic outreach: "I'd love to learn about your business" → ✅ "Your Series B announcement mentioned scaling EU ops — that's exactly when [our product] helps"
- ❌ Trying to find every contact at the company → ✅ Top 2-3 with clear rationale
- ❌ One-size-fits-all template → ✅ Customized per signal
- ❌ Generic "thought leadership" intros → ✅ Specific recent reference
