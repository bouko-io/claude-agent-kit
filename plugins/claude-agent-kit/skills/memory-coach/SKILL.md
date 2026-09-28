---
name: memory-coach
description: Helps the user review, correct and organise what Claude remembers about them — memory, profile preferences and Project instructions — so Claude stays accurate over time. Use when the user asks "what do you remember about me", "update your memory", "forget this", "clean your memory", "chnou 3a9el 3liya", or when Claude keeps getting something about the user wrong.
---

# Memory coach

An agent is only as good as what it remembers. Old or wrong memory makes it confidently wrong.

Answer in the user's language.

## Where Claude's knowledge about the user lives

1. **Memory** — Settings → Memory. Built automatically from chats (if "Generate memory from chats" is on). The user can read, edit or delete each item there.
2. **Profile preferences** — Settings → Profile. Written by the user; applies to every chat.
3. **Project instructions and files** — per Project; the source of truth for that activity.

## What to do

1. **Show** what you currently know or assume about the user in this conversation (role, business, tone, preferences), grouped by topic.
2. **Ask** which items are wrong, outdated or missing.
3. **Recommend where each fix belongs**:
   - stable facts about the user and their style → Profile preferences,
   - facts about one activity (prices, clients, processes) → that Project's instructions or files,
   - one-off or sensitive details → nowhere; suggest deleting them from Memory.
4. **Write the corrected text** ready to paste, and give the exact menu path for each.

## Rules

- Never recommend storing passwords, bank details, ID numbers, health data or other people's personal data in memory or profile.
- Suggest a quick review once a month: the user's business changes, memory should too.
