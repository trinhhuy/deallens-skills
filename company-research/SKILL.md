---
name: company-research
description: Generate a comprehensive intelligence brief on any company by combining web research, news analysis, and structured synthesis. Use this skill whenever the user asks to research a company, look up a business, analyze a competitor, prepare for a meeting with a company, understand what a startup does, learn about an employer before an interview, or get an overview of an organization. Triggers on phrases like "research X", "tell me about company Y", "what does Z do", "look up [company]", "analyze [business]", or any URL/domain followed by a research request. Use even when the user mentions a company name casually without explicitly saying "research" — if they want to know about a business, this skill applies.
---

# Company Research

This skill produces a structured intelligence brief on any company suitable for sales prospecting, job interview preparation, competitive analysis, investment due diligence, or general business curiosity.

## When to use

Use this skill when the user wants to understand a business — any business. The skill works for public companies, private startups, agencies, and even small local businesses (with reduced data depth for smaller entities).

Examples of when to use:
- "Research stripe.com"
- "Tell me about Anthropic"
- "I have an interview at Vercel next week"
- "Look up this competitor I just heard about"
- "What does Linear actually do?"
- Any URL or domain mentioned in a research context

Do NOT use this skill for:
- Personal/consumer queries (shopping recommendations, restaurant research)
- Historical research on companies that no longer exist (use general knowledge instead)
- Questions about a specific product feature rather than the company itself

## Process

Follow these steps in order. Do not skip steps even if you think you know the answer from training data — current data is critical for business intelligence.

### Step 1: Identify the target

Extract the company identifier from the user's message:
- If a domain (e.g., `stripe.com`) → use directly
- If a company name (e.g., "Stripe") → search to confirm the canonical domain
- If ambiguous (e.g., "research apple" — Apple Inc or Apple Hospitality?) → ask ONE clarifying question, then proceed

### Step 2: Gather firmographic data

Use available web search and page-fetch tools (e.g. `web_search` / `web_fetch` in Claude, `WebSearch` / `WebFetch` in Cursor) to gather:

1. **Official website**: about page, careers page, products page
2. **LinkedIn company page** if findable in search results
3. **Crunchbase entry** for startups (funding data)
4. **Recent news** (last 90 days) for context

Required data points to populate (mark "Insufficient public data" if not findable):
- Legal name (e.g., "Stripe, Inc.")
- Brief description (1-2 sentences)
- Industry / sub-industry
- Business model (B2B, B2C, B2B2C, Marketplace)
- Headcount range (1-10, 11-50, 51-200, 201-500, 501-1000, 1000+)
- Founded year
- HQ location (city, country)
- Funding stage (if startup: Seed, Series A/B/C..., or Public)
- Key products or services
- Notable customers (if public)

### Step 3: Detect recent signals (last 90 days)

Search for material events in the last 90 days. Signal types to look for:

- **Funding events**: new rounds, valuations
- **Leadership changes**: new C-level hires, departures, board changes
- **Product launches**: new products, major features, market expansion
- **M&A activity**: acquisitions made or being acquired
- **Hiring patterns**: aggressive hiring in specific functions
- **Strategic partnerships**: notable integrations or partnerships
- **Financial events** (public companies): earnings, guidance changes
- **Notable PR**: positive coverage, controversies, awards

For each signal, capture: what happened, when, source URL, and relative importance.

### Step 4: Identify key people (if context suggests it's needed)

If the user's context suggests they need to know who to contact, who runs the company, or who to learn about (sales prep, interview prep, investor outreach), identify 2-4 key people:

- **Startups** (<50 people): founder/CEO
- **Mid-market** (50-500): relevant C-level for user's context (CTO for tech, CRO for sales, etc.)
- **Enterprise** (500+): VP-level in relevant function

For each: name, role, brief background, LinkedIn URL if findable. **Never include personal email or phone numbers** even if found in public sources — privacy boundary.

### Step 5: Synthesize using the brief template

Use the structure in `references/brief_template.md`. The exact format matters because it makes the brief scannable in 60 seconds.

## Quality Rules (Non-negotiable)

1. **Every factual claim needs a source URL inline.** Format: `[claim](source_url)` or write source clearly after the claim.

2. **Distinguish facts from inferences.** If you're inferring something not explicitly stated in sources, mark it with `[inferred]`. Example: "Likely targeting EU expansion [inferred from new Dublin office opening]"

3. **Do not fabricate.** If a data point isn't in public sources, write "Insufficient public data" rather than guessing. Hallucinated company data is worse than missing data — it embarrasses users in real meetings.

4. **Date everything time-sensitive.** Signals must have dates. "Recent funding round" without a date is useless.

5. **Keep brief under 800 words** for quick reads. If user explicitly asks for "deep research" or "comprehensive analysis", expand to 1500 words max.

6. **No "I hope this helps" energy.** Be direct. The reader is busy.

## Adapting to user context

Different users care about different things. Pay attention to context clues:

- **Sales context** (mentions of meeting, pitch, prospect, deal): emphasize buying signals, decision makers, recent pain points
- **Job seeker context** (mentions of interview, applying, role, hiring): emphasize culture signals, growth trajectory, recent leadership, team you'd work with → use `references/interview_lens.md`
- **Investor context** (mentions of due diligence, evaluating, considering investment): emphasize financial signals, competitive position, founder background, traction metrics → use `references/investor_lens.md`
- **Competitive analysis** (mentions of competitor, market, comparing): emphasize positioning, pricing, GTM strategy
- **General curiosity** (just asks "what does X do"): emphasize plain-English explanation, products, who they serve

If user context is unclear, default to balanced general brief and ask at the end: "Want me to dig deeper on any particular angle — competitive, financial, leadership, or product?"

## Output Format

Always output the brief in markdown. Always include these sections:

1. **TL;DR** (2 sentences max)
2. **Overview** (legal name, what they do, who they serve)
3. **At a glance** (table: founded, HQ, headcount, funding, business model)
4. **Recent signals** (bulleted, dated, with sources)
5. **Key people** (if relevant — name, role, 1-line context, LinkedIn)
6. **Sources** (full URL list at bottom)

See `references/brief_template.md` for the exact template to follow, and `examples/` for samples.

## Anti-patterns to avoid

- ❌ Generic descriptions: "Stripe is a leading provider of payment solutions" → ✅ Specific: "Stripe processes online payments for businesses, competing with PayPal and Adyen, with $1T+ annual payment volume"
- ❌ Stale data from training: "Stripe is valued at $95B (2021)" → ✅ Fresh: "search for current valuation"
- ❌ Walls of text → ✅ Scannable structure with headers and bullets
- ❌ "Stripe is an amazing company that..." → ✅ Neutral, factual tone
- ❌ Listing every product → ✅ Top 3-5 with brief context
