object HandshakeCalculator {
    fun calculateHandshake(number: Int): List<Signal> {
        val ret: MutableList<Signal> = mutableListOf()
        if (number and 0b1  == 0b1) {
            ret.add(Signal.WINK)
        }
        if (number and 0b10  == 0b10) {
            ret.add(Signal.DOUBLE_BLINK)
        }
        if (number and 0b100  == 0b100) {
            ret.add(Signal.CLOSE_YOUR_EYES)
        }
        if (number and 0b1000  == 0b1000) {
            ret.add(Signal.JUMP)
        }
        return if (number and 0b10000  == 0b10000) { ret.toList().reversed() } else { ret.toList() }
    }
}
