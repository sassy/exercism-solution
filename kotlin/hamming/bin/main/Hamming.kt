object Hamming {

    fun compute(leftStrand: String, rightStrand: String): Int {
        if (leftStrand.length != rightStrand.length) 
            throw IllegalArgumentException("left and right strands must be of equal length")
    
        var length = 0;
        for ((index, char)  in leftStrand.withIndex()) {
            if (char != rightStrand[index]) length++
        }
        return length
    }
}
