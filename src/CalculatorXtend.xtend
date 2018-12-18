import java.util.ArrayList;

class CalculatorXtend {
	def static evaluate(String expression) {
		var numbersContainer = new ArrayList
		var expressionContainer = new ArrayList
		val char plus = '+'
		val char substr = '-'
		val char multi = '*'
		val char div = '/'

		for (numberOrExpression : expression.split(" ")) {
			if (numberOrExpression.equals("*") || numberOrExpression.equals("/") || numberOrExpression.equals("+") ||
				numberOrExpression.equals("-")) {
				expressionContainer.add(numberOrExpression.charAt(0))
			} else {
				var number = Double.parseDouble(numberOrExpression)
				numbersContainer.add(number)
			}
		}

		for (var i = 0; i < expressionContainer.size; i++) {
			switch expressionContainer.get(i) {
				case multi: {
					var multiply = numbersContainer.get(i) * numbersContainer.get(i + 1)
					i = refreshArrays(numbersContainer, expressionContainer, i, multiply)
				}
				case div: {
					var divide = numbersContainer.get(i) / numbersContainer.get(i + 1);
					i = refreshArrays(numbersContainer, expressionContainer, i, divide)
				}
			}
		}
		for (var i = 0; i < expressionContainer.size; i++) {
			switch (expressionContainer.get(i)) {
				case plus: {
					var add = numbersContainer.get(i) + numbersContainer.get(i + 1);
					i = refreshArrays(numbersContainer, expressionContainer, i, add)
				}
				case substr: {
					var subtract = numbersContainer.get(i) - numbersContainer.get(i + 1);
					i = refreshArrays(numbersContainer, expressionContainer, i, subtract)
				}
			}
		}

		return numbersContainer.get(0);
	}

	def static refreshArrays(ArrayList<Double> numbersContainer, ArrayList<Character> expressionContainer, int i,
		Double expr) {
		numbersContainer.set(i, expr)
		numbersContainer.remove(i + 1)
		expressionContainer.remove(i)
		return i - 1
	}
}
