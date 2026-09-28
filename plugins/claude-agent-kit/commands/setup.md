---
description: Guided setup — turn on every Claude feature that makes it work like an agent (code execution, memory, profile, connectors, Projects, Excel/PowerPoint, Chrome, scheduled tasks), one step at a time, and check each one.
---

# Setup: turn Claude into an agent

Walk the user through the activation checklist below, **one step at a time**. Always answer in the user's language (French, Darija, Arabic, English...). Keep each message short: what to click, why it matters in one sentence, then ask "done?" before moving on. If the user says a step is not available to them, note it and continue.

Start by asking one question: **which plan are they on** (Free, Pro, Max, Team) and **which device** (web, Windows, Mac, phone). Skip the steps their plan or device does not support, and say so.

Menu labels below are in English; if the user's interface is in another language, give the equivalent label.

## The checklist

1. **Code execution and file creation** — *all plans*
   Settings → Capabilities → turn on "Code execution and file creation".
   Why: Claude can then create real Excel, PowerPoint, Word and PDF files, and run the kit's skills.
   Check: ask Claude "create a tiny Excel file with 3 rows" — a downloadable .xlsx should appear.

2. **Memory** — *all plans, on by default*
   Settings → Memory → "Generate memory from chats" must be on. The same screen lets them read, correct or delete what Claude remembers.
   Why: Claude remembers what matters from one conversation to the next.
   Paid plans also let Claude search past chats.

3. **Profile** — *all plans*
   Run the `onboard-me` skill (say "onboard me"). Paste the result into Settings → Profile → personal preferences.
   Why: Claude stops asking who they are in every chat.

4. **Connectors** — *all plans for Gmail, Google Drive, Google Calendar*
   Customize → Connectors → Connect Gmail, Drive, Calendar, plus any tool they use.
   This kit also bundles **Canva** and **Notion**: Customize → Plugins → Claude Agent Kit → Connectors tab → Connect (each needs the user's own account).
   Why: Claude reads their real emails, files and agenda instead of copy-paste.
   Check: "what's on my calendar tomorrow?"

5. **A Project for their main activity** — *all plans*
   Projects → New project → add reference files (price list, catalogue, templates) and the project instructions from `onboard-me`.
   Why: one source of truth that Claude always reads first.

6. **Claude in Excel, PowerPoint and Word** — *paid plans*
   Microsoft AppSource → "Claude for Microsoft 365" → Get it now → open Excel → Add-ins → Claude → sign in.
   Works on Excel for the web, Windows (Microsoft 365) and Mac. Not on iPad or Android.
   Why: Claude works inside the file — formulas, pivots, slides — without copy-paste.

7. **Claude in Chrome** — *paid plans, Chrome only*
   Chrome Web Store → "Claude" → Add to Chrome → sign in → pin the extension.
   Why: Claude can click, fill forms and navigate websites for them.
   Safety: start with harmless tasks and watch it the first times.

8. **Scheduled tasks** — *paid plans, in Cowork (desktop app)*
   In a Cowork task type `/schedule`, or open "Scheduled" in the sidebar.
   Why: Claude runs recurring work on its own — a morning brief, a Friday report. Use the `schedule-agent` skill to design the first one.

## At the end

Give a short recap table: step, status (done / skipped / not available on their plan). Then suggest the next move: run `find-my-task` to pick the first job to hand over.

## Rules

- Never ask for passwords, codes or keys. If a screen asks for a login, the user types it themselves.
- If a menu has moved, say so honestly and suggest searching the settings, rather than inventing a path.
