# Reddit Post — r/ClaudeAI

---

**Title:** [Project] I built a Jarvis-mode for Claude Code — proactive alerts, persistent memory, daily coaching via Telegram

---

**Body:**

Hey r/ClaudeAI,

I've been using Claude Code daily for months. It's great in the terminal, but I kept running into the same friction:

- Close the terminal → session gone, context lost
- Leave my desk → Claude stops working
- No memory between sessions → re-explain everything next time
- No feedback on my workflow → am I actually getting better at using it?

So I built **Mr.Stack** — an open-source tool that extends Claude Code into a 24/7 AI partner via Telegram. It runs as a macOS daemon, so it works even when your MacBook lid is closed.

## What It Does

**Telegram AI Assistant**
- Send Claude instructions via Telegram from anywhere
- Supports text, images (vision), voice messages (Whisper + TTS), files
- Auto-analyzes clipboard content (errors → root cause, URLs → summary, code → review)

**Proactive Alerts (Jarvis Mode)**
- Scans your Mac every 5 minutes: active app, battery, CPU, Git status, Chrome tabs, terminal
- Classifies your state into 7 modes: CODING, DEEP_WORK, BROWSING, MEETING, COMMUNICATION, BREAK, AWAY
- Sends alerts based on context:
  - "You've been coding for 3 hours — take a break"
  - "Battery at 12% — save your work"
  - "Stuck on the same file for 30 min — need help?"
  - "Welcome back. You were on feature/auth branch"
- Deep work mode: blocks all non-critical interrupts

**Persistent Memory**
- Analyzes conversations every 3 hours, extracts meaningful info, stores permanently
- Remembers: projects, people, decisions, preferences, knowledge
- Updates (not accumulates) — like Git HEAD, always latest snapshot
- 1 year of usage = ~10-15MB total storage
- "Continue what I was working on yesterday" → picks up exactly where you left off

**Daily Coaching Report**
- Every night at 9pm, Telegram delivers a data-driven report:
  - Productivity score (with delta from yesterday)
  - What went well
  - Areas to improve (with specific suggestions)
  - Weekly trends
- Based on time-series analysis of all your interactions
- Like having a scrum master do a personal retro for you every night

**9 Automated Cron Jobs**
- Morning briefing (calendar + tasks + news)
- Evening summary + coaching
- Weekly review
- Calendar reminders
- Memory sync (every 3h)
- GitHub notification check (every 2h)
- Notion work log sync
- AI news digest
- OAuth token expiry monitoring

**Smart Model Routing**
- Simple lookups → Haiku
- Analysis/summary → Sonnet
- Deep reflection → Opus
- Reduces overnight token usage by 60-70%

## How It Works

It's built on top of [claude-code-telegram](https://github.com/nicepkg/claude-code-telegram) and adds the memory, Jarvis, pattern learning, and coaching layers. Everything runs locally on your Mac — zero external servers, zero cloud storage.

The data layer is intentionally simple: Markdown files for memory, JSONL for interaction logs, SQLite for structured data. No databases to manage.

## What Makes It Different

| | Typical AI Bot | Mr.Stack |
|---|---|---|
| Interaction | Request-response | Event-driven (proactive) |
| Security | API keys to external servers | 100% local, zero servers |
| Availability | Tied to terminal | macOS daemon, 24/7 |
| Memory | Stateless | Persistent (permanent storage) |
| Learning | None | Time-series pattern analysis |
| Coaching | None | Daily productivity metrics |

## Installation (3 steps)

```bash
# 1. Install base bot
uv tool install claude-code-telegram

# 2. Install Mr.Stack
git clone https://github.com/whynowlab/mrstack.git
cd mrstack && ./install.sh
# → Prompts for your Telegram bot token and user ID

# 3. Run
claude-telegram-bot
```

**Requirements:** macOS (Apple Silicon or Intel) + Claude Code (Max plan recommended) + Telegram account

## Screenshots / Demo

[Screenshot: Daily coaching report in Telegram — placeholder]

[Screenshot: Jarvis mode proactive alert — placeholder]

[Screenshot: Memory-powered context recall — placeholder]

## Links

- GitHub: [github.com/whynowlab/mrstack](https://github.com/whynowlab/mrstack)
- License: MIT
- macOS only (for now — the Jarvis mode relies on macOS-specific APIs)

---

This is my first real open-source release, so feedback is very welcome — especially from heavy Claude Code users. What features would you want? What's missing? What's overengineered?

Happy to answer any questions.
