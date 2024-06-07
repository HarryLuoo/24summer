# Harry Luo
# Lab 2: Calculate amount of ingredients needed for specified number of servings of Spaghetti Sauce

# code status: Complete

def calcIngredients(numServings):
    numTomatoSauce = 0.5 * numServings
    numTomatoPaste = 0.083 * numServings
    numGarlic = 0.5 * numServings
    numOregano = 0.25 * numServings
    return numTomatoSauce, numTomatoPaste, numGarlic, numOregano

numServings = int(input("Enter the number of servings of spaghetti sauce you want to make: "))

numTomatoSauce, numTomatoPaste, numGarlic, numOregano = calcIngredients(numServings)

print("To make", numServings, "servings of spaghetti sauce, you will need:")
print(format(numTomatoSauce, '.2f') + " cups of tomato sauce")
print(format(numTomatoPaste, '.2f') + " cups of tomato paste")
print(format(numGarlic, '.2f')+ " cloves of garlic")
print(format(numOregano, '.2f')+ " teaspoons of oregano")