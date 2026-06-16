---
name: interview-prep
description: Prepare comprehensively for a job interview by researching the company, role, interviewers, and generating tailored interview questions and answers. Use this skill whenever the user mentions an upcoming interview, says they're interviewing somewhere, asks how to prepare for an interview at a specific company, wants to know what questions to ask at an interview, needs to research a hiring manager, or wants help preparing for a specific role. Triggers on phrases like "I have an interview at X", "prepare for interview", "interview prep for [company]", "researching the company before interview", or any combination of company name + interview/role context. Use proactively when user shares both a company and that they're interviewing — even without explicitly asking for "prep".
---

# Interview Prep

This skill helps job candidates prepare thoroughly for an interview by combining company research with role-specific intelligence and personalized question generation.

## When to use

Trigger this skill when context shows the user is preparing for an interview. Examples:
- "I have an interview at Stripe next Tuesday for a Senior PM role"
- "Help me prep for my Anthropic interview"
- "What should I know before interviewing at Vercel?"
- "Research my interviewer Sarah Chen at Figma"

## Inputs needed

Gather these from the user (ask if missing):

1. **Company** (required): domain or name
2. **Role** (highly recommended): exact title or function
3. **Interviewer name(s)** (optional but powerful): for personalized prep
4. **Interview stage** (optional): screen, technical, onsite, final

If only company is given, default to general prep for any role at that company.

## Process

### Step 1: Use the company-research skill foundation

This skill builds on top of `company-research`. Apply that skill first to gather:
- Firmographic data
- Recent signals
- Key people

But then add the interview-specific layers below.

### Step 2: Role-specific research

If a role is provided, research:
- The job description if findable on careers page
- Salary ranges (Levels.fyi, Glassdoor, public reports)
- Typical interview process for that role at that company (Glassdoor, Blind, blog posts)
- Skills/topics commonly tested for that role
- Engineering blog posts relevant to the role (if technical)

### Step 3: Interviewer research (if names provided)

For each interviewer:
- LinkedIn background: career path, tenure, prior companies
- Recent public posts: Twitter, LinkedIn, blog, conference talks
- Areas of expertise (visible from their writing/talks)
- Mutual connections (if user can be inferred to have them)
- Personal interests if appropriate (don't be creepy, just professional)

### Step 4: Generate prep materials

Produce these sections:

#### Company TL;DR for interviews
3 sentences max — what to say if interviewer asks "what do you know about us"

#### Why now is interesting
Recent signals framed as conversation hooks — things you can naturally bring up to show research

#### Likely questions you'll be asked
8-12 questions you should prepare answers for, mix of:
- Standard ("tell me about yourself", "why this company")
- Role-specific (technical depth, system design, etc.)
- Company-specific (based on their values, mission, recent events)

#### Questions YOU should ask
10-15 thoughtful questions across categories:
- About the role and team
- About the company strategy and recent events
- About growth and opportunities
- About culture and ways of working

Mark which ones are SAFE (won't backfire) and which are POWERFUL (show deep research).

#### Red flags to investigate
If your research surfaced any concerning signals (layoffs, leadership turnover, missed earnings), flag them with diplomatic ways to probe in conversation.

#### Strengths to lean into
Based on recent company signals, what aspects of YOUR background should you emphasize?

### Step 5: Practical tips

End with logistics:
- Their interview process if known (number of rounds, types)
- Compensation expectations for the level/role
- What to wear (formal? Casual? Look at team photos)
- Anything else specific to that company

## Output format

Use clear markdown headers. Make it scannable — interview prep happens in fragments of time, not one sitting.

Mark sections clearly with emojis for visual scanning:
- 📊 Company facts
- 🎯 Role insights
- 👤 Interviewers
- ❓ Questions you'll be asked
- 💬 Questions you should ask
- 🚩 Red flags
- 💪 Your strengths
- ⏰ Logistics

## Quality rules

Same as `company-research`:
- Every claim sourced
- No fabrication
- Distinguish facts from inferences
- Dates on time-sensitive info

Additionally:
- Be encouraging without being saccharine
- The candidate is anxious — be useful, not preachy
- Practical > comprehensive — they have limited prep time

## What this skill is NOT

- Not a resume reviewer (separate skill)
- Not a salary negotiation guide (separate skill)
- Not an interview practice partner (no role-play here)
- Not legal/HR advice
