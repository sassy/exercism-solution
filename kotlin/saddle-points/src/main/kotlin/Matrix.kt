data class MatrixCoordinate(val row: Int, val col: Int)

class Matrix(val matrix: List<List<Int>>) {
    var saddlePoints: Set<MatrixCoordinate>
    init {
        var maxValue = 0
        var maxIndex = 0
        matrix.forEach {
            var maxColumValue = 0
            var maxColum = 0
            it.forEachIndexed { idx, value ->
                if (value > maxColumValue) {
                    maxColumValue = value
                    maxColum = idx + 1
                }
            }
            if (maxColumValue > maxValue) {
                maxValue = maxColumValue 
                maxIndex = maxColum
            }
            
        }
        var minRow = 0
        if (maxIndex > 0) {
        val maxRows = matrix.map {
            it[maxIndex - 1]
        }
        var minValue = 99999
        maxRows.forEachIndexed { idx, value ->
            if (value < minValue) {
                minValue = value
                minRow = idx + 1
            }
        }
        }
        
        saddlePoints = if (minRow > 0 || maxIndex > 0 ) setOf(MatrixCoordinate(minRow, maxIndex)) else emptySet()
    }
}
