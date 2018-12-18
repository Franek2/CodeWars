import java.util.ArrayList;

public class Calculator {
	public static Double evaluate(String expression) {
		ArrayList<Double> numbersContainer = new ArrayList<>();
		ArrayList<Character> expressionContainer = new ArrayList<>();

		for (String numberOrExpression : expression.split(" ")) {
			if (numberOrExpression.equals("*") || numberOrExpression.equals("/") || numberOrExpression.equals("+")|| numberOrExpression.equals("-")) {
				expressionContainer.add(numberOrExpression.charAt(0));
			} else {
				Double number = Double.parseDouble(numberOrExpression);
				numbersContainer.add(number);
			}
		}
		for (int i=0;i<expressionContainer.size();i++) {
			switch (expressionContainer.get(i)) {
			case '*':
				Double multiply = numbersContainer.get(i)*numbersContainer.get(i+1);
				i = refreshArrays(numbersContainer, expressionContainer, i, multiply);
				break;
			case '/':
				Double divide = numbersContainer.get(i)/numbersContainer.get(i+1);
				i = refreshArrays(numbersContainer, expressionContainer, i, divide);
				break;
			}
		}
		for (int i=0;i<expressionContainer.size();i++) {
			switch (expressionContainer.get(i)) {
			case '+':
				Double add = numbersContainer.get(i)+numbersContainer.get(i+1);
				i = refreshArrays(numbersContainer, expressionContainer, i, add);
				break;
			case '-':
				Double subtract = numbersContainer.get(i)-numbersContainer.get(i+1);
				i = refreshArrays(numbersContainer, expressionContainer, i, subtract);
				break;
			}
		}

		return numbersContainer.get(0);
	}

	private static int refreshArrays(ArrayList<Double> numbersContainer, ArrayList<Character> expressionContainer,
			int i, Double multiply) {
		numbersContainer.set(i, multiply);
		numbersContainer.remove(i+1);
		expressionContainer.remove(i);
		i--;
		return i;
	}
}