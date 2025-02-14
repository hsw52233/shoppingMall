# **쇼핑몰 프로젝트 📚**  
## 개요 📝
- **Spring Boot**기반으로 **MySQL**과 **MyBatis**를 활용하여 제작한 학원 그룹웨어 시스템.
- 관리자모드와 회원모드를 중심으로 시스템을 개발. 🎯
- 2024/11/25부터 2024/12/08까지 해당 프로젝트를 진행.

<br>

## 주요기능 💡
### 로그인 🔑
![로그인페이지](https://github.com/user-attachments/assets/5d1e7e5d-1874-4a79-9b2f-400f507575e6)<br>
- 사용자는 사원번호와 비밀번호를 입력해야 합니다.
- 올바른 인증 정보 입력 시 메인 페이지로 이동합니다. ✔️
- 사원번호를 브라우저 쿠키에 저장하여 이후 로그인 시 자동 입력 가능합니다. 🍪
---
### 회원모드 🕵️‍♀️
### 상품 메인 페이지
![상품메인페이지](https://github.com/user-attachments/assets/6dbd9da5-7d6d-4839-8a7e-8e50c12d0812)<br>
- 등록된 이메일을 입력하면 무작위 임시 비밀번호 8자리가 메일을 통해 발급되고, 이를 통해 로그인할 수 있습니다. 📧
- 비밀번호변경기능을 활용해 사용하고 싶은 비밀번호로 변경이 가능합니다.
---
### 장바구니 🏠
![장바구니](https://github.com/user-attachments/assets/26564a9c-5858-4448-84c9-6173f56fc16d)<br>
- 현재 시각을 표시하며 출퇴근 시간을 등록할 수 있습니다. 🕓
- 근태 정보, 연차 정보를 확인할 수 있고, 월별 근무 시간 그래프를 확인할 수 있습니다. 📊
- OpenWeather API를 통해 근무지의 실시간 날씨를 확인할 수 있습니다. 🌤️
- 최근 5개의 공지사항과 미결재 목록을 확인할 수 있습니다. 📢
---
### 주문내역 📇
![주문내역](https://github.com/user-attachments/assets/408599a6-7452-44ed-b65f-821248e1a96b)<br>
- 사원 정보를 검색하고 정렬할 수 있는 테이블을 제공합니다. 🔍
- 페이지 이동 및 행 수 선택 기능이 제공되어 편리하게 주소록을 탐색할 수 있습니다. 📄
---
### 주문 상세 내역 📝
![주문상세내역](https://github.com/user-attachments/assets/6ee264e9-255d-49ae-8396-3073529960d7)<br>
- 인사팀 권한을 가진 사원만 사원 등록을 할 수 있습니다. 👥
- 사원 정보, 부서, 직책, 주소 등을 입력해야 하며, 주소 입력은 Kakao 주소 API를 사용합니다. 📍
- 사원등록을 하면 초기비밀번호는 '1234'로 설정이되며, 추가된 사원은 비밀번호변경기능을 통해 자신의 비밀번호로 수정을 해야합니다.
---
### 관리자모드 🔍
### 스태프 리스트
![스태프리스트](https://github.com/user-attachments/assets/772b88ac-13d9-40f4-8879-bbc61e643f32)<br>
- 좌측에는 사원의 개인정보를 확인할 수 있고, 우측에는 FullCalendar API를 사용하여 해당 사원의 일정정보(회의, 강의, 휴가 등)를 확인할 수 있습니다. 📅
- 본인 사원 상세페이지(마이페이지)에는 비밀번호변경, 개인정보수정을 할 수 있습니다.
---
### 상품리스트 📝
![상품리스트(관리자)](https://github.com/user-attachments/assets/2286dd15-6cca-4bda-91c7-92bb4aef4fa8)<br>
- 연차, 반차, 병가, 공가를 신청할 때 필요한 결재를 신청할 수 있습니다.
- 결재신청할 때는 신청날짜선택, 신청내용입력, 파일첨부 및 결재선설정을 할 수 있습니다. 📎
- 결재선설정은 1명부터 3명까지 자유롭게 설정할 수 있으며, 위쪽에 배치되어있는 사원부터 결재가 차례대로 진행이 됩니다.
- 연차 신청 시 잔여 연차를 초과하면 결재가 진행되지 않습니다. ⛔
---
### 회원 페이지 📝
![회원페이지](https://github.com/user-attachments/assets/ff04b305-ef87-498b-bd75-0856aced548c)<br>
- 강의를 개설하고자 할 때 필요한 결재를 신청할 수 있습니다. ⏰
- 결재신청할 때는 신청날짜선택, 신청시간선택, 강의실선택, 강의내용입력, 신청내용입력, 파일첨부 및 결재선설정을 할 수 있습니다. 📎
- 결재선설정은 1명부터 3명까지 자유롭게 설정할 수 있으며, 위쪽에 배치되어있는 사원부터 결재가 차례대로 진행이 됩니다. 🔄
- 이미 등록되어있는 강의시간이나 신청이 진행중인 강의시간은 선택할 수 없으며, 잘못된 강의시간이 입력되지 않도록 다양한 유효성기능을 제공합니다.
---
### 리뷰 관리 🎓
![리뷰리스트](https://github.com/user-attachments/assets/e8ea3f9c-58f1-4a5f-8e21-8626ba9f3c23)<br>
- 행정팀 권한을 가진 사원만 결재된 강의를 수정할 수 있습니다. ✏️
- 강사, 강의실, 강의제목, 강의내용, 강의시간 등 강의에 대한 모든 정보를 수정할 수 있습니다.
- 강의시간은 이미 등록되어있는 강의시간이나 신청이 진행중인 강의시간은 선택할 수 없지만, 수정 중인 강의의 강의시간은 선택할 수 있습니다.
- 잘못된 강의시간이 입력되지 않도록 다양한 유효성기능을 제공합니다.
---

<br><br>

## 데이터베이스 구조 💾
![쇼핑몰DB](https://github.com/user-attachments/assets/dadff1ad-e945-4768-8597-224de2c975ec)<br>  
 

<br><br>

## 사용된 기술 스택 💻
| **분류**          | **기술 및 도구** |
|------------------|---------------------------------------------------------------|
| 🌐 **백엔드**     | ![Java](https://img.shields.io/badge/Java-007396?style=for-the-badge&logo=java&logoColor=white) ![Spring Boot](https://img.shields.io/badge/Spring%20Boot-6DB33F?style=for-the-badge&logo=springboot&logoColor=white) ![Spring Security](https://img.shields.io/badge/Spring%20Security-6DB33F?style=for-the-badge&logo=springsecurity&logoColor=white) ![MyBatis](https://img.shields.io/badge/MyBatis-000000?style=for-the-badge&logo=&logoColor=white) ![Apache Tomcat](https://img.shields.io/badge/Tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=black) |
| 🎨 **프론트엔드** | ![HTML](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white) ![CSS](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white) ![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black) ![jQuery](https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white) ![Tailwind CSS](https://img.shields.io/badge/Tailwind%20CSS-38B2AC?style=for-the-badge&logo=tailwindcss&logoColor=white) |
| 📜 **템플릿 엔진** | ![Thymeleaf](https://img.shields.io/badge/Thymeleaf-005F0F?style=for-the-badge&logo=thymeleaf&logoColor=white) |
| 💾 **데이터베이스** | ![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white) ![MySQL Workbench](https://img.shields.io/badge/MySQL%20Workbench-4479A1?style=for-the-badge&logo=mysql&logoColor=white) |
| 🤝 **협업 및 디자인** | ![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white) ![Figma](https://img.shields.io/badge/Figma-F24E1E?style=for-the-badge&logo=figma&logoColor=white) ![Google Sheets](https://img.shields.io/badge/Google_Sheets-34A853?style=for-the-badge&logo=google-drive&logoColor=white) |
| 🔧 **개발 도구**   | ![STS](https://img.shields.io/badge/Spring%20Tool%20Suite-6DB33F?style=for-the-badge&logo=spring&logoColor=white) ![ERD Cloud](https://img.shields.io/badge/ERD%20Cloud-005FCC?style=for-the-badge&logoColor=white) ![FileZilla](https://img.shields.io/badge/FileZilla-BF0000?style=for-the-badge&logo=filezilla&logoColor=white) |

<br><br>


## 팀 정보 🧑‍🤝‍🧑
| **이름** | **GitHub** | **담당 역할** |
|----------|-----------|--------------|
| 👨‍💻 **이동윤**  | [https://github.com/LYUN555](https://github.com/LYUN555) | 회원모드 |
| 👨‍💻 **하상우**  | [https://github.com/hsw52233](https://github.com/hsw52233) | 관리자모드 |

<br><br>


