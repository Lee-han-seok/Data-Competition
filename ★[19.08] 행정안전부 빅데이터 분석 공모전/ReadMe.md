# 📌 2019 행정안전부 빅데이터 분석 공모전

### 📄 1. 대회 개요
  - [대회 자료집 🔗](https://www.data.go.kr/bbs/rcr/selectRecsroom.do?pageIndex=1&originId=PDS_0000000000000683&atchFileId=FILE_000000001579801&searchCondition3=&searchCondition2=2&cndCtgryLaword=Y&cndCtgryEdc=Y&cndCtgryBigdata=Y&cndCtgryStd=Y&cndCtgryNews=Y&cndCtgryEtc=Y&bindCndCtgry=PDTY01%2CPDTY02%2CPDTY03%2CPDTY04%2CPDTY05%2CPDTY06&sort-post=2&searchKeyword1=) 
  - 주최/주관 : 행정안전부, NIA
  - 배경 : 공공데이터와 민간데이터를 활용하여 사회현안 또는 일상생활 속 문제를 국민이 직접 해결
  - 주제 : 서울시 무더위 쉼터 확충 입지 선정 - 이용 연령대 확대, 형태의 다양화를 중점으로
  - 기간 : 2019.07.04 ~ 2019.09.04
  - :trophy: 3위 (장려상)

### 📊  2. FLOW 
  - Data Pre-processing : 서울시 행정동 기준 공공데이터(인구, 교통, 문화 등) 수집, 행정동별 결합
  - Clustering : 424개(2019 기준) 행정동 군집화, 3개 군집 중 높은 유동성과 입주 후보지가 많은 1번 군집 선택
  - GIS 분석 : SKT 유동인구 데이터를 결합 후(대회 제공), QGIS를 활용한 입지 분석 수행
  - 최종 입지 선정
  - [참고자료](https://github.com/Lee-han-seok/Data-Competition/blob/main/%E2%98%85%5B19.08%5D%20%ED%96%89%EC%A0%95%EC%95%88%EC%A0%84%EB%B6%80%20%EB%B9%85%EB%8D%B0%EC%9D%B4%ED%84%B0%20%EB%B6%84%EC%84%9D%20%EA%B3%B5%EB%AA%A8%EC%A0%84/i-Space%20%EC%9E%85%EC%A7%80%EC%84%A0%EC%A0%95_%EB%8B%A4%EC%96%91%ED%95%9C%20%EC%97%B0%EB%A0%B9%EB%8C%80%EA%B0%80%20%EC%9D%B4%EC%9A%A9%EA%B0%80%EB%8A%A5%ED%95%9C%20%EB%AC%B4%EB%8D%94%EC%9C%84%20%EC%89%BC%ED%84%B0(SMG).pdf)

### 🎯 3. Main Point
- (행정동별 군집화 -> 최적 군집 선정 -> 유동인구 데이터를 결합한 세부 입지선정) 순서로 단계별 접근하며 논리적으로 입지 후보지를 줄여나가고자 했다.
- 

### ❗ 4. 느낀점
- 입지 선정은 그 기준이 명확해야 하며, 논리가 타당해야 한다. 어느정도 갖추었기 때문에 입상을 했겠지만, 심사위원 모두를 설득시키기에는 논리가 약했다. 
- 


