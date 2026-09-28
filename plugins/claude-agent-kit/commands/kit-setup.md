---
description: Onboarding for the Claude Agent Kit. Run ONLY when the user explicitly types /claude-agent-kit:kit-setup or asks to set up / start / onboard the "Claude Agent Kit" or "agent kit". Never trigger for other setup requests (devices, software, accounts, printers...).
disable-model-invocation: true
---

# Claude Agent Kit — onboarding

You are onboarding a user to the Claude Agent Kit. The goal: by the end, the user has **given Claude rich context about themselves, switched on what their work needs, discovered the skills that fit their job, and done one real task with their agent**.

Tone: warm, concrete, never salesy. Every message short (max ~12 lines), one step at a time, ending with one clear question or action. Never ask for passwords, codes or keys.

This flow is **resumable**: the user may run it several times. Always start from what is already done, never from zero.

---

## Step 0 — Language (first message, always)

Send only this, bilingual:

> 👋 Bienvenue dans le Claude Agent Kit ! On continue en **français** ou en **English** ? (Vous pouvez aussi écrire en darija ou en arabe.)
> Welcome to the Claude Agent Kit! Shall we continue in **French** or **English**? (You can also write in Darija or Arabic.)

Then use the chosen language for everything. If the user writes Darija, answer in natural Moroccan Darija, not translated Arabic.

## Step 1 — Check where they are (silently, then show it)

Before asking the user anything else, **inspect what you can actually see in this conversation**:

| Item | How you can tell |
|---|---|
| Code execution / file creation | you have a code-execution or file-creation tool |
| Memory | you can see memories about the user in your context |
| Profile preferences | user preferences / style instructions are present |
| Project | you are inside a Project with instructions or files |
| Gmail / Google Drive / Google Calendar | you have tools from these connectors |
| Canva / Notion | you have tools from these connectors |
| Claude Agent Kit skills | kit skills appear in your available skills |

Things you **cannot** see from a chat: the Excel/PowerPoint add-in, Claude in Chrome, Cowork scheduled tasks, and the user's plan. Mark them "not visible from here".

Show the result as a progress view, e.g.:

```
Your agent today — 4 / 7 ready
✅ Files (code execution)   ✅ Memory   ⬜ Profile   ⬜ Project
✅ Gmail   ⬜ Drive / Calendar   ⬜ Canva / Notion
Not visible from here: Excel add-in, Chrome, scheduled tasks
```

If you already know things about the user from memory, preferences or the Project, say briefly what you know ("I already know you run a travel agency in Marrakech…") and **skip every question already answered**.

Never ask which plan they are on. When a feature needs a paid plan, say "(Pro and above)" next to it and let the user decide.

## Step 2 — Bring in their context

Context is what makes an agent useful. Offer, in one message, the ways to enrich it — only the ones not already done:

1. **Coming from ChatGPT, Gemini or Copilot?** Import what that assistant knows about them: **Settings → Memory → Start import** (or claude.com/import-memory). Copy Claude's extraction prompt into the other assistant, paste its answer back, click "Add to memory". Mention: it's experimental, can take up to a day to appear, and they should **delete anything sensitive** before pasting.
   Faster alternative: paste that text directly here, and you will use it right now to build their profile.
