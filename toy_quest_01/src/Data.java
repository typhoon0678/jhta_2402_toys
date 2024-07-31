import dto.ProblemDto;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Data {

    public final Map<Integer, ProblemDto> questions;

    public Data() {
        questions = new HashMap<>();

        questions.put(1, new ProblemDto(
                "Python에서 변수를 선언하는 방법은?",
                List.of("var name", "name = value", "set name", "name == value"),
                "name = value",
                10
        ));

        questions.put(2, new ProblemDto(
                "Python에서 리스트(List)의 특징은 무엇인가요?",
                List.of("순서가 있고 변경 가능하다", "중복된 값을 가질 수 없다", "원소를 추가하거나 삭제할 수 없다", "정렬된 상태로 유지된다"),
                "순서가 있고 변경 가능하다",
                15
        ));

        questions.put(3, new ProblemDto(
                "Python에서 조건문을 작성하는 방법은?",
                List.of("if-else", "for-in", "while", "def"),
                "if-else",
                10
        ));

        questions.put(4, new ProblemDto(
                "Python에서 함수를 정의하는 방법은?",
                List.of("class", "def", "import", "return"),
                "def",
                5
        ));
    }
}
