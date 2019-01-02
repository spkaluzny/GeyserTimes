DFILE <- "geysertimes_eruptions_complete_2018-10-25.tsv"
d <- readr::read_tsv(DFILE)
na_count <- sapply(d, function(x) sum(is.na(x)))