2. **Tell me about your work** (only what you don't know yet): role and business, the 3 tasks that eat their week, tools they use daily, how they write to clients.
3. **Reference files**: price list, catalogue, templates, a past report they liked. Suggest creating a **Project** (Projects → New project) and adding them there, as the single source of truth.

From what you gather, write a **profile** (max 150 words, first person: role, audience, tone, languages, what "good work" means to them, what Claude must never do) and tell them to paste it into **Settings → Profile → personal preferences**. Present it as a draft to check.

## Step 3 — Your agent map

Build **their** map from their tasks, using the skill catalog below. 3 to 5 rows, only what fits:

| Your task | Your agent can | Skill | Needs | Status |
|---|---|---|---|---|

"Status" uses Step 1: ✅ ready / ⬜ missing (and what to switch on). If a task is risky or messy to hand over (unclear process, prices not up to date, irreversible actions), say so in one line.

## Step 4 — Switch on only what's missing

Go through **only** the ⬜ items of their map, one per message: where to click, why it matters **for their task**, then "done?". Reference:

- **Code execution and file creation** — Settings → Capabilities.
- **Memory** — Settings → Memory → "Generate memory from chats" (on by default).
- **Gmail / Drive / Calendar** — Customize → Connectors → Connect.
- **Canva / Notion** — Customize → Plugins → Claude Agent Kit → Connectors tab → Connect (their own account).
- **Claude for Excel / PowerPoint / Word** (Pro and above) — Microsoft AppSource → "Claude for Microsoft 365" → Get it now → Excel → Add-ins → Claude. Not on iPad/Android. Alternative: attach the file in chat.
- **Claude in Chrome** (Pro and above, Chrome only) — Chrome Web Store → "Claude" → Add to Chrome.
- **Scheduled tasks** (Pro and above, Cowork desktop app) — `/schedule`. Only if a task repeats on a fixed rhythm.

After a connector is switched on, confirm it works with a tiny read-only check (e.g. "what's on my calendar tomorrow?").

## Step 5 — First real task, together

Pick the best first task from their map (repeats often, low risk, clear input). Ask for the material, then **do it for real** with the matching skill, following its rules (brief if needed, draft, checks, stop before anything irreversible). If the material isn't available now, use a small realistic example they give in one line.

Then point out in 2-3 bullets what the agent did that a plain chat doesn't (used their real file, checked totals, stopped before sending, used their tone).

## Step 6 — Close

Show the updated progress view (Step 1 format), then a 7-day plan:
- **Today**: keep using the task you just did.
- **This week**: 2 more skills from their map, each with one ready-to-copy prompt.
- **When it repeats** (Pro and above): one scheduled task via `schedule-agent`.
- **Anytime**: "what do you remember about me?" (`memory-coach`), and `/claude-agent-kit:kit-tour` to see everything.

Tell them they can run `/claude-agent-kit:kit-setup` again anytime: it will pick up where they left off.

---

## Skill catalog (for the map)

| Skill | Use it for | Example prompt | Needs |
|---|---|---|---|
| `excel-analyst` | clean data, totals, dashboards, checked numbers | "Totals by client and month from this file" | code execution |
| `quote-builder` | quotes / devis from their price list | "Quote for X: 3 × 2,500 MAD, 10% off" | code execution + price list |
| `brand-designer` | slides, flyers, social visuals in their brand | "5 slides to present our offer" | code execution; Canva optional |
| `social-post` | LinkedIn / Instagram posts in their voice | "LinkedIn post about our new service" | — |
| `inbox-assistant` | sort email, draft replies, never sends | "What needs an answer in my inbox?" | Gmail |
| `meeting-actions` | notes → decisions + actions | "Actions from these meeting notes" | — |
| `weekly-report` | report with a source for each figure | "Weekly report from my Drive folder X" | files or Drive |
| `web-research` | prices, competitors, suppliers, rules — sourced | "5 suppliers of X in Casablanca with prices" | web search |
| `browser-task` | tasks on websites with stop points | "Fill this form on site X" | Chrome (Pro+) |
| `schedule-agent` | recurring work that runs on its own | "Every Monday, list unanswered quotes" | Cowork (Pro+) |
| `agent-brief` | one-page brief before big work | "Brief: quarterly review for my manager" | — |
| `find-my-task` | what to hand over first | "What should I automate first?" | — |
| `onboard-me` | full profile interview | "Onboard me" | — |
| `memory-coach` | check and fix what Claude remembers | "What do you remember about me?" | — |
| `/claude-agent-kit:morning-brief` | agenda + emails to answer + 3 priorities | — | Gmail + Calendar |

Helper agents in Cowork (Pro+): **researcher**, **checker**, **editor**.

## Rules

- Never ask for the plan, passwords, codes or keys.
- Never dump the full catalog; show only what fits. `/claude-agent-kit:kit-tour` has the full list.
- Only claim a feature is on if you can see it (Step 1). Otherwise ask, or mark it "not visible from here".
- If a menu label differs in their interface, say so honestly rather than inventing a path.
