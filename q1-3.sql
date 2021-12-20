SELECT sum(LO_EXTENDEDPRICE * LO_DISCOUNT) AS revenue FROM lineorder WHERE (toISOWeek(LO_ORDERDATE) = 6) AND (toYear(LO_ORDERDATE) = 1994) AND ((LO_DISCOUNT >= 5) AND (LO_DISCOUNT <= 7)) AND ((LO_QUANTITY >= 26) AND (LO_QUANTITY <= 35))

