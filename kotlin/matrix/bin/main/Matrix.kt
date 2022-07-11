class Matrix(private val matrixAsString: String) {
    private val rows = matrixAsString.split('\n')

    fun column(colNr: Int): List<Int> {
        val columns: MutableList<Int> = mutableListOf()
        for (row in rows) {
            columns.add(row.trim().split("\\s+".toRegex())[colNr -1].toInt())
        }
        return columns.toList()
    }

    fun row(rowNr: Int): List<Int> {
        return rows[rowNr - 1].trim().split("\\s+".toRegex()).map{it.toInt()}
    }
}
