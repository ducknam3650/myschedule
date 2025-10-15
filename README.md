# 📅 스케줄 관리 프로그램

간단하고 직관적인 터미널 기반의 일정 관리 애플리케이션입니다. MySQL 데이터베이스를 사용하여 일정을 저장하고 관리할 수 있습니다.

## 🚀 주요 기능

- ✅ 일정 추가
- 📋 일정 조회  
- ✔️ 일정 완료 처리
- 🗃️ MySQL 데이터베이스 연동

## 🛠️ 기술 스택

- **언어**: Python 3.x
- **데이터베이스**: MySQL 8.0
- **라이브러리**: PyMySQL, Cryptography
- **컨테이너**: Docker & Docker Compose

## 📋 사전 요구사항

- Python 3.7 이상
- Docker 및 Docker Compose
- Git

## ⚙️ 설치 및 실행

### 1. 프로젝트 클론

```bash
git clone <repository-url>
cd schedule-manager
```

### 2. 가상환경 설정

```bash
# 가상환경 생성
python -m venv .venv

# 가상환경 활성화 (macOS/Linux)
source .venv/bin/activate

# 가상환경 활성화 (Windows)
.venv\Scripts\activate
```

### 3. 의존성 설치

```bash
# requirements.txt를 이용한 설치
pip install -r requirements.txt

# 또는 setup.py를 이용한 패키지 설치 (어디서든 실행 가능)
make install
# 또는
pip install -e .
```

### 4. 데이터베이스 설정

```bash
# Docker로 MySQL 컨테이너 시작
make up
# 또는
docker-compose up -d
```

### 5. 프로그램 실행

#### 방법 1: 직접 실행
```bash
python schedule_manager.py
# 또는
make run
```

#### 방법 2: 패키지로 설치된 경우 (어디서든 실행 가능)
```bash
myschedule
```

## 📖 사용법

프로그램을 실행하면 다음과 같은 메뉴가 표시됩니다:

```
1. 일정 추가
2. 일정 보기  
3. 일정 완료
4. 종료
```

### 일정 추가시 입력 형식

- **제목**: 일정의 제목을 입력
- **설명**: 일정에 대한 상세 설명
- **시작 시간**: `YYYYMMDDHHMMSS` 형식 (예: 20251115083000)
- **종료 시간**: `YYYYMMDDHHMMSS` 형식 (예: 20251115170000)

> **참고**: 날짜/시간은 14자리 숫자로 입력해야 합니다.
> - 2025년 11월 15일 오전 8시 30분 → `20251115083000`

## 🔧 Makefile 명령어

| 명령어 | 설명 |
|--------|------|
| `make up` | Docker 컨테이너 시작 |
| `make down` | Docker 컨테이너 종료 |
| `make restart` | Docker 컨테이너 재시작 |
| `make logs` | Docker 로그 확인 |
| `make status` | Docker 상태 확인 |
| `make clean` | Docker 볼륨 삭제 |
| `make install` | Python 패키지 설치 |
| `make run` | 일정 관리 프로그램 실행 |
| `make connect` | MySQL 데이터베이스 연결 |

## 🗄️ 데이터베이스 정보

- **호스트**: localhost
- **포트**: 3307
- **사용자**: root
- **비밀번호**: 1234
- **데이터베이스**: schedule_db

## 📁 프로젝트 구조

```
schedule-manager/
├── schedule_manager.py     # 메인 프로그램
├── requirements.txt        # Python 의존성
├── setup.py               # 패키지 설치 설정
├── docker-compose.yaml    # Docker 설정
├── init.sql              # 데이터베이스 초기화
├── Makefile              # 빌드 자동화
└── README.md            # 프로젝트 문서
```

## 🐛 문제 해결

### 일반적인 오류

1. **"Incorrect datetime value" 오류**
   - 날짜/시간을 정확히 14자리로 입력했는지 확인
   - 형식: `YYYYMMDDHHMMSS` (예: 20251115083000)

2. **데이터베이스 연결 오류**
   - Docker 컨테이너가 실행 중인지 확인: `make status`
   - 포트 3307이 사용 가능한지 확인

3. **패키지 설치 오류**
   - 가상환경이 활성화되어 있는지 확인
   - Python 3.7 이상인지 확인

## 📝 라이선스

이 프로젝트는 교육 목적으로 만들어졌습니다.

## 👨‍💻 개발자

- **작성자**: Your_name
- **버전**: 1.0.0
