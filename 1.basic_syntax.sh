#사용자가 현재 위치해 있는 폴더 경로 출력 명령어
pwd

# git add . 수정한파일 모두 업로드 하겠음
# git commmit -m " first file" - 수정사실 확정하겠음, -m (확정한 스텝에 메모남김)
# git push origin main - 원격에 있는 웹사이트에 밀어넣음

#만약 안될경우
#git git config --global user.mail "hannahparis@naver.com"
#git config --global user.name "haah21" //소스코드 누가 업로드 하는지 설정
#git push origin main

#사용자의 현재 위치 파일 출력 

pwd

#현재 위치에서 파일, 폴더 목록 출력

ls

#자세히 출력

ls-l

#숨김파일까지 출력

ls-al

#시간 순서로 정렬 등등

ls-alrt

#디렉토리 생성

mkdir 이름 

#특정 디렉토리로 이동

cd 이름

#루트(최상단 디렉토리) 디렉토리로 이동

cd / 

#절대 경로 폴더로 이동

cd /home/hannah/my_dir

#상대경로 폴더로 이동

#일반적으로는 ..은 한단계 상위 폴더 의미 .은 현제폴더 의미

cd my탭 두번치면 my로 시작하는 파일들 보여줌

#절대경로로 파일위치 이동

cd /home/hannah/my_dir

#상대경로로 파일위치 이동

cd ..

cd my_dir2

# 특정 계정의 홈 경로로 이동(home/hannah)

cd

#직전 위치의 폴더로 이동

cd -