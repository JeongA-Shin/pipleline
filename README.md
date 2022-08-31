## CI/CD 파이프라인 구축하기
### 구축할 파이프라인의 흐름도
![캡처](https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FcADIOl%2FbtrdlzYdSuB%2FSKhNae0bFTMYRQUDlM4sVk%2Fimg.png)

* 개발자가 코드를 변경하고 Github에 Push.
* Github Action이 돌아가며 빌드&테스트를 하고(CI), 문제가 없다면 압축파일(.zip)을 만든다.
* 만든 압축파일(.zip)을 AWS S3에 업로드한다.
* 업로드한 압축파일을 넘겨주며 CodeDeploy를 이용해 배포한다. (CD)


### Reference
https://shinsunyoung.tistory.com/120