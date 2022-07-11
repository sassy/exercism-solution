import java.time.LocalDate
import java.time.LocalTime
import java.time.LocalDateTime


class Gigasecond (base:LocalDateTime) {
    val date: LocalDateTime = base.plusSeconds(1000000000)

    constructor(base: LocalDate) : this(base.atStartOfDay())
}
