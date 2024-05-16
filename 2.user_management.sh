#사용자 추가
sudo useradd 사용자명
#패스워드 지정
sudo passwd 사용자명 패스워드
#사용자목록 조회
cat /etc/passwd
#사용자 전환 : 비밀번호는 전환하고자 하는 사용자 비밀번호
sudo su -  사용자명
#파일 권한 관리
#권한은 세 파트(user:group:othrers)로 구성되어 있고, 각 권한은 r(4)w(2)x(1)
chmod 777 : test.sh
chmod u+x tesr.sh //user에게 실행권한 추가 664 -> 764
chmod g-w test.sh //group에서 write 권한 뺌

#사용자 권한없는 사람으로 변경
해당파일 nano로 open
readonly인지 아닌지 확인 -> 수정후 저장 안될것.
#파일 소유자/그룹 관리

시스템 전체 보안에 영향을 끼칠 수 있는 상황(사용자 추가) -> 작업 불가능
사용자 : root, 일반 사용자들(hannah, hannah2 ...)
일반 사용자 - 사용자 추가 불가능 -> root 사용자로 전환해야함
root 사용자로 전환 방법 su - //해서 안됨 why? -> root 사용자의 비밀번호 모르므로
sudo : root 사용자의 권한 빌림
useradd hannah2 (error) -> sudo useradd hannah2
비밀번호 입력해야하는데 현재 나의 비밀번호 입력하면됨

신규사용자에게 read 권한 추가 (매우많이 사용됨)
sudo chmod 777 username
ls - al 해서 확인해보기
su - username
sudo chmod 755 username

#파일 소유자/그룹 관리
소유자와 그룹 변경
chown 소유자:그룹 파일명