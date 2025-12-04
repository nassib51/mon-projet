<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculatrice</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; padding-top: 50px; }
        input[type="text"] { width: 200px; height: 30px; font-size: 16px; text-align: right; }
        button { width: 50px; height: 50px; font-size: 18px; margin: 5px; }
        .calculator { display: inline-block; }
    </style>
</head>
<body>
    <h1>Ma Calculatrice 🖩</h1>
    <div class="calculator">
        <input type="text" id="result" disabled><br>
        <button onclick="clearResult()">C</button>
        <button onclick="appendValue('1')">1</button>
        <button onclick="appendValue('2')">2</button>
        <button onclick="appendValue('+')">+</button><br>
        <button onclick="appendValue('3')">3</button>
        <button onclick="appendValue('4')">4</button>
        <button onclick="appendValue('5')">5</button>
        <button onclick="appendValue('-')">-</button><br>
        <button onclick="appendValue('6')">6</button>
        <button onclick="appendValue('7')">7</button>
        <button onclick="appendValue('8')">8</button>
        <button onclick="appendValue('*')">*</button><br>
        <button onclick="appendValue('9')">9</button>
        <button onclick="appendValue('0')">0</button>
        <button onclick="calculate()">=</button>
        <button onclick="appendValue('/')">/</button>
    </div>

    <script>
        function appendValue(val) {
            document.getElementById('result').value += val;
        }

        function clearResult() {
            document.getElementById('result').value = '';
        }

        function calculate() {
            try {
                document.getElementById('result').value = eval(document.getElementById('result').value);
            } catch(e) {
                document.getElementById('result').value = 'Erreur';
            }
        }
    </script>
</body>
</html>

