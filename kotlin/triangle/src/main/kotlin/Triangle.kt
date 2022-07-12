class Triangle<out T : Number>(val a: T, val b: T, val c: T) {
    init {
        if (a.toDouble() + c.toDouble() < b.toDouble()) {
            throw IllegalArgumentException()    
        }
        if (a.toDouble() + b.toDouble() < c.toDouble()) {
            throw IllegalArgumentException()    
        }
        if (b.toDouble() + c.toDouble() < a.toDouble()) {
            throw IllegalArgumentException()    
        }
        require(!((a == 0) and (b == 0) and (c ==0)))
    }
    val isEquilateral: Boolean = (a == b) and (b == c)
    val isIsosceles: Boolean = (a == b) or (b == c) or (c == a)
    val isScalene: Boolean = !isEquilateral and !isIsosceles 
}
