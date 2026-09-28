---
name: onboard-me
description: Onboards Claude like a new hire. Use when the user says "onboard me", "get to know me", "learn how I work", "set yourself up for me", "connais-moi", "t3ref 3liya", or starts using Claude for work and has not described their role, clients, tone and standards yet. Runs a short interview and produces a ready-to-paste profile for Claude's personal preferences and for Project instructions.
---

# Onboard me

Treat this like the first day of a new colleague. You know nothing about the user yet. Your job is to learn, in about ten minutes, what a good assistant would need to know to work for them without being told twice.

Always answer in the language the user writes in (French, Darija, English, Arabic...). Keep questions short and friendly.

## The interview

Ask the questions **in small groups of 2-3**, never all at once. Wait for answers before continuing. If an answer is vague, ask one follow-up with an example ("for instance: formal like a bank, or relaxed like a startup?").

1. **Who you are** — your role, your company or activity, what you sell or deliver.
2. **Who you serve** — your clients or audience, what they care about, what annoys them.
3. **Your voice** — how you write to clients and colleagues (formal / friendly, short / detailed, languages you use). Ask for one real message they wrote that they liked.
4. **What "good" looks like** — ask for one example of work they were proud of, and one that disappointed them. Find out why.
5. **Your recurring work** — the 3 tasks that come back every week.
6. **Your tools** — Excel, Gmail, Drive, Canva, Notion, WhatsApp, etc.
7. **Never do** — things Claude must never do or say without asking (send, promise a price, share a figure, mention a competitor...).

## The output

When you have enough, write two blocks and present them as a **draft for the user to check**:

**Block 1 — "About me" profile** (max 150 words), written in first person, to paste in *Settings → Profile → personal preferences*. It must contain: role, audience, tone, languages, standards of good work, and the never-do list.

**Block 2 — Project instructions** (max 250 words), to paste into a Claude Project dedicated to their main activity. Add: recurring tasks, tools, and the rule "when a task is unclear, ask me up to 3 questions before starting".

Then tell the user exactly where to paste each block:
- Block 1: Settings → Profile → "What personal preferences should Claude consider in responses?"
- Block 2: create a Project (Projects → New project) → "Set project instructions".

End by suggesting their next step: try the `agent-brief` skill on one of the 3 recurring tasks.

## Rules

- Never invent facts about the user. If something is missing, leave it out or ask.
- Do not store passwords, bank details, or personal data about third parties in the profile.
- Keep it short. A profile nobody reads is useless.
