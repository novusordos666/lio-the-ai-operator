# /script-ads — UGC Ad Script Generator

Generate direct-response ad scripts for UGC (user-generated content) video ads. Outputs scripts in the proven Problem → Agitate → Solution → CTA framework optimized for Meta and TikTok ads.

## Config (from CLAUDE.md)

Read these from the project's `CLAUDE.md`:

| Field | Key |
|-------|-----|
| Business name | `business_name` |
| Service/product | `service_offering` |
| Target audience | `target_audience` |
| Key pain points | `pain_points` |
| Key benefits | `benefits` |
| Social proof | `social_proof` (testimonials, stats, results) |
| Landing page | `landing_page_url` |
| CTA | `primary_cta` |

If `CLAUDE.md` has an `## Avatar` section, read that for audience details.

## Workflow

### Step 1 — Gather Context

Ask the user:
1. **What are you advertising?** (specific offer, service, or product)
2. **Who's the target?** (or confirm from CLAUDE.md avatar)
3. **Any specific angle?** (pain point, benefit, comparison, testimonial)
4. **Ad format?** — Talking head, voiceover + B-roll, screen recording, or mixed
5. **Length?** — 15s, 30s, 60s, or 90s
6. **How many scripts?** — default 3 variations

### Step 2 — Generate Scripts

Write scripts using these proven UGC frameworks:

**Framework 1: Problem-Agitate-Solution (PAS)**
```
HOOK (0-3s): Call out the problem
AGITATE (3-10s): Make them feel it
SOLUTION (10-20s): Introduce your offer
PROOF (20-25s): Social proof / results
CTA (25-30s): Clear next step
```

**Framework 2: "I tried X so you don't have to"**
```
HOOK (0-3s): "I tested every [category] so you don't have to"
JOURNEY (3-15s): Walk through what you tried
WINNER (15-25s): Reveal the solution
CTA (25-30s): How to get it
```

**Framework 3: Before/After**
```
HOOK (0-3s): "Here's what changed when I started using..."
BEFORE (3-10s): Paint the painful before state
AFTER (10-20s): Show the transformation
BRIDGE (20-25s): How they did it (your product)
CTA (25-30s): Get the same result
```

**Framework 4: Controversy/Hot Take**
```
HOOK (0-3s): Controversial statement that stops the scroll
BACK IT UP (3-15s): Explain why with proof
SOLUTION (15-25s): What to do instead (your offer)
CTA (25-30s): Take action
```

**Framework 5: Storytelling**
```
HOOK (0-3s): "6 months ago I was [painful state]..."
STORY (3-20s): Journey from problem to discovery
RESULT (20-25s): The transformation
CTA (25-30s): Your turn
```

### Step 3 — Format Output

For each script, output:

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
SCRIPT {number}: {angle_name}
Framework: {framework_name}
Length: {duration}
Format: {talking_head/voiceover/mixed}
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

HOOK (0-3s):
"{hook_line}"
[Visual: {what's on screen}]

BODY ({timing}):
"{script_body}"
[Visual: {b-roll or screen suggestions}]

CTA ({timing}):
"{cta_line}"
[Visual: {end screen}]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
AD COPY (for the ad post):
Primary text: {2-3 lines}
Headline: {short headline}
Description: {one line}
CTA Button: {LEARN_MORE / SIGN_UP / BOOK_NOW / etc}
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

### Step 4 — Save (Optional)

If the user wants to save, write scripts to the project's `ad-scripts/` directory:
- `ad-scripts/{date}-{angle}.md` for each script
- If Airtable is configured under `## Ad Tracking`, create records there too

## Hook Rules

**The hook is everything.** Follow these principles:
1. **First 3 seconds decide everything** — if the hook doesn't stop the scroll, nothing else matters
2. **Call out the audience** — "If you're a [target] who [pain point]..."
3. **Use pattern interrupts** — start mid-thought, weird angles, unexpected statements
4. **Avoid ad language** — don't say "introducing" or "announcing" — talk like a person
5. **Test the hook alone** — if it works as a standalone clip, it's good

## Platform Specs

| Platform | Max Length | Best Length | Aspect |
|----------|-----------|-------------|--------|
| Meta Feed | 240s | 30-60s | 1:1 or 4:5 |
| Meta Stories/Reels | 90s | 15-30s | 9:16 |
| TikTok | 180s | 15-60s | 9:16 |
| YouTube Shorts | 60s | 30-60s | 9:16 |

<\!-- Lio The Ai Operator System — @liogpt -->
