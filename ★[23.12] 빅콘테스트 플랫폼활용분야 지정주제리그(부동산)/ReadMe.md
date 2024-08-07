# 📌 23년 빅콘테스트 플랫폼활용분야 지정주제리그(부동산)

### 📄 1. 대회 개요
  - [블로그 게시물 링크(상세 정리) 🔗](https://blog.naver.com/2hannseok/223295662908)
  - [대회 링크 🔗](https://bd.kma.go.kr/contest/info_05.do) 
  - 주최/주관 : 과학기술정보통신부, 한국지능정보사회진흥원, 한국부동산원
  - 배경 : 상업용 부동산 가치 창출을 위한 소상공인 매출등급 예측모형 제작 및 활용방안 제시
  - 주제 : 공공데이터를 활용한 소상공인 매출등급 예측 모델 제작
  - 기간 : 2023.09.01 ~ 2023.12.13
  - :trophy: 🥇 (최우수상)

### 📊  2. FLOW 
  - 데이터 수집 : 서울시열린데이터광장, 공공데이터포털 등
  - Data Pre-processing : 지오코딩 활용 공공데이터의 위치정보(좌표) -> 해당 필지(건물 등 토지 단위) 매핑, 법정동 단위 결합 등
  - [EDA] : 지역별 매출등급 편차, 업종별 차이 등 비교 분석 -> 최종 태블로 대시보드 반영
  - Feature Engineering (EDA 기반 피쳐 생성)
  - Modeling : RandomForest, LightGBM, XGBOOST, KNN(일반화 목적) 스태킹
  - [태블로 대시보드 제작 🔗](https://public.tableau.com/app/profile/seungyong.lee/viz/__16955237451750/sheet1)
  - [참고자료](https://github.com/Lee-han-seok/Data-Competition/blob/main/%E2%98%85%5B23.12%5D%20%EB%B9%85%EC%BD%98%ED%85%8C%EC%8A%A4%ED%8A%B8%20%ED%94%8C%EB%9E%AB%ED%8F%BC%ED%99%9C%EC%9A%A9%EB%B6%84%EC%95%BC%20%EC%A7%80%EC%A0%95%EC%A3%BC%EC%A0%9C%EB%A6%AC%EA%B7%B8(%EB%B6%80%EB%8F%99%EC%82%B0)/%EC%9A%B0%EB%A6%AC4Lee_%EC%B5%9C%EC%A2%85%EB%B0%9C%ED%91%9C%EC%9E%90%EB%A3%8C.pdf)

### 🎯 3. Main Point
- '좋은 데이터'를 만드는게 가장 중요하다는 판단(제공 데이터는 '아이디'와 '라벨'만 존재하는 상황이었음 😱) -> 공공데이터 효과적인 결합을 위한 다양한 전처리 시도 (지오코딩, QGIS를 활용한 변환, 법정동 단위로 변환 등...) 
  - '필지' 단위는 건물 등 하나의 토지 단위로 한 필지내에도 여러 소상공인 존재 가능. 따라서 가능한 '세부적인' 데이터 특수성 반영 필요
  - 이러한 다양한 방식의 결합, 결합 이후 전처리 등으로 '전처리' 파트에 집중했음. 
-
-

### ❗ 4. 느낀점
-
-
-


### ✏️ 5. Study
-
-
