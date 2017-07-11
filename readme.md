## dogeprint

Welcome to dogeprint!

### Installation
```{r}
library(devtools)
install_github("johnlray/doge_print")
```

### Usage
The only function in this library is `doge_print()`. The function only takes one argument, `doge_type`, as a character string.

```{r}
doge_print(doge_type = "australian sheepdog")
doge_print(doge_type = "miniature pug")
```