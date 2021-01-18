library(readxl)> senate_fundraising <- read_excel("Downloads/senate_fundraising.xlsx")> View(senate_fundraising)   
> library(ggplot2)
> ggplot(senate_win, aes(Amount, Percentage, colors = Candidate)) + geom_point()
> View(senate_win)> mean(Amount)> avg_win <- sqldf("SELECT Avg(Amount) FROM senate_win")> View(avg_win)> senate_loss <- sqldf("SELECT Candidate,Amount,Percentage FROM senate_fundraising WHERE Won = 'N'")> View(senate_loss)> avg_loss <- sqldf("SELECT Avg(Amount) FROM senate_loss")
>> avg_loss <- sqldf("SELECT Avg(Amount) AS avergae_spent FROM senate_loss")> View(avg_loss)> avg_loss <- sqldf("SELECT Avg(Amount) AS average_spent FROM senate_loss")> avg_win <- sqldf("SELECT Avg(Amount) AS average_spent FROM senate_win")> View(avg_win)> compare_spending <- sqldf("SELECT average_spent FROM avg_loss JOIN avg_win")Error: ambiguous column name: average_spent> compare_spending <- sqldf("SELECT * FROM avg_loss,avg_win)+ compare_spending <- sqldf("SELECT * FROM avg_loss,avg_win)Error: unexpected symbol in:"compare_spending <- sqldf("SELECT * FROM avg_loss,avg_win)compare_spending <- sqldf("SELECT"> compare_spending <- sqldf("SELECT * FROM avg_loss,avg_win")> View(compare_spending)

gplot(senate_loss, aes(Amount, Percentage, colors = Candidate)) + geom_point()> ggplot(senate_win, aes(Amount, Percentage, colors = Candidate)) + geom_point()> swing_state_result <- sqldf("SELECT Candidate,Amount,Percentage FROM senate_fundraising WHERE 'Swing State' = 'Y'")
> View(swing_state_result)
> library(readxl)> View(senate_fundraising)  
                                                    > swing_state_result <- sqldf("SELECT Candidate,Amount,Percentage FROM senate_fundraising WHERE Swing_State = 'Y'")> ggplot(swing_state_result, aes(Amount, Percentage, colors = Candidate)) + geom_point()

> non_ss_result <- sqldf("SELECT Candidate,Amount,Percentage FROM senate_fundraising WHERE Swing_State = 'N'")

> ggplot(non_ss_result, aes(Amount, Percentage, colors = Candidate)) + geom_point()


> ggplot(swing_state_result, aes(Amount, Percentage, colors = Candidate)) + geom_point()
