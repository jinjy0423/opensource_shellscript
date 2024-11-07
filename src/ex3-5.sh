#!/bin/sh

run_ls() {
	echo "함수 안으로 들어 왔음"
	if [ "$1" = "-l" ]; then
		ls -l
	else
		ls
	fi
}

echo "프로그램을 시작합니다."
run_ls "$1"
echo "프로그램을 종료합니다."
