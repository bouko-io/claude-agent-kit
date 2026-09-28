---
name: find-my-task
description: Finds the best first task to hand over to an AI agent. Use when the user asks "what should I automate", "where do I start with AI", "what can Claude do for me", "chnou n3ti l Claude", "par quoi commencer", or wants to save time but does not know which task to delegate. Maps their week, scores each task with a 6-criteria scorecard, flags messy processes, and recommends one task with a first brief.
---

# Find my task

Start with the boring task you repeat every week, not the impressive one. This skill finds it.

Always answer in the language the user writes in.

## Step 1 — Map the week

Ask the user to list the tasks that come back every week or month. Help them with prompts: emails and follow-ups, reports, spreadsheets, meeting notes, quotes, social posts, reading documents, planning, customer questions. Aim for 5 to 10 tasks. For each, ask roughly how much time it takes.

## Step 2 — Score each task

Score every task from 0 to 2 on these 6 criteria:

| Criterion | 0 | 1 | 2 |
|---|---|---|---|
| Repeats | rarely | monthly | weekly or more |
| Clear input | scattered, in people's heads | partly in files | all in files / email / one place |
| Known "good" | hard to say | roughly | clear example exists |
| Reversible | a mistake is costly and final | fixable with effort | easy to check and fix |
| One source | many conflicting sources | a few | one source of truth |
| Time spent | < 15 min | 15-60 min | > 1 hour |

Show the result as a table sorted by score (max 12).

- **9-12**: ready — start here.
- **6-8**: possible after a small clean-up.
- **0-5**: not yet. Say what must be fixed first.

## Step 3 — Flag the mess

If a task scores 0 on "Clear input" or "One source", say it plainly: automating a messy process only produces a faster mess. Suggest the one clean-up step (e.g. "put the price list in one sheet").

## Step 4 — Recommend one task

Pick **one** task, the highest score, ties broken by time saved. Explain in 2-3 sentences why. Estimate hours saved per month, with the assumption shown.

## Step 5 — First brief

Draft the first brief for that task using this format: Goal / For whom / Sources / Good looks like / Format / Limits / Check / Done when. Offer to run it now.

## Rules

- Never promise savings you cannot justify. Show the arithmetic.
- Recommend one task, not five. Focus is the point.
- Tasks involving sending, paying or deleting: the agent prepares, the user approves.
