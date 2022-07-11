

class Squares(val number: Int) {

    fun sumOfSquares(): Int = (1..number).toList().map{ Math.pow(it.toDouble(), 2.0).toInt()}.sum()

    fun squareOfSum(): Int = Math.pow((1..number).toList().sum().toDouble(), 2.0).toInt()

    fun difference(): Int = squareOfSum() - sumOfSquares()
}
