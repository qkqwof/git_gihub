# github 인증 방법
# 1. oauth 인증 방식 (제3자 인증 방식 - 웹 로그인)
# 2. pat 토근 인증 방식 : github에서 직접 보안키 발급
# 발급한 키를 키체인(자격증명)에 등록

# git 프로젝트 생성 방법 2가지
# 방법 1 : github에서 진행 중인 원격 repo를 clone
# 방법 2 : 로컬에서부터 이미 진행중인 프로젝트를 github에 업로드

# 로컬 프로젝트 초기화
git init

# 원격 repo 추가
git remote add origin 레포주소

# 원격 repo 삭제
git remote remove origin

# 원격 repo 주소 변경
git remote set-url origin 레포주소

# 환경변수 확인
git config --list

# 환경변수 설정
git config --global user.name "이름"
git config --global user.email "이메일"

# 환경변수 삭제
git config --global --unset user.name
git config --global --unset user.email

# 타인의 레포 clone 받는 2가지
# 1. 커밋이력 그대로 가져오기
git clone 레포주소

# 해당 폴더 이동 후 github 레포주소 변경
git remote set-url origin 레포주소
git push origin main

# 2. 커밋이력 없이 레포 가져오기
# 해당 폴더 이동 후, .git 폴더 삭제
git init
git remote add origin 레포주소
git add .
git commit -m "초기 커밋"
git push origin master