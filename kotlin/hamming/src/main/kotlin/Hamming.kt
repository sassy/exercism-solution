object Hamming {

    fun compute(leftStrand: String, rightStrand: String): Int {
        require (leftStrand.length == rightStrand.length) {"left and right strands must be of equal length" }
    
        var length = 0;
        for ((index, char)  in leftStrand.withIndex()) {
            if (char != rightStrand[index]) length++
        }
        return length
    }
}
