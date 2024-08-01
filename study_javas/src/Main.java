import java.util.ArrayList;
import java.util.HashMap;

public class Main {
    public static void main(String[] args) {

        ArrayList<HashMap<String, String>> questions = new ArrayList<>();
        HashMap<String, String> question = new HashMap<>();

        // 첫 번째 문제
        question.put("question", "1. Python에서 변수를 선언하는 방법은? (점수: 10점)");
        question.put("choices", "1) var name 2) name = value 3) set name 4) name == value");
        question.put("correct", "2");
        question.put("score", "10");
        questions.add(question);

        // 두 번째 문제
        question.put("question", "2. Python에서 리스트(List)의 특징은 무엇인가요? (점수: 15점)");
        question.put("choices", "1) 순서가 있고 변경 가능하다, 2) 중복된 값을 가질 수 없다, 3) 원소를 추가하거나 삭제할 수 없다, 4) 정렬된 상태로 유지된다");
        question.put("correct", "1");
        question.put("score", "15");
        questions.add(question);

        // 세 번째 문제
        question.put("question", "3. Python에서 조건문을 작성하는 방법은? (점수: 10점)");
        question.put("choices", "1) if-else, 2) for-in, 3) while, 4) def");
        question.put("correct", "1");
        question.put("score", "10");
        questions.add(question);

        // 네 번째 문제
        question.put("question", "4. Python에서 함수를 정의하는 방법은? (점수: 5점)");
        question.put("choices", "1) class, 2) def, 3) import, 4) return");
        question.put("correct", "2");
        question.put("score", "5");
        questions.add(question);

        // 사용자의 응답
        ArrayList<String> userResponses = new ArrayList<>();
        userResponses.add("4");
        userResponses.add("2");
        userResponses.add("3");
        userResponses.add("2");

        int totalScore = 0;
        int userScore = 0;
        int i = 0;
        for (HashMap<String, String> questionMap : questions) {
            int score = Integer.parseInt(questionMap.get("score"));
            totalScore += score;
            if (userResponses.get(i).equals(questionMap.get("correct"))) {
                userScore += score;
            }
            i++;
        }

        // 결과 출력
        System.out.println("—----- 결과 —-------------");
        System.out.println("응답한 내용 : 1번 " + userResponses.get(0) + ", 2번 " + userResponses.get(1) + ", 3번 " + userResponses.get(2) + ", 4번 " + userResponses.get(3));
        System.out.println("당신 응답 합계 : " + userScore + "점");

        // 학점 계산
        char grade;
        if (userScore >= 90) {
            grade = 'A';
        } else if (userScore >= 80) {
            grade = 'B';
        } else if (userScore >= 70) {
            grade = 'C';
        } else if (userScore >= 60) {
            grade = 'D';
        } else {
            grade = 'F';
        }
        System.out.println("학점은 " + grade + " 입니다.");


    }
}