package dto;

import java.util.List;

public class QuestionDto {

    private final String question;
    private final List<String> options;
    private final String answer;
    private final int score;

    public QuestionDto(String question, List<String> options, String answer, int score) {
        this.question = question;
        this.options = options;
        this.answer = answer;
        this.score = score;
    }

    public String getQuestion() {
        return question;
    }

    public List<String> getOptions() {
        return options;
    }

    public String getAnswer() {
        return answer;
    }

    public int getScore() {
        return score;
    }
}
