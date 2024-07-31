import dto.ProblemDto;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

public class Quiz {

    private final Data data;

    Scanner scanner = new Scanner(System.in);
    Map<Integer, Integer> solveAnswers = new HashMap<>();
    int score = 0;

    public Quiz(Data data) {
        this.data = data;
    }

    public void run() {
        data.questions.forEach((id, problemDto) -> {
            solveQuestion(id, problemDto);
        });

        printResult(getGrade());
    }

    private void solveQuestion(int id, ProblemDto problemDto) {
        List<String> options = problemDto.getOptions();

        System.out.printf("%d. %s (점수 : %d점)\n", id, problemDto.getProblem(), problemDto.getScore());

        for (int i = 0; i < options.size(); i++) {
            System.out.printf("%d) %s ", i+1, options.get(i));
        }
        System.out.print("\n-정답 : ");

        int answer = Integer.parseInt(scanner.nextLine());
        solveAnswers.put(id, answer - 1);
    }

    private void printResult(String grade) {
        System.out.println("---------- 결과 ----------");
        System.out.print("응답한 내용 : ");

        solveAnswers.forEach((id, answer) -> {
            System.out.printf("%d번 %d ", id, answer);
        });

        System.out.printf("\n당신 응답 합계 : %d점\n", score);
        System.out.printf("학점은 %s 입니다.", grade);
    }

    private String getGrade() {

        solveAnswers.forEach((id, answerNum) -> {
            String answer = data.questions.get(id).getAnswer();
            String writeAnswer = data.questions.get(id).getOptions().get(answerNum);
            int questionScore = data.questions.get(id).getScore();

            if (writeAnswer.equals(answer)) {
                score += questionScore;
            }
        });

        if (score > 30) {
            return "A";
        } else if (score > 20) {
            return "B";
        } else if (score > 10) {
            return "C";
        } else {
            return "F";
        }
    }
}
