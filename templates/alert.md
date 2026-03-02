# Alert Template

## 형식

```
━━━ Mr.Stack 알림 ━━━
{emoji} {alert_type}

▸ 내용
  {description}

▸ 발생 시각
  {timestamp}

▸ 영향
  {impact}

▸ 권장 조치
  · {action_1}
  · {action_2}
━━━━━━━━━━━━━━━━━━━━
```

## 텔레그램 HTML 변환

```html
<b>━━━ Mr.Stack 알림 ━━━</b>
{emoji} <b>{alert_type}</b>

<b>▸ 내용</b>
  {description}

<b>▸ 발생 시각</b>
  {timestamp}

<b>▸ 영향</b>
  {impact}

<b>▸ 권장 조치</b>
  · {action_1}
  · {action_2}
━━━━━━━━━━━━━━━━━━━━
```

## 알림 등급
- 🔴 <b>긴급</b>: 즉시 조치 필요 (서비스 장애, 보안 이슈)
- 🟡 <b>주의</b>: 확인 필요 (성능 저하, 이상 패턴)
- 🟢 <b>정보</b>: 참고용 (작업 완료, 상태 변경)
- ⚪ <b>시스템</b>: 내부 상태 변경 (토큰 갱신, 동기화 완료)

## 규칙
- 간결하게: 최대 500자
- 결론 먼저, 상세 나중
- 조치 가능한 내용 반드시 포함
- 구분선/섹션 prefix는 디자인 가이드 기준 준수
- 한국어로 작성
