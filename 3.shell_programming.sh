# Script 파일 생성
touch myscript.sh
nano myscript.sh
내용편집

#shell프로그래밍이란?
사용자와 운영체제간 인터페이스 프로그래밍

#실습
[test2.sh](http://test2.sh) 생성후 아래작업
시작할때 sript start 문구 출력 
홈디렉토리(/home/hannah)에서 my_dir4 생성 
my_dir4에서 file1.txt file2.txt 파일생성
file1.txt에서 “hello file1”입력, file2.txt에 “hello file2”입력
file1은 file1_backup.txt로 백업파일 보관
file2는 file2_rename.txt로 파일명 변경
script end 문구 터미널에 출력하면서 종료

#if문
if[조건식]; then
    echo 실행문 //조건 참일때 실행
else
    echo 실행문 //조건 거짓일때
fi //종료

# 1 -gt 2 = 1<2
if[1 -gt 2]; then
    echo "hello world"
else
    echo "hello world2"
fi

nano test3.sh
sudo chmod 777 test3.sh
./test.sh

#if문과 변수활용, 파일(-f)/디렉토리(-d) 존재여부 확인
file_name="second_file.txt" //띄어쓰기 하면 안됨
if[ -f "$file_name" ]; then //현재 나의 디렉토리에 second_file.txt 있는지 확인
    echo "$file_name exists"
else
    echo "$file_name does not exist"
fi

#for문 기본
for a in {1..100}
do
    실행문
done

for a in {1..100}
do
    echo "hello world$a"

#if문 실습
echo로 start 출력
만약에 test_dir이 현재 폴더에 있으면 해당 폴더로 이동
없으면 해당 폴더 생성 후 이동
echo로 end 출력

nano test4.sh
echo "script start""
if[ -d test_dir ];then
    #cd test_dir //스크립트로 실행안됨
else
    mkdir test_dir
    #cd test_dir //스크립트로 실행안됨
fi
echo "script end"
sudo chomod 777 test4.sh
./test4.sh

#if문 실습2
test4.txt없으면 생성
해당 파일에 hello world1~100까지 입력
test_dir안에 test4.txt파일이 있어야 하고, 그 안에 
-------------------------------------------------
nano test4.sh
if[ -f test4.txt ]; then
    echo "test4.txt exists"
else 
    touch test.txt
fi
-------------------------------------------------

./test4.sh
cat test4.txt -> 내용 없는 파일

nano test4.h (밑에 추가)
-------------------------------------------------
for a in{1..100}
do
    echo "hello world$a" >> test4.txt
done
echo "end"
-------------------------------------------------

test4.sh
cd test_dir
cat test4.txt

#for문 활용한 count 세기
#test5.sh
count = 0
for a in {1..100}
do
    ((count++))
done
echo "count is $count"

#특정 디렉토리 안에 file은 몇개인지 directory는 몇개인지 출력하는 프로그램

>> chmod 777 test5.sh
>> ./test5.sh

-------------------------------------------------
#for문 활용한 모든파일 디렉토리 목록 출력하기 (test5.sh에 추가)
for a in * //현재 폴더에 있는 모든거
do
    echo "a is $a"
done

#for문 활용한 directory 개수와 그 외 파일의 수(file의 개수) 세기
test5.sh 수정

for a in {1..100}
do
    ((count++))
done

--------------------수정-----------------------

dir_Count=0
others=0
for a in {1..100}
do
    if [ -d "$a" ];then
        ((dir_count++))
    else
        ((others++))
    fi
done
echo "dir_count is $dir_Count"
echo "others is $others"