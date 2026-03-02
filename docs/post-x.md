# X (Twitter) Thread

> English. 7 tweets. Each under 280 characters where possible.

---

## Tweet 1 — Hook

I built a Jarvis mode for Claude Code.

It watches your Mac, remembers everything, learns your patterns, and messages you on Telegram — even when your laptop is closed.

Open source. Runs 100% locally.

[demo GIF placeholder]

github.com/whynowlab/mrstack

---

## Tweet 2 — Context Awareness

It scans your Mac every 5 minutes:
- Active app
- Battery & CPU
- Git branch status
- Chrome tabs
- Terminal commands

Then classifies your state: CODING, DEEP_WORK, BREAK, AWAY...

And sends proactive alerts:
"You've been coding for 3 hours — take a break."
"Battery at 12% — save your work."

---

## Tweet 3 — Memory System

Most AI tools have goldfish memory. Close the window, everything resets.

Mr.Stack has persistent memory — it analyzes conversations every 3 hours and stores only what matters.

Projects, preferences, decisions, people — all remembered.

"Continue what I was working on yesterday" → it picks up exactly where you left off.

---

## Tweet 4 — Daily Coaching

Every night at 9pm, you get this via Telegram:

```
Productivity: 8/10 (+1 from yesterday)

What went well:
- 2hr focus block → 4 commits
- Clear specs → 0 rework

Improve:
- 7 context switches 2-4pm
- 40% debugging — try tests first
```

A scrum master that reviews YOUR day. Every night. Data, not feelings.

---

## Tweet 5 — Local & Open Source

No cloud. No API keys sent anywhere.
Your data stays on YOUR Mac.

- SQLite + JSONL + Markdown
- macOS daemon (runs 24/7, lid closed)
- 9 automated cron jobs (briefings, reviews, syncs)
- Model routing: Haiku for lookups, Sonnet for analysis, Opus for deep work

Free. Open source. MIT license.

---

## Tweet 6 — Install in 3 Steps

```bash
# 1. Install base bot
uv tool install claude-code-telegram

# 2. Install Mr.Stack
git clone https://github.com/whynowlab/mrstack
cd mrstack && ./install.sh

# 3. Run
claude-telegram-bot
```

Needs: macOS + Claude Code + Telegram account.
That's it.

---

## Tweet 7 — CTA

If you use Claude Code and don't get a nightly coaching report, you're only using half of it.

Star it, fork it, break it, improve it:
github.com/whynowlab/mrstack

Feedback welcome — especially from heavy Claude Code users.

Built by @thestack_ai
