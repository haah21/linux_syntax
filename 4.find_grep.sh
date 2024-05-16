# 문자열 검색 : grep
grep -rni "hello"
ps -ef | grep "ngnix" // 모든 프로세스 출력
> ngnix 찾기

# 파일 또는 디렉토리 검색 : find
find . -name "*.sh" //현재위치에서 .sh로 끝나는 파일 모두 찾음

파일의 내용 찾고 싶을 때
find . -name "*.txt"  | xargs grep -n “hello”

#exec 옵션을 통한 find 와 grep
find .  -name "*.sh" -exec grep -n “hell0” {} \;