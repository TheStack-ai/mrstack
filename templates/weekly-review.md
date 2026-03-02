# Weekly Review Template

## 형식

```
━━━ Mr.Stack 주간 회고 ━━━
📊 {start_date} ~ {end_date}

▸ 주간 통계
  총 대화: {total_conversations}회 | 커밋: {total_commits}개
  가장 생산적: {best_day} ({best_day_count}회)
  피크 시간: {peak_hours}

▸ 프로젝트별
  {project_1}  {bar_1} {pct_1}%
  {project_2}  {bar_2} {pct_2}%
  {project_3}  {bar_3} {pct_3}%

▸ 이번 주 잘한 점
  · {highlight_1}
  · {highlight_2}

▸ 주요 결정사항
  · {decision_1}: {reason_1}

▸ 배운 것
  · {learning_1}

▸ 다음 주 추천
  · {recommendation_1}
  · {recommendation_2}

🏷️ 키워드: {keyword_1}, {keyword_2}, {keyword_3}
━━━━━━━━━━━━━━━━━━━━
```

## 텔레그램 HTML 변환

```html
<b>━━━ Mr.Stack 주간 회고 ━━━</b>
📊 {start_date} ~ {end_date}

<b>▸ 주간 통계</b>
  총 대화: {total_conversations}회 | 커밋: {total_commits}개
  가장 생산적: {best_day} ({best_day_count}회)
  피크 시간: {peak_hours}

<b>▸ 프로젝트별</b>
  {project_1}  {bar_1} {pct_1}%
  {project_2}  {bar_2} {pct_2}%

<b>▸ 이번 주 잘한 점</b>
  · {highlight}

<b>▸ 주요 결정사항</b>
  · {decision}: {reason}

<b>▸ 배운 것</b>
  · {learning}

<b>▸ 다음 주 추천</b>
  · {recommendation}

🏷️ <i>키워드: {keyword_1}, {keyword_2}, {keyword_3}</i>
━━━━━━━━━━━━━━━━━━━━
```

## 프로그레스 바 생성 규칙
- 10칸 기준: █ (채워진) + ░ (빈)
- 퍼센트를 10으로 나눠서 반올림한 개수만큼 █
- 예: 40% → ████░░░░░░

## 규칙
- ~/claude-telegram/memory/daily/ 파일 기반으로 작성
- 성과는 구체적 결과물 중심 (커밋 수, 완료 태스크 수 포함)
- 결정사항은 "왜"를 반드시 포함
- 다음 주 추천은 데이터 기반 (피크 시간, 생산적 패턴 분석)
- 전체 길이: 최대 2000자
- 한국어로 작성
