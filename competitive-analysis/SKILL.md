---
name: competitive-analysis
description: Conduct competitive intelligence on one or more companies relative to the user's product, market, or strategic goals. Use this skill when the user wants to understand competitors, analyze a market landscape, compare companies side-by-side, evaluate competitive positioning, identify market gaps, or understand how their product compares to alternatives. Triggers on phrases like "competitive analysis of X", "compare X and Y", "who competes with [company]", "analyze the [market] landscape", "competitors of X", "how does X compare to Y", "what alternatives exist for", or any combination of company names with competitive/market/positioning context.
---

# Competitive Analysis

This skill produces competitive intelligence on companies and markets to inform strategic decisions for founders, product leaders, and strategy professionals.

## When to use

Trigger when context indicates competitive evaluation:
- "Competitive analysis of Linear vs Jira vs Asana"
- "Who competes with Stripe?"
- "Analyze the AI coding tool landscape"
- "How does Anthropic compare to OpenAI?"
- "What's the competitive position of [our company]?"

## Three modes

This skill operates in three modes depending on input:

### Mode 1: Single company competitive analysis
Input: one company
Output: their competitive landscape — who they compete with, positioning, threats

### Mode 2: Head-to-head comparison
Input: 2-4 companies
Output: side-by-side matrix on key dimensions

### Mode 3: Market landscape
Input: market/category (e.g., "AI coding tools")
Output: map of players, segmentation, dynamics

Detect mode from user's request and ask for clarification only if ambiguous.

## Process

### Step 1: Identify competitors

For Mode 1, find competitors by:
- Direct mentions in company's positioning materials
- Customer review sites (G2, Capterra) showing alternatives
- Search for "[company] vs" or "[company] alternatives"
- LinkedIn job postings sometimes mention "competing with X"

Categorize into:
- **Direct competitors**: same target customer, same problem
- **Indirect competitors**: different approach, same problem
- **Substitutes**: completely different solution category

### Step 2: Dimensional comparison

For each company, gather data on relevant dimensions:

**Universal dimensions** (use for all):
- Target customer (segment, size, industry)
- Core value proposition
- Pricing model & price points
- Key features/products
- Geographic focus
- Founded year / company age
- Size (headcount range, funding raised)
- Recent strategic moves

**Mode-specific dimensions**: Add based on category:
- SaaS: free tier, integrations count, API availability
- Marketplaces: liquidity (supply/demand), commission %
- DevTools: GitHub stars, language support, deployment model
- E-commerce: GMV, take rate, fulfillment

### Step 3: Strategic positioning analysis

Beyond facts, analyze:

**Differentiation**:
- What does each company emphasize in marketing?
- What unique value do they claim?
- Is the differentiation real or marketing?

**Positioning maps**:
- Could create 2D maps if relevant (e.g., Price vs Features, SMB vs Enterprise, etc.)
- Identify white spaces / underserved positions

**Strengths and weaknesses**:
- Each company's strongest and weakest dimensions
- Where they're vulnerable

### Step 4: Market dynamics

- Is the market growing, mature, or declining?
- Consolidation happening (M&A activity)?
- New entrants emerging?
- Pricing pressure or premium dynamics?
- Regulatory or technology shifts impacting?

### Step 5: Strategic recommendations (if user is in the market)

If user indicates they're a player in the market:
- White space opportunities they could pursue
- Defensive moves against specific competitors
- Pricing strategy implications
- Feature priorities based on competitive gaps

## Output format

### Mode 1: Single Company Competitive Analysis

🎯 **Target Company**: {Brief summary}

⚔️ **Competitive Landscape**

**Direct Competitors** (table or list with brief context)

**Indirect Competitors**

**Substitutes / Alternative Approaches**

📊 **Positioning Analysis**
{How they differentiate, where strong, where vulnerable}

🌊 **Market Dynamics**
{Growth, consolidation, emerging threats}

🔮 **Outlook**
{Where this is heading}

### Mode 2: Head-to-Head Comparison

📊 **Comparison Matrix**

| Dimension | Company A | Company B | Company C |
|---|---|---|---|
| Target customer | ... | ... | ... |
| Pricing | ... | ... | ... |
| {etc} | | | |

🎯 **Each Company's Strongest Suit**
- A's strength: ...
- B's strength: ...
- C's strength: ...

⚠️ **Each Company's Vulnerabilities**

🏆 **Best Fit For**
- Choose A if: ...
- Choose B if: ...
- Choose C if: ...

### Mode 3: Market Landscape

🗺️ **Market Definition**: {What's in / out of scope}

📊 **Segmentation**: {How the market segments — by customer size, use case, geography}

👥 **Major Players**: {5-10 with brief positioning}

📈 **Market Dynamics**: {Growth, consolidation, shifts}

🎯 **White Spaces**: {Underserved segments or use cases}

🔮 **Outlook**: {Where the market is heading}

## Quality rules

Same baseline as `company-research`:
- All claims sourced
- Distinguish facts from inferences
- No fabrication
- Date time-sensitive info

Plus competitive-specific:
- Avoid bias toward any one player (unless user is one)
- Acknowledge unknowns (private companies have limited public data)
- Don't over-emphasize features at expense of strategy
- Show your reasoning for positioning claims

## Common pitfalls to avoid

- ❌ Listing every possible competitor → ✅ Categorize and prioritize top 5-10
- ❌ Feature comparison only → ✅ Strategic positioning analysis
- ❌ Comparing apples to oranges (different segments) → ✅ Clarify segmentation first
- ❌ Repeating marketing claims as facts → ✅ Distinguish claim from verified
- ❌ Static analysis → ✅ Include momentum / trajectory

## What this skill is NOT

- Not pricing benchmarking (separate skill domain)
- Not product feature deep-dives (per-feature comparison)
- Not customer satisfaction analysis (different methodology)
- Not financial competitive analysis (use investor-due-diligence skill)
