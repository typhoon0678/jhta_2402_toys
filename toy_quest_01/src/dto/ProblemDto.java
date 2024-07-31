package dto;

import java.util.List;

public class ProblemDto {

    private final String problem;
    private final List<String> options;
    private final String answer;
    private final int score;

    public ProblemDto(String problem, List<String> options, String answer, int score) {
        this.problem = problem;
        this.options = options;
        this.answer = answer;
        this.score = score;
    }

    public String getProblem() {
        return problem;
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
