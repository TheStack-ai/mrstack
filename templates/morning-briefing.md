# Morning Briefing Template

## 형식

```
━━━ Mr.Stack 모닝 브리핑 ━━━
📅 {date} ({weekday})

▸ 오늘 일정
  {time} {title} ({location})
  {time} {title} ({location})
  — 일정 없음

▸ Pending Tasks
  ◻ {task_1}
  ◻ {task_2}

▸ AI/Tech 뉴스
  · {headline_1} — {summary_1}
  · {headline_2} — {summary_2}

💡 어제 코칭: "{coaching_quote}"
━━━━━━━━━━━━━━━━━━━━
```

## 텔레그램 HTML 변환

```html
<b>━━━ Mr.Stack 모닝 브리핑 ━━━</b>
📅 {date} ({weekday})

<b>▸ 오늘 일정</b>
  {time} {title} ({location})

<b>▸ Pending Tasks</b>
  ◻ {task}

<b>▸ AI/Tech 뉴스</b>
  · {headline} — {summary}

💡 <i>어제 코칭: "{coaching_quote}"</i>
━━━━━━━━━━━━━━━━━━━━
```

## 규칙
- 전체 길이: 최대 1500자
- 일정이 없으면 "— 일정 없음" 한 줄로
- 뉴스는 최대 3개, 1줄 요약
- Pending Tasks 최대 5개
- 코칭 라인은 어제 evening-summary의 코칭 노트에서 핵심 1줄 발췌
- 구분선: ━ (U+2501) 사용, 상단 20자 / 하단 20자
- 섹션 prefix: ▸ (U+25B8)
- 한국어로 작성
