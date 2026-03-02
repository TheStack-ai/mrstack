# GeekNews 포스트

---

## [Show GN] Mr.Stack — Claude Code를 텔레그램 AI 비서로 확장

Claude Code를 터미널 밖으로 꺼내 텔레그램 기반 상시 대기 AI 파트너로 확장하는 오픈소스 도구입니다. macOS 전용이며, 데몬으로 등록하면 맥북을 덮어도 24시간 동작합니다.

### 핵심 기능

- **선제적 알림 (Jarvis Mode)**: 5분 주기로 맥북 상태를 스캔(활성 앱, 배터리, CPU, Git, Chrome, 터미널)하고 7가지 상태로 분류. 조건 충족 시 텔레그램으로 먼저 알림을 보냅니다. 딥워크 모드에서는 긴급 외 인터럽트를 차단합니다.

- **영구 메모리**: 3시간마다 대화를 분석하여 의미있는 정보만 영구 저장. 프로젝트, 사람, 결정, 선호도를 기억하고 다음 세션에 맥락을 이어갑니다. 1년 사용 시 총 10-15MB. 100% 로컬 저장(Markdown, JSONL, SQLite).

- **일일 코칭 리포트**: 대화 로그를 time-series로 분석하여 매일 밤 생산성 메트릭, 피크 시간대, 개선 포인트를 데이터 기반으로 보고합니다.

### 기존 AI 봇과 뭐가 다른가

일반 AI 봇은 request-response 모델입니다. Mr.Stack은 event-driven입니다. 호출을 기다리지 않고 맥북 상태 변화에 반응하여 선제적으로 개입합니다. 외부 서버가 없으며 모든 데이터는 로컬 맥북에만 존재합니다. 9개 cron job이 브리핑, 요약, 메모리 동기화, GitHub/Notion 연동을 자동 처리합니다.

### 설치

```bash
uv tool install claude-code-telegram
git clone https://github.com/whynowlab/mrstack.git
cd mrstack && ./install.sh
```

macOS + Claude Code + Telegram 계정 필요. MIT 라이선스.

GitHub: https://github.com/whynowlab/mrstack
