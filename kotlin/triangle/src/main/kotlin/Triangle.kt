class Triangle<out T : Number>(val a: T, val b: T, val c: T) {
    init {
        if (a.toInt() + c.toInt() < b.toInt()) {
            throw IllegalArgumentException()    
        }
        if (a.toInt() + b.toInt() < c.toInt()) {
            throw IllegalArgumentException()    
        }
        if (b.toInt() + c.toInt() < a.toInt()) {
            throw IllegalArgumentException()    
        }
        if ((a == 0) and (b == 0) and (c ==0)) {
            throw IllegalArgumentException()       
        }
    }
    val isEquilateral: Boolean = (a == b) and (b == c)
    val isIsosceles: Boolean = (a == b) or (b == c) or (c == a)
    val isScalene: Boolean = !isEquilateral and !isIsosceles 
}
