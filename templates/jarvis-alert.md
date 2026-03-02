# Jarvis Alert Template

## 형식

```
[Mr.Stack] {message}
```

## 알림 유형별 예시

### 배터리/하드웨어
```
[Mr.Stack] 배터리 {pct}% — 저장하시고 충전하세요.
[Mr.Stack] 디스크 {pct}% 사용 — 정리 필요합니다.
```

### 집중/휴식
```
[Mr.Stack] {hours}시간째 코딩 중 — 5분 쉬어가시죠.
[Mr.Stack] 딥워크 {hours}시간 달성. 훌륭합니다.
[Mr.Stack] 컨텍스트 전환 {count}회 감지 — 한 가지에 집중해보세요.
```

### 복귀/상태 변화
```
[Mr.Stack] 돌아오셨네요. {branch} 브랜치, 변경 {count}개 uncommitted.
[Mr.Stack] {minutes}분째 자리 비움 — 회의 중이시면 무시하세요.
```

### 스케줄
```
[Mr.Stack] {minutes}분 후 {event_title} 시작입니다.
[Mr.Stack] {event_title} 5분 전 — 준비하세요.
```

### 시스템
```
[Mr.Stack] 토큰 갱신 완료. 다음 만료: {expiry_date}.
[Mr.Stack] 메모리 동기화 완료 ({count}개 항목 업데이트).
[Mr.Stack] GitHub: {repo}에 새 이슈 #{number}.
```

## 텔레그램 HTML 변환

```html
<b>[Mr.Stack]</b> {message}
```

필요시 강조:
```html
<b>[Mr.Stack]</b> 배터리 <b>{pct}%</b> — 저장하시고 충전하세요.
```

## 규칙
- prefix는 반드시 [Mr.Stack]으로 시작
- 한 줄로 끝내는 것이 원칙 (최대 100자)
- 존댓말 사용하되 간결하게
- 조치가 필요하면 "—" 뒤에 구체적 행동 제안
- 정보 전달만이면 사실만 기술
- 불필요한 이모지 사용 금지 (prefix의 [Mr.Stack]이 브랜딩 역할)
- Jarvis ContextEngine 트리거에 의해 자동 발송
- 긴급도에 따라 텔레그램 알림음 설정:
  - 긴급 (배터리 < 10%, 서비스 장애): disable_notification=false
  - 일반: disable_notification=true
