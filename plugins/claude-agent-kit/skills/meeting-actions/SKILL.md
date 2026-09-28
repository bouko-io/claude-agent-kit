---
name: meeting-actions
description: Turns meeting notes, a transcript, a voice memo transcript or a messy chat thread into a clear summary, decisions, and an action list with owners and deadlines. Use when the user shares notes or a transcript, or says "compte rendu", "PV", "résumé de réunion", "meeting notes", "chnou tgal f réunion", "action items".
---

# Meeting → actions

Answer in the user's language, unless they ask for the meeting's language.

## Output

```
<Meeting title> — <date>
Participants: ...

In 3 lines        what was this meeting about and what came out of it
Decisions         numbered, each one sentence
Actions           table: # | action | owner | deadline | status
Open questions    what is still undecided, and who must answer
Next meeting      if mentioned
```

## Rules

- **Owner and deadline** for every action. If the notes don't say, write `?` — never invent a name or a date. List the `?` at the end so the user can fill them.
- Keep numbers, amounts and dates exactly as said. If two statements contradict, flag it.
- Separate what was **decided** from what was only **discussed**.
- Short. The whole thing should fit on one screen.
- Offer, at the end: a follow-up email draft to participants (never send it), and adding the deadlines to the calendar if the Google Calendar connector is available — only after the user says yes.
