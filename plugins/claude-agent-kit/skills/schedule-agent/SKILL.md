---
name: schedule-agent
description: Designs recurring tasks that Claude runs on its own on a schedule (Cowork scheduled tasks) — a morning brief, a weekly report, a Monday follow-up list, a monthly price or competitor check — and writes the exact instruction to schedule. Use when the user wants something done "every day/week/month", "automatiquement", "kol nhar", "chaque lundi", or asks how to make Claude work without them.
---

# Schedule an agent

This is where Claude stops being a chat and becomes an agent: work that runs on its own, on a schedule.

Answer in the user's language.

## Availability (tell the user plainly)

- **Scheduled tasks**: paid plans, in **Cowork** (Claude desktop app). Create one by typing `/schedule` in a Cowork task, or open **Scheduled** in the sidebar. Scheduled tasks run on Anthropic's servers, so they fire even when the computer is off.
- **Free plan**: no scheduling. Offer the manual alternative: the same instruction saved in a Project, run with one message when needed.

## Step 1 — Pick the routine

Ask what they repeat. Suggest from these proven recipes if they are unsure:

| Recipe | When | Uses |
|---|---|---|
| Morning brief (`/claude-agent-kit:morning-brief`) | weekdays 8:00 | Gmail, Calendar |
| Weekly report (`weekly-report` skill) | Friday 16:00 | Drive / files |
| Follow-up list: unanswered quotes and invoices | Monday 9:00 | Gmail, Drive |
| Competitor / price watch (`web-research` skill) | 1st of the month | Web |
| Inbox triage with drafts (`inbox-assistant` skill) | daily 17:00 | Gmail |

## Step 2 — Write the scheduled instruction

A scheduled task runs without the user watching, so the instruction must be complete on its own:

```
Every <day(s)> at <time> (<timezone>):
Goal:      ...
Sources:   which connectors / files / sites
Output:    format, length, language, where to put it (chat, file in Drive...)
Limits:    read only / draft only — never send, delete, pay or publish
If stuck:  what to do when a source is missing (report it, don't guess)
```

Give it to the user ready to paste after `/schedule`.

## Step 3 — First run

Ask the user to run it once by hand and check the result before trusting the schedule. Adjust, then schedule.

## Rules

- Scheduled tasks never take irreversible actions (send, delete, pay, publish). They prepare; the user decides.
- Start with one routine. Add the next one after a week.
