# Evening Summary Template

## 형식

```
━━━ Mr.Stack 데일리 리포트 ━━━
📊 {date} ({weekday})

▸ 생산성 스코어: {score_bar} {score}/10

▸ 오늘의 하이라이트
  ✓ {completed_1} ({detail_1})
  ✓ {completed_2}

▸ 미완료
  ◻ {pending_1} → 내일 이어서

▸ 시간 분석
  코딩: {coding_bar} {coding_hours}h
  리뷰: {review_bar} {review_hours}h
  회의: {meeting_bar} {meeting_hours}h
  기타: {other_bar} {other_hours}h

▸ 코칭 노트
  잘한 점: {strength}
  개선점: {improvement}
  내일 제안: {suggestion}
━━━━━━━━━━━━━━━━━━━━
```

## 텔레그램 HTML 변환

```html
<b>━━━ Mr.Stack 데일리 리포트 ━━━</b>
📊 {date} ({weekday})

<b>▸ 생산성 스코어:</b> {score_bar} {score}/10

<b>▸ 오늘의 하이라이트</b>
  ✓ {completed_1} ({detail_1})
  ✓ {completed_2}

<b>▸ 미완료</b>
  ◻ {pending_1} → 내일 이어서

<b>▸ 시간 분석</b>
  코딩: {coding_bar} {coding_hours}h
  리뷰: {review_bar} {review_hours}h
  회의: {meeting_bar} {meeting_hours}h
  기타: {other_bar} {other_hours}h

<b>▸ 코칭 노트</b>
  잘한 점: {strength}
  개선점: {improvement}
  <i>내일 제안: {suggestion}</i>
━━━━━━━━━━━━━━━━━━━━
```

## 프로그레스 바 생성 규칙
- 생산성 스코어: 10칸, score 값만큼 █, 나머지 ░
  - 예: 8/10 → ████████░░
- 시간 분석: 10칸, (hours / total_hours * 10) 반올림
  - 예: 4.2h / 8h → ██████░░░░

## 규칙
- 하이라이트: 완료된 항목만, 커밋 수 등 수치 포함
- 미완료: 다음 날 이어서 할 항목 최대 3개
- 시간 분석: Jarvis ContextEngine 데이터 기반 (osascript 앱 사용 시간)
- 코칭 노트: PatternLearner의 일일 분석 결과 활용
- 이 리포트의 "내일 제안"이 다음 날 morning-briefing의 코칭 라인으로 연결됨
- 전체 길이: 최대 1500자
- 한국어로 작성
- 일일 메모리 저장: ~/claude-telegram/memory/daily/{date}.md 에도 기록
