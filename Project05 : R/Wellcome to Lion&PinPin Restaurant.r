piz <- data.frame(
    num = 1:3,
    menu = c("Hawaiian","Seafood","Extra Cheese"),
    price = c(450,600,500)
)
app <- data.frame(
    num = 1:3,
    menu = c("French Fries" ,"Cheese Sticks", "Nuggets"),
    price = c(100,150,80)
)
bev <- data.frame(
    num = 1:3,
    menu = c("Water", "Coke", "Sprite"),
    price = c(10, 30, 20)
)
####################################################################
chatbot_BB <- function(){
    again = "y"
    print("🎊 Wellcome to Lion&PinPin Restaurant 🎊")
    flush.console()
    readline("What your name 🔱:")
    price_piz = 0
    price_app = 0
    price_bev = 0
    while (again == "y"){
        ord = readline(" What do you want today? Pizza[p] / Appetizer[a] / Beverage[b] :")
        if (ord == "p"){
            print("*********************")
            print(piz)
            print("*********************")
            flush.console()
            piz_ord = readline(" Which pizza do you want? [1/2/3] : ")
            piz_ord = piz[piz$num == piz_ord,]
            price_piz = price_piz + piz_ord$price
        }
        if (ord == "a"){
            print("*********************")
            print(app)
            print("*********************")
            flush.console()
            app_ord = readline(" Which appetizer do you want? [1/2/3] : ")
            app_ord = app[app$num == app_ord,]
            price_app = price_app + app_ord$price
        }
        if (ord == "b"){
            print("*********************")
            print(bev)
            print("*********************")
            flush.console()
            bev_ord = readline(" Which beverage do you want? [1/2/3] : ")
            bev_ord = bev[bev$num == bev_ord,]
            price_bev = price_bev + bev_ord$price
        }
    again = readline("Do you want another orders? (y/n)♻️ : ")
    total_price = sum(c(price_piz,price_app,price_bev))
    }
    print("🍕🍟🧀🥤🍕🍟🧀🥤🍕🍟🧀🥤🍕🍟🧀🥤🍕🍟")
    print(paste(" It's totally costs ", total_price, "Baht"))
    print(" 🦁Thank you for chosing Lion&PinPin Restaurant🦁")
    print("🍕🍟🧀🥤🍕🍟🧀🥤🍕🍟🧀🥤🍕🍟🧀🥤🍕🍟")
}
