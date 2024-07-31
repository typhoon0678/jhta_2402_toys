public class Solving_Problems_Taehwan {

    public static void main(String[] args) {

        Data data = new Data();
        Quiz quiz = new Quiz(data);

        try {
            quiz.run();
        } catch (NumberFormatException e) {
            System.out.println("잘못된 입력입니다.");
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("입력 범위를 벗어났습니다.");
        }
    }
}
