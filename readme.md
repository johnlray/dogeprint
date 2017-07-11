## dogeprint

Welcome to dogeprint! This is a very important library that takes a character string and returns a random Google Image result corresponding to that string. It was designed with dogs in mind.

### Installation
```{r}
library(devtools)
install_github("johnlray/dogeprint")
```

### Usage
The only function in this library is `doge_print()`. The function only takes one argument, `doge_type`, as a character string.

```{r}
doge_print(doge_type = "australian sheepdog")
doge_print(doge_type = "miniature pug")
doge_print(doge_type = "Lassie")
```