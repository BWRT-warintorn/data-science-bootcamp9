game <- function(){
    print("🎊 Welcome to My Game 🎊")
    print("h = Hammer 👊")
    print("s = Scissor ✋")
    print("p = Paper ✌")
    play_agin = "y"
    point_user= 0
    point_bot= 0
    flush.console()
    while (play_agin == "y"){
        user = readline("Your turn 👊/✋/✌: ")
        hands = c("h","s","p")
        bot = sample(hands,1)
        print(paste("My turn :",bot))
        if((user == "s" & bot == "s") | (user == "p" & bot == "p") | (user == "h" & bot == "h")){
            point_user = point_user+0
        } else if ((user == "h" & bot == "s") | (user == "s" & bot == "p") | (user == "p" & bot == "h")){
            point_user = point_user+1
        } else if ((user == "h" & bot == "p") | (user == "s" & bot == "h") | (user == "p" & bot == "s")){
            point_bot = point_bot+1
        } else (break)
        flush.console()
        play_agin = readline("Do you play agian? (y/n)♻️:")

    }
    print(paste(" Your point :",point_user," My point :",point_bot))
    if (point_user > point_bot){
        print(" You win, It's so rock ")
    } else if (point_user < point_bot){
        print(" I'll give you another chance ")
    } else print(" Draw, It's amasing ")
}

game()
