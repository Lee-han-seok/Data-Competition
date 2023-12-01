# 📌 제주 특산물 가격 예측 AI 경진대회

### 📄 1. 대회 개요
  - [블로그 게시물 링크(상세 정리) 🔗](https://blog.naver.com/2hannseok/223279994399)
  - [대회 링크 🔗](https://dacon.io/competitions/official/236176/overview/description) 
  - 주최/주관 : 제주특별자치도, 제주테크노파크, DACON
  - 배경 : 제주도에는 다양한 특산물이 존재하며, 그 중 양배추, 무(월동무), 당근, 브로콜리, 감귤은 제주도의 대표적인 특산물들 중 일부입니다. 이런 특산물들의 안정적이고 효율적인 수급을 위해서는 해당 특산물들의 가격에 대한 정확한 예측이 필요합니다.따라서 제주테크노파크에서는 특산물 가격 예측에 대한 효율적인 인공지능 알고리즘과 인사이트 발굴을 목표로 본 대회를 개최합니다.
  - 주제 : 제주도 특산물의 가격을 예측하는 AI 모델 개발 및 인사이트 발굴
  - 기간 : 2023.10.26 ~ 2023.11.20
  - :trophy: Public 47위 / Private 31위

### 📊  2. FLOW 
  - Data Pre-processing
  - [EDA](https://github.com/Lee-han-seok/Data-Competition/blob/main/%EC%A0%9C%EC%A3%BC%20%ED%8A%B9%EC%82%B0%EB%AC%BC%20%EA%B0%80%EA%B2%A9%20%EC%98%88%EC%B8%A1%20AI%20%EA%B2%BD%EC%A7%84%EB%8C%80%ED%9A%8C%20(2023.10.26%20~%202023.11.20)/1.EDA.ipynb)
  - Feature Engineering (EDA 기반 피쳐 생성)
  - Modeling (Pycaret : XGBoost, LightGBM, RandomForest, CatBoost | AutoGluon : Naive, SeasonalNaive, Theta, AutoETS, RecursiveTabular, DeepAR) 
  - Data Post-processing (EDA 결과에 따라 휴일 0으로 처리, 음수값 처리)
  - [참고자료]()

### 🎯 3. Main Point
  - EDA를 바탕으로한 피쳐엔지니어링, 전처리, 예측값 후처리
  - 기본 Train Data의 일자 데이터를 이용한 피쳐 최대한 생성 (요일, 휴일, 토요일 등)
  - 외부데이터 사용 금지로 효과적인 Trade 데이터 활용방안 도출 필요
  - Trade 데이터에서는 각 피쳐와 직접 연관있는 칼럼 (당근, 감귤, 양배추 등)과 각 Item과 높은 상관관계를 보인 칼럼들을 연-월 단위의 Pivot형태로 병합 
  - Pycaret을 이용한 ML 모델링은 60여개의 피쳐를 생성하여 학습 및 예측
  - AutoGluon을 이용한 시계열 예측 모델은 단순한 데이터로 학습 및 예측 (복잡한 칼럼이 되려 성능 하락으로 이어짐)
  - AutoGluon 기본 모델이 ML 회귀 기반의 스태킹 모델보다 현저히 높은 성능을 보였음:sob:  (Public 기준 RMSE 80 하락)
  - 다만, 시계열 모델만으로는 각 시간별 특징을 충분히 반영하지 못한다고 판단했음.
  - 최종적으로 회귀기반 스태킹 모델과 AutoGluon 시계열 모델을 앙상블(AutoGluon으로 가중평균을 두고)을 진행
  - Public RMSE 662.58701, **48/1104(상위 4.3%)** / Private RMSE 868.32816 **31/1104(상위 2.8%)**

### ❗ 4. 느낀점
  - 시계열 데이터로 회귀모델로 접근시 한계 존재
  - EDA가 충분하다고 생각했으나, Item 별 인사이트 부족했음
  - 최종 수상자분들의 ppt와 코드를 확인해봤을 때, trade 데이터를 복잡하게 사용하기 보다는 item별 접근과 전처리, 특이점 처리에 집중한 모습이었음.
  - 되려 trade 데이터를 활용한 복잡한 모델이 성능 저해 요소였던것으로 보임


### ✏️ 5. Study
  - 시계열 모델 학습
  - [AutoGluon 모델](https://auto.gluon.ai/stable/index.html)
