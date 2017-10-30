# STAT-404-project

proposal requirements
Your team submits a one-page proposal with objectives, experimental factors and their levels, the response variable (including how it will be measured if not obvious), and an outline of the tentative experimental plan and analysis.
By that date we will have just started the part of the course on planning experiments, including fractional-factorial plans to cut down the number of observations required. The latter methodology could be of interest to you, as it could save time. Hence, the experimental plan is “tentative”; it will be okay to change the plan shortly after as you learn more. All you really need for the proposal is a good idea of the factors you will be investigating, how you will make measurements, and your objectives.
Your team is encouraged to discuss ideas with me or a TA before submitting the proposal.

objectives: factors that influence the cell phone battery usage

levels: 3*2*2*2*2 factorial

block: iPhone SE and iPhone 7
brightness: max brightness and min brightness
Bluetooth: open and close
Wi-Fi: open and close
apps running: 2, 3, 4 
(WeChat, Facebook, iTunes, weather)

response variable: the time when the battery decreases from 100% to 90%

experimental plan: 
The experiment design is a 3*2*2*2*2 factorial design, the treatments variables to examine are brightness, Bluetooth, Wi-Fi and the number of apps running, with a block factor, which is the type the iPhone. All of factors are regarded as treatment variables, which are random and independent. Both phones used in the experiment were bought in June 2017. When conducting the experiment, we will fully charge the phones first and closed all apps before starting the experiments. The experiment will be held at the same time and location to avoid other variables.  There are 24 different treatment combinations, with 2 blocks. The 48 treatment combinations will be put in random order; the treatment combination first in the random order is iPhone SE with open Wi-Fi and Bluetooth, 2 running apps and full brightness, etc. We assume that the battery usage of different apps is negligible since we aim to choose similar battery usage applications (the battery usage information will be found from the iPhone setting based on past 4 days). 



experimental analysis:
We need to check if the data needs transformation by checking the box cox plot first. And then we also need to make sure the variance is constant and the error terms are independent and normally distributed. After organizing the data, we will start to the ANOVA analysis. Since there's no replications, so there should no highest-order interaction terms. We plan to include four main effects, 6 2-factor interaction terms, four 3-factor interaction terms. From the ANOVA analysis, we should conclude which main effects, block or interactions effects are significant. The result will help us to address our question about which factors will have significant influence on battery usage for IPHONES. 



