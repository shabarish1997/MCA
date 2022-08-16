min <- c(0, 5, 10, 15, 20)
max <- c(5, 10, 15, 20, 25)
f <- c(7, 18, 25, 30, 20)

df <- data.frame(min = min, max = max, f = f)

funquantile <- function(j, n, df) {
    cf <- cumsum(df$f)
    n2 <- j * max(cf) / n
    i <- 1
    while (i <= length(cf)) {
        if (n2 <= cf[i]) {
            up <- i

            break
        }
        i <- i + 1
    }
    print(df$min[up] + (df$max[1] - df$min[1]) / df$f[up] * (j * max(cf) / n - cf[up - 1]))
}
funquantile(1, 4, df)
funquantile(3, 4, df)
funquantile(3, 10, df)
funquantile(20, 100, df)
