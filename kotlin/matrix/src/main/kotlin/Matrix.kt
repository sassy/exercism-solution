class Matrix(private val matrixAsString: String) {
    private val rows = matrixAsString.split('\n')

    fun column(colNr: Int): List<Int> = rows.map {
        it.trim().split("\\s+".toRegex())[colNr -1].toInt()
    }

    fun row(rowNr: Int): List<Int> = rows[rowNr - 1].trim().split("\\s+".toRegex()).map{it.toInt()}
}
