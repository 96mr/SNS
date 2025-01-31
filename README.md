## SNS
> 타임라인 형식으로 게시글을 볼 수 있으며, 좋아요와 댓글, 팔로우 기능이 포함된 소셜 네트워크 서비스. 약 3개월 동안 진행된 개인 프로젝트로 처음 Spring Framework를 사용해보며 프로젝트 구조와 Spring 설정, Spring MVC 동작 흐름을 이해하는 데 도움이 되었습니다. 미흡한 부분이 있지만 이를 통해 웹 개발의 기초와 문제 해결 능력을 기를 수 있었습니다.

---
## 제작 기간
2020년 5월 6일 ~ 7월 21일

---
## 기술 스택
![Java 8](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![Spring Framework 4](https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white)
![Oracle](https://img.shields.io/badge/oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white)
![Mybatis](https://img.shields.io/badge/MyBatis-000000?style=for-the-badge&logo=MyBatis&logoColor=white)

![HTML5](https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white) 
![CSS](https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![JQuery](https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white)
![Ajax](https://img.shields.io/badge/Ajax-2c83b9?style=for-the-badge&logo=Ajax&logoColor=white)
 
---
## 주요 기능

### ✏ 회원 
- 회원가입 및 로그인
- 아이디, 비밀번호 찾기
- Interceptor를 이용하여 비회원의 페이지 접근 제어
- 회원 정보 수정
- 프로필 조회 및 수정

### ✏ 게시글
- 무한스크롤으로 최신 글을 20개씩 조회하여 타임라인 구성
- 게시글 작성 시 텍스트(최대 300자, 입력 글자 수 카운트)와 이미지 업로드(미리보기) 가능
- Swiper 라이브러리를 이용하여 이미지를 슬라이드로 넘김
- 날짜 포맷은 작성일로부터 'n초 → n분 → n시간 → n일 → yyyy년 MM일 dd일' 로 변환

### ✏ 프로필
- '전체, 텍스트, 이미지, 좋아요 누른 게시물' 4개의 탭으로 분류

### ✏ 팔로우
- 팔로우 여부에 따른 팔로우 버튼 색 변경
- 팔로워/팔로잉 수와 리스트 조회

### ✏ 댓글
- 계층형 쿼리로 댓글과 댓글에 대한 답글 구현

### ✏ 좋아요
- 유저는 게시글 당 한 번의 좋아요 가능, 좋아요 한 유저 리스트 조회

### ✏ 실시간 알림
- WebSocket을 이용하여 유저에게 팔로우, 댓글, 좋아요가 발생할 때 전송

---
## 상세 내용
[notion](https://www.notion.so/SNS-Spring-legacy-mybatis-0248895ddb034be39d942a7838bf039c?pvs=4)

[Blog](https://cookie9606.tistory.com/47)
