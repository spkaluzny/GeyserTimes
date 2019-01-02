col_files <- list.files(pattern="col_.*\\.txt")
nobs <- NULL
for(f in col_files) {
	cat("+++", f, "\n")
	x <- scan(f, wh="", sep="\n", blank.lines.skip=FALSE)
	x <- x[-1]
	nobs <- c(nobs, length(x))
	assign(tools::file_path_sans_ext(f), x)
}
Names <- scan("../geysertimes_eruptions_complete_2018-10-25.tsv",
  sep="\t", wh="\n", n=22)
fn <- data.frame(Files=col_files, Names=Names, Nobs=nobs,
    stringsAsFactors=FALSE)
