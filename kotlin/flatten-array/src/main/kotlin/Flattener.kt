object Flattener {
    fun flattenList(source: Collection<Any>, result: MutableList<Any>) {
        source.forEach{
            e -> when(e) {
                !is Collection<*> -> result.add(e)
                else -> flattenList(e.filterNotNull(), result)
            }
        }
    }

    fun flatten(source: Collection<Any?>): List<Any> {
        val ret = mutableListOf<Any>()
        flattenList(source.filterNotNull(), ret)
        return ret.toList()
    }
}
