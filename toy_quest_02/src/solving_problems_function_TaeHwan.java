import java.util.ArrayList;
import java.util.HashMap;
import java.util.Scanner;

public class solving_problems_function_TaeHwan {

    public static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {

        // 변수 선언
        ArrayList<HashMap<String, String>> questions;
        ArrayList<String> userResponses;

        int userScore = 0;

        // 메서드
        questions = addQuestion();

        userResponses = addUserResponse(questions);

        userScore = summaryScore(questions, userResponses);

        printResult(userResponses, userScore);
    }

    public static ArrayList<HashMap<String, String>> addQuestion() {
        ArrayList<HashMap<String, String>> questions = new ArrayList<>();

        // 첫 번째 문제
        questions.add(createQuestion(
                "1. Python에서 변수를 선언하는 방법은? (점수: 10점)",
                "1) var name 2) name = value 3) set name 4) name == value",
                "2",
                "10"
        ));

        // 두 번째 문제
        questions.add(createQuestion(
                "2. Python에서 리스트(List)의 특징은 무엇인가요? (점수: 15점)",
                "1) 순서가 있고 변경 가능하다, 2) 중복된 값을 가질 수 없다, 3) 원소를 추가하거나 삭제할 수 없다, 4) 정렬된 상태로 유지된다",
                "1",
                "15"
        ));

        // 세 번째 문제
        questions.add(createQuestion(
                "3. Python에서 조건문을 작성하는 방법은? (점수: 10점)",
                "1) if-else, 2) for-in, 3) while, 4) def",
                "1",
                "10"
        ));


        // 네 번째 문제
        questions.add(createQuestion(
                "4. Python에서 함수를 정의하는 방법은? (점수: 5점)",
                "1) class, 2) def, 3) import, 4) return",
                "2",
                "5"
        ));

        return questions;
    }

    public static HashMap<String, String> createQuestion(
            String question, String choices, String correct, String score) {
        HashMap<String, String> questionMap = new HashMap<>();
        questionMap.put("question", question);
        questionMap.put("choices", choices);
        questionMap.put("correct", correct);
        questionMap.put("score", score);

        return questionMap;
    }

    public static ArrayList<String> addUserResponse(ArrayList<HashMap<String, String>> questions) {

        ArrayList<String> userResponses = new ArrayList<>();

        for (HashMap<String, String> question : questions) {
            System.out.println(question.get("question"));
            System.out.printf("%s >> ", question.get("choices"));
            userResponses.add(scanner.nextLine());
            System.out.println();
        }

        return userResponses;
    }

    public static int summaryScore(ArrayList<HashMap<String, String>> questions, ArrayList<String> userResponses) {
        int userScore = 0;

        int questionIndex = 0;
        for (HashMap<String, String> questionMap : questions) {
            int score = Integer.parseInt(questionMap.get("score"));
            if (userResponses.get(questionIndex).equals(questionMap.get("correct"))) {
                userScore += score;
            }
            questionIndex++;
        }

        return userScore;
    }

    public static void printResult(ArrayList<String> userResponses, int userScore) {
        char grade = calculateGrade(userScore);

        System.out.println("—----- 결과 —-------------");
        System.out.println("응답한 내용 : 1번 " + userResponses.get(0) + ", 2번 " + userResponses.get(1) + ", 3번 " + userResponses.get(2) + ", 4번 " + userResponses.get(3));
        System.out.println("당신 응답 합계 : " + userScore + "점");

        System.out.println("학점은 " + grade + " 입니다.");
    }

    public static char calculateGrade(int userScore) {

        if (userScore >= 30) {
            return 'A';
        } else if (userScore >= 20) {
            return 'B';
        } else if (userScore >= 10) {
            return 'C';
        } else if (userScore >= 5) {
            return 'D';
        } else {
            return 'F';
        }


    }
}