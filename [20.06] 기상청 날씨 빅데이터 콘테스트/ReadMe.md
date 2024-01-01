# 📌 제목

### 📄 1. 대회 개요
  - [블로그 게시물 링크(상세 정리) 🔗]()
  - [대회 링크 🔗](https://bd.kma.go.kr/contest/info_05.do) 
  - 주최/주관 : 기상청, 현대제철
  - 배경 : 공정 품질 저하 요소인 '결로' 발생 예측을 통한 공정 품질 향상 기여 (이상탐지)
  - 주제 : 공장 내 철강제품의 결로 발생 예측 모형 개발
  - 기간 : 20.04.27 ~ 20.06.29
  - :trophy: : -

### 📊  2. FLOW 
  - Data Pre-processing (Under sampling)
  - EDA 
  - Feature Engineering (EDA 기반 피쳐 생성)
  - Modeling (Conditional 1d CNN 등 딥러닝 모델 사용)
  - [참고자료](https://github.com/Lee-han-seok/Data-Competition/blob/main/%5B20.06%5D%20%EA%B8%B0%EC%83%81%EC%B2%AD%20%EB%82%A0%EC%94%A8%20%EB%B9%85%EB%8D%B0%EC%9D%B4%ED%84%B0%20%EC%BD%98%ED%85%8C%EC%8A%A4%ED%8A%B8/Conditional%201D%20CNN%EC%9D%84%20%EC%82%AC%EC%9A%A9%ED%95%9C%20%EA%B2%B0%EB%A1%9C%20%EC%98%88%EC%B8%A1%20%EB%AA%A8%ED%98%95.pdf)

### 🎯 3. Main Point
- 기상청 대회인 만큼, 기상 요소가 중요하게 작용할것으로 판단. 기상 데이터를 효과적으로 사용하기 위해 고민
- 시계열 이상탐지로 Data 불균형이 심했고, 이를 해결하기 위해 다양한 방법 적용
- 딥러닝 기반 시계열 모델 사용 (Conditional 1d CNN)

(+) Conditional 1d CNN :  시계열 데이터에서 이상 탐지를 위해 조건부(모델이 데이터의 특정 조건이나 맥락을 고려하여 판단) 정보를 고려하는 1차원 CNN 구조 

### ❗ 4. 느낀점
- 이상현상이 극소량인 만큼 당장 보이는 탐지 정확도는 높지만, 실질적으로 새로운 이상현상이 발생할 경우 성능이 급락했다. (과적합)
- 시계열적으로만 접근을 시도했는데 다양한 이상탐지 중심의 기법을 적용했다면 더 좋은 모델을 만들 수 있었을것으로 예상
- 근접 지역이었던 당진의 기상데이터만 사용했으나 제공되었던 주변 지역의 기상 정보를 활용 필요

