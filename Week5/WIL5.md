# 1. Stateless vs Stateful

### 1. state란?

- UI에 영향을 미치는 데이터
- 즉, 앱 내부의 데이터나 사용자의 입력과 같은 변화하는 정보를 말함
- state의 종류
    - **AppData** : 앱 전반에서 사용되는 데이터
    - **WidgetData** : 위젯에서만 사용되는 데이터

### 2. stateless

- **stateless widget** : 상태가 없는 위젯 → 표현할 데이터가 없는 위젯
- 모양이 고정된 위젯으로 처음 그려진 모습 그대로 유지됨
- 새로고침이 없음

### 3. stateful

- **stateful widget** : 데이터가 존재하며 데이터가 변경됨에 따라 UI가 변하는 위젯
- setState() 라는 함수를 사용하여 데이터의 변경을 알릴 수 있음
- 새로고침이 존재함

# 2. 플러터의 상태관리

### 1. 플러터의 상태관리란?

- 앱이 사용자와 상호 작용하며 변경되는 데이터를 관리하는 것
- 기본적으로 stateful widget을 사용하여 상태를 관리할 수 있으나, 복잡한 앱의 상태를 보다 효율적으로 관리하기 위해 여러 라이브러리를 사용함

### 2. 주요 상태 관리 툴

- **Provider**
    - 플러터 플러그인으로, 상태 관리를 위한 간단한 방법을 제공함
    - 상태를 전역으로 공유할 수 있음
    - ChangeNotifier나 ValueNotifier와 함께 사용됨
    - ChangeNotifier : Provider와 함께 사용되는 클래스 중 하나로 상태 변경을 감지하고 위젯에 알림
    - ValueNotifier : ChangeNotifier의 간단한 형태로 단일 값의 변경을 추적하고 알림
- **Bloc (Business Logic Component)**
    - 플러터 앱에서 비즈니스 로직과 UI를 분리하기 위한 패턴
    - 이벤트에 따라 상태를 변경하는 방식으로 동작함
    - BlocProvider를 통해 Bloc을 앱 전반에 걸쳐 제공할 수 있음
- **Riverpod**
    - Provider 패키지를 사용하여 구현된 상태 관리 라이브러리
    - Provider와 비슷하지만 더 많은 기능과 편의성을 제공함
- **Redux**
    - 앱의 전역 상태를 관리하기 위한 패턴 및 라이브러리
    - 앱의 상태를 변경하는 모든 작업은 액션(Action)을 발생시키며, 액션에 따라 상태가 변함
    - redux 패키지를 사용하여 구현할 수 있음