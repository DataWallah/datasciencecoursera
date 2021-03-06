---
title       : Developing Data Products Project
subtitle    : Coursera -- June 2014
author      : 
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Project Requirements

1. Five Slides to pitch what was done
2. Presentation pushed to github
3. Link to the github presentation pasted into the text box

---

## Shiny App Functionality

The functionality of the Shiny App I wrote was to present a variable number of random numbers generated in R, based on input from the user using a slider.

The Shiny App meets the project requirements:

1. There is a way for the user to provide input (slider)
2. The input is taken from ui.R and passed to server.R, and the required number of random numbers is calculated
3. The random numbers are displayed to the user (reactive output)
4. There is help text for the novice user
5. The help text is embedded in the Shiny App (there is no external link)

---

## Embedded R Code

The Shiny App published random numbers to the screen. I used the 'runif' function in the App, and to demonstrate embedded code, I will use the function again.

What follows is some embedded R code, that generates 3 random numbers:

```r
runif(3)
```

```
## [1] 0.81145 0.04129 0.59171
```

---

## Presentation Requirements

Presentation requirements met:

1. Done in Slidify
2. 5 pages (including Title page)
3. Posted on github
4. Contains embedded R code that was run when slidifying the presentation

