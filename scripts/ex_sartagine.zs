import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockState;
import mods.jei.JEI;
import mods.exsartagine.ExSartagine;
import mods.advancedmortars.Mortar;
import mods.pyrotech.DryingRack;

import mods.artisanworktables.builder.RecipeBuilder;

JEI.removeAndHide(<exsartagine:flour>);
JEI.removeAndHide(<exsartagine:breadfine>);
JEI.removeAndHide(<exsartagine:doughbread>);
JEI.removeAndHide(<exsartagine:flour>);
JEI.removeAndHide(<exsartagine:doughpizza>);
JEI.removeAndHide(<exsartagine:dough>);
JEI.removeAndHide(<exsartagine:salt>);
JEI.removeAndHide(<exsartagine:potato.boiled>);
JEI.removeAndHide(<exsartagine:beans.boiled>);
JEI.removeAndHide(<exsartagine:smelter>);
JEI.removeAndHide(<exsartagine:breadveggieraw>);
JEI.removeAndHide(<exsartagine:breadveggie>);
JEI.removeAndHide(<exsartagine:breadmeatraw>);
JEI.removeAndHide(<exsartagine:breadmeat>);
JEI.hideCategory("artisanworktables_chef_worktable");
JEI.hideCategory("artisanworktables_chef_workshop");
JEI.hideCategory("artisanworkstumps_chef");

ExSartagine.addHeatSource(<blockstate:betterwithmods:stoked_flame>);
ExSartagine.addPlaceable(<blockstate:betterwithmods:stoked_flame>);
ExSartagine.addHeatSource(<blockstate:futuremc:blast_furnace:facing=east,lit=true>);
ExSartagine.addHeatSource(<blockstate:futuremc:blast_furnace:facing=west,lit=true>);
ExSartagine.addHeatSource(<blockstate:futuremc:blast_furnace:facing=north,lit=true>);
ExSartagine.addHeatSource(<blockstate:futuremc:blast_furnace:facing=south,lit=true>);
ExSartagine.addPlaceable(<blockstate:futuremc:blast_furnace:facing=east,lit=true>);
ExSartagine.addPlaceable(<blockstate:futuremc:blast_furnace:facing=west,lit=true>);
ExSartagine.addPlaceable(<blockstate:futuremc:blast_furnace:facing=north,lit=true>);
ExSartagine.addPlaceable(<blockstate:futuremc:blast_furnace:facing=south,lit=true>);



/*
Here goes every reworked recipe for every single food item, RIP Foreck. 

=============================NOTES=============================
-Furnace recipes are switched over to the smoker and kettle; kettle recipes take 80 ticks to complete compared to the smoker's 100 due to its superiority.
-Complex baking recipes are always with a kettle, if chopping of harder ingredients is needed, the catalyst should be "cutKettle"; if mixing is required, the catalyst should be "mixingKettle."
-Complex non baking recipes are always at the chef workstation, if chopping of harder ingredients is needed, the catalyst should be "cut"; if mixing is required, the catalyst should be "mixing". Recipes that are not as complex may be crafted normally, but if cutting is involved, they should use "cutBad" in the recipe.
-"Grilled" items are cooked in the pan, if they are more complex, then they are cooked in the kettle.
-"Stock" is the main use of the basic pot, but it can also be used for recipes that are water + a catalyst, e.g. tea or coffee.
=============================SYMBOLS=============================
	-&C = Recipe also available in the normal crafting table/grid and or not removed
	-&R = Item should use a container (bottle, bowl, etc) AND return one when eaten, consumed or used in a recipe 
	
*/

var mixing = <artisanworktables:artisans_mortar_gold>;
var cutBad = <animania:carving_knife>.anyDamage().transformDamage(3);
var cut = <animania:carving_knife>;
var cutKettle = <animania:carving_knife>.anyDamage().transformDamage();

var redRose = <minecraft:dye:1>;

var waterBottle = <liquid:water>*333;
var waterBottle2 = <liquid:water>*666;
var waterBucket = <liquid:water>*1000;
var milkBottle = <animania:milk_bottle>.giveBack(<minecraft:glass_bottle>);
var coconutMilk = <harvestcraft:coconutmilkitem>;
var stock = <harvestcraft:stockitem>;
var dough = <ore:foodDough>;
var salt = <ore:dustSalt>;
var flour = <ore:foodFlour>;
var sugar = <ore:listAllsugar>;
var mayo = <ore:foodMayo>;
var snowball = <minecraft:snowball>;
var rawChicken = <ore:listAllchickenraw>;
var cookedChicken = <ore:listAllchickencooked>;
var rawPork = <animania:raw_prime_pork>|<minecraft:porkchop>;
var cookedPork = <animania:cooked_prime_pork>|<minecraft:cooked_porkchop>|<harvestcraft:bbqjackfruititem>;
var rawBacon = <animania:raw_prime_bacon>|<harvestcraft:rawtofaconitem>;
var cookedBacon = <animania:cooked_prime_bacon>|<harvestcraft:cookedtofaconitem>;
var rawBeef = <ore:listAllbeefraw>;
var cookedBeef = <ore:listAllbeefcooked>;
var rawFish = <ore:listAllfishraw>;
var cookedFish = <ore:listAllfishcooked>;
var rawMutton = <ore:listAllmuttonraw>;
var rawVenison = <ore:foodVenisonraw>;
var veggie = <ore:listAllveggie>;
var carrot = <minecraft:carrot>;
var batter = <harvestcraft:batteritem>;
var heavyCream = <ore:listAllheavycream>;
var egg = <ore:listAllegg>;
var cherry = <harvestcraft:cherryitem>;
var cocoaPowder = <ore:foodCocoapowder>;
var sprinkles = <contenttweaker:sprinkles>;
var spice = <ore:listAllspice>;
var chocolateBar = <ore:foodChocolatebar>;
var toastedCoconut = <ore:foodToastedcoconut>;
var lemon = <ore:cropLemon>;
var strawberry = <ore:cropStrawberry>;
var walnut = <ore:cropWalnut>;
var pineapple = <ore:cropPineapple>;
var meringue = <ore:foodMeringue>;
var pumpkin = <ore:cropPumpkin>;
var calamari = <ore:foodCalamariraw>;
var cookedCalamari = <harvestcraft:calamaricookeditem>;
var bakedsweetpotato = <harvestcraft:bakedsweetpotatoitem>;
var grilledEggplant = <harvestcraft:grilledeggplantitem>;
var toast = <harvestcraft:toastitem>;
var iceCream = <ore:listAllicecream>;
var griledCheese = <harvestcraft:grilledcheeseitem>;
var appleSauce = <harvestcraft:applesauceitem>; 
var bread = <minecraft:bread>;
var butter = <harvestcraft:butteritem>;
var cheese = <ore:foodCheese>;
var apple = <ore:cropApple>;
var teaLeaf = <ore:cropTea>;
var coffeeBean = <harvestcraft:coffeebeanitem>;
var corn = <ore:cropCorn>;
var grape = <ore:cropGrape>;
var rice = <ore:cropRice>;
var coconut = <ore:cropCoconut>;
var pumpkinSeeds = <minecraft:pumpkin_seeds>;
var vanillaBean = <ore:cropVanillabean>;
var sesame = <ore:cropSesame>;
var melon = <minecraft:melon>;
var blueberry = <ore:cropBlueberry>;
var papaya = <ore:cropPapaya>;
var starfruit = <ore:cropStarfruit>;
var orange = <ore:cropOrange>;
var peach = <ore:cropPeach>;
var lime = <ore:cropLime>;
var mango = <ore:cropMango>;
var pomegranate = <ore:cropPomegranate>;
var blackberry = <ore:cropBlackberry>;
var raspberry = <ore:cropRaspberry>;
var kiwi = <ore:cropKiwi>;
var cranberry = <ore:cropCranberry>;
var cactusFruit = <ore:cropCactusfruit>;
var plum = <ore:cropPlum>;
var pear = <ore:cropPear>;
var apricot = <ore:cropApricot>;
var fig = <ore:cropFig>;
var grapeFruit = <ore:cropGrapefruit>;
var persimmon = <ore:cropPersimmon>;
var potato = <ore:cropPotato>;
var cookedPotato = <ore:cookedPotato>;
var mushroom = <ore:listAllmushroom>;
var pasta = <harvestcraft:pastaitem>;
var wiener = <contenttweaker:wiener>;
var patty = <contenttweaker:patty>;
var anyMeat = <ore:foodMeats>;
var anyRawMeat = <ore:listAllmeatraw>;
var hydraMeat = <twilightforest:hydra_chop>;
var cocoa = <minecraft:dye:3>;
var tomato = <ore:cropTomato>;
var lettuce = <harvestcraft:lettuceitem>;
var onion = <harvestcraft:onionitem>;
var cornmeal = <harvestcraft:cornmealitem>;
var tortilla = <harvestcraft:tortillaitem>;
var cookingOil = <harvestcraft:oliveoilitem>;
var peanut = <harvestcraft:peanutitem>;
var seed = <ore:listAllseed>;
var nut = <ore:listAllnut>;
var nutButter = <ore:listAllnutbutter>;
var vinegar = <harvestcraft:vinegaritem>;
var cucumber = <ore:cropCucumber>;
var springSalad = <harvestcraft:springsaladitem>;
var chili = <rustic:chili_pepper>;
var bellpepper = <harvestcraft:bellpepperitem>;
var stewCondiment = <ore:listAllStewcondiment>;
var beans = <harvestcraft:beanitem>;
var hotSauce = <harvestcraft:hotsauceitem>;

//Stock Recipes
recipes.remove(<harvestcraft:stockitem>);
ExSartagine.addPotRecipe(<minecraft:bone>|<undergroundbiomes:fossil_piece:3>|<undergroundbiomes:fossil_piece:5>|<undergroundbiomes:fossil_piece:7>, stock);
ExSartagine.addPotRecipe(veggie, stock*2);
ExSartagine.addPotRecipe(<ore:listAllmeatraw>|<betterwithaddons:congealed>, stock*3);


//Carrot Cake
recipes.removeByRecipeName("harvestcraft:carrotcakeitem");
ExSartagine.addKettleRecipe([dough,carrot,sugar],null,waterBottle,[<harvestcraft:carrotcakeitem>],200);
//Cheese Cake
recipes.removeByRecipeName("harvestcraft:cheesecakeitem");
ExSartagine.addKettleRecipe([batter,heavyCream,sugar],null,waterBottle,[<harvestcraft:cheesecakeitem>],200);
//Cherry Cheesecake
recipes.removeByRecipeName("harvestcraft:cherrycheesecakeitem");
ExSartagine.addKettleRecipe([batter,heavyCream,sugar,cherry],null,waterBottle,[<harvestcraft:cherrycheesecakeitem>],200);
//Sprinkles / Chocolate Sprinkles Cake
recipes.addShapeless("sprinkles", sprinkles*4,
    [sugar,redRose,<minecraft:dye:2>,<minecraft:dye:11>]);	
RecipeBuilder.get("chef")
  .setShapeless([sugar,redRose,<minecraft:dye:2>,<minecraft:dye:11>])
  .addOutput(sprinkles*6)
  .create();
recipes.removeByRecipeName("harvestcraft:chocolatesprinklecakeitem");
ExSartagine.addKettleRecipe([dough,cocoaPowder,sugar,sprinkles],null,waterBottle,[<harvestcraft:chocolatesprinklecakeitem>],200);
//Holiday Cake
recipes.removeByRecipeName("harvestcraft:holidaycakeitem");
ExSartagine.addKettleRecipe([egg,sugar,cherry,heavyCream,spice],null,waterBottle,[<harvestcraft:holidaycakeitem>],200);
//Lamington Cake
recipes.removeByRecipeName("harvestcraft:lamingtonitem");
ExSartagine.addKettleRecipe([dough, chocolateBar, toastedCoconut],null,waterBottle,[<harvestcraft:lamingtonitem>],200);
//Pavlova Cake
recipes.removeByRecipeName("harvestcraft:pavlovaitem");
ExSartagine.addKettleRecipe([egg, sugar, lemon, meringue, strawberry],null,waterBottle,[<harvestcraft:pavlovaitem>],200);
//Pineapple Cake
recipes.removeByRecipeName("harvestcraft:pineappleupsidedowncakeitem");
ExSartagine.addKettleRecipe([pineapple, dough, cherry, walnut],null,waterBottle,[<harvestcraft:pineappleupsidedowncakeitem>],200);
//pumpkin Cheesecake
recipes.removeByRecipeName("harvestcraft:pumpkincheesecakeitem");
ExSartagine.addKettleRecipe([batter,heavyCream,sugar,pumpkin],null,waterBottle,[<harvestcraft:pumpkincheesecakeitem>],200);
//Red Velvet Cake
recipes.removeByRecipeName("harvestcraft:redvelvetcakeitem");
ExSartagine.addKettleRecipe([batter,heavyCream,milkBottle,sugar,redRose],null,null,[<harvestcraft:redvelvetcakeitem>],200);
//Cooked Calamari
furnace.remove(cookedCalamari);
mods.futuremc.Smoker.addRecipe(calamari, cookedCalamari);
ExSartagine.addKettleRecipe([calamari],null,null,[cookedCalamari],80);
//Grilled Asparagus
recipes.removeByRecipeName("harvestcraft:asparagusitem");
ExSartagine.addPanRecipe(<harvestcraft:asparagusitem>,<harvestcraft:grilledasparagusitem>);
//Baked Sweet Potato
recipes.removeByRecipeName("harvestcraft:bakedsweetpotatoitem");
mods.futuremc.Smoker.addRecipe(<harvestcraft:sweetpotatoitem>, bakedsweetpotato);
ExSartagine.addKettleRecipe([<harvestcraft:sweetpotatoitem>],null,null,[bakedsweetpotato],80);
//Grilled Eggplant
recipes.removeByRecipeName("harvestcraft:grilledeggplantitem");
ExSartagine.addPanRecipe(<harvestcraft:eggplantitem>,<harvestcraft:grilledeggplantitem>);
//Buttered Toast
recipes.removeByRecipeName("harvestcraft:toastitem");
ExSartagine.addKettleRecipe([bread,butter],null,null,[<harvestcraft:toastitem>],80);
//Ice cream
recipes.removeByRecipeName("harvestcraft:icecreamitem");
recipes.removeByRecipeName("harvestcraft:icecreamitem_dustsalt");
RecipeBuilder.get("chef")
  .setShapeless([milkBottle, snowball, salt])
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:icecreamitem>*3)
  .create();
//Grilled Cheese
recipes.removeByRecipeName("harvestcraft:grilledcheeseitem");
ExSartagine.addKettleRecipe([bread,butter,butter,cheese],null,null,[<harvestcraft:grilledcheeseitem>],80);
//Apple Sauce
recipes.removeByRecipeName("harvestcraft:applesauceitem");
Mortar.addRecipe(["stone"], <harvestcraft:applesauceitem>, 4, [apple]);
//Pumpkin Bread
recipes.removeByRecipeName("harvestcraft:pumpkinbreaditem");
ExSartagine.addKettleRecipe([dough,sugar,pumpkin],null,null,[<harvestcraft:pumpkinbreaditem>],80);
//Apple Pie
recipes.removeByRecipeName("harvestcraft:pumpkinbreaditem");
ExSartagine.addKettleRecipe([dough,sugar,apple],null,null,[<harvestcraft:applepieitem>],80);
//Tea 
recipes.removeByRecipeName("harvestcraft:teaitem");
ExSartagine.addPotRecipe(teaLeaf, <harvestcraft:teaitem>);
//Coffee
recipes.removeByRecipeName("harvestcraft:coffeeitem");
ExSartagine.addPotRecipe(coffeeBean, <harvestcraft:coffeeitem>);
//Popcorn
recipes.removeByRecipeName("harvestcraft:popcornitem");
ExSartagine.addKettleRecipe([corn],null,null,[<harvestcraft:popcornitem>],80);
//Raisins
recipes.removeByRecipeName("harvestcraft:popcornitem");
DryingRack.addRecipe("raisins", <harvestcraft:raisinsitem>, grape, 120 * 30);
//Puffed Rice (Cake)
recipes.removeByRecipeName("harvestcraft:ricecakeitem");
ExSartagine.addKettleRecipe([rice],null,null,[<harvestcraft:ricecakeitem>],80);
//Toasted Coconut
recipes.removeByRecipeName("harvestcraft:foodToastedcoconut");
ExSartagine.addKettleRecipe([coconut],null,null,[<harvestcraft:toastedcoconutitem>],80);
//Toasted Pumpkin Seeds
recipes.removeByRecipeName("harvestcraft:roastedpumpkinseedsitem");
ExSartagine.addKettleRecipe([pumpkinSeeds],null,null,[<harvestcraft:roastedpumpkinseedsitem>],80);
//Vanilla
recipes.removeByRecipeName("harvestcraft:vanillaitem");
ExSartagine.addKettleRecipe([vanillaBean],null,null,[<harvestcraft:vanillaitem>],80);
DryingRack.addRecipe("vanilla", <harvestcraft:vanillaitem>, vanillaBean, 120 * 30);
//Sesame
recipes.removeByRecipeName("harvestcraft:toastedsesameseedsitem");
ExSartagine.addKettleRecipe([sesame],null,null,[<harvestcraft:toastedsesameseedsitem>],80);
//Dough
recipes.removeByRecipeName("harvestcraft:doughitem");
recipes.removeByRecipeName("harvestcraft:doughitem_dustsalt");
RecipeBuilder.get("chef")
  .setShapeless([flour,salt])
  .setFluid(waterBucket)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:doughitem>)
  .create();
//Pasta
recipes.removeByRecipeName("harvestcraft:pastaitem");
RecipeBuilder.get("chef")
  .setShapeless([dough,butter])
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:pastaitem>*5)
  .create();
//Heavy Cream
recipes.removeByRecipeName("harvestcraft:heavycreamitem");
recipes.addShapeless("heavy_cream", <harvestcraft:heavycreamitem>*2,
    [milkBottle]);	

//Butter
recipes.removeByRecipeName("harvestcraft:toastedsesameseedsitem");
ExSartagine.addKettleRecipe([salt,heavyCream],null,null,[<harvestcraft:butteritem>],80);

//Juices
recipes.removeByRecipeName("harvestcraft:applejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([apple])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:applejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:melonjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([melon])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:melonjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:carrotjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([carrot])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:carrotjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:strawberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([strawberry])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:strawberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:grapejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([grape])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:grapejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:blueberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([blueberry])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:blueberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:cherryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([cherry])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:cherryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:papayajuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([papaya])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:papayajuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:starfruitjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([starfruit])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:starfruitjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:orangejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([orange])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:orangejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:peachjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([peach])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:peachjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:limejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([lime])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:limejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:mangojuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([mango])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:mangojuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:pomegranatejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([pomegranate])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:pomegranatejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:blackberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([blackberry])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:blackberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:raspberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([raspberry])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:raspberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:kiwijuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([kiwi])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:kiwijuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:cranberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([cranberry])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:cranberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:cactusfruitjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([cactusFruit])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:cactusfruitjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:plumjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([plum])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:plumjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:pearjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([pear])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:pearjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:apricotjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([apricot])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:apricotjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:figjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([fig])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:figjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:grapefruitjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([grapeFruit])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:grapefruitjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:persimmonjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([persimmon])
  .setFluid(waterBottle2)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:persimmonjuiceitem>*2)
  .create();

//Smoothies
recipes.removeByRecipeName("harvestcraft:melonsmoothieitem");
RecipeBuilder.get("chef")
  .setName("melon_smoothie")
  .setShapeless([melon,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:melonsmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:strawberrysmoothieitem");
RecipeBuilder.get("chef")
  .setName("strawberry_smoothie")
  .setShapeless([strawberry,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:strawberrysmoothieitem>)
  .create();

//Pumpkin soup
recipes.removeByRecipeName("harvestcraft:pumpkinsoupitem");
ExSartagine.addKettleRecipe([stock,heavyCream,pumpkin],cutKettle,null,[<harvestcraft:pumpkinsoupitem>],80);
//Carrot soup
recipes.removeByRecipeName("harvestcraft:carrotsoupitem");
ExSartagine.addKettleRecipe([stock,heavyCream,carrot],cutKettle,null,[<harvestcraft:carrotsoupitem>],80);
//Glassed carrots
recipes.removeByRecipeName("harvestcraft:glazedcarrotsitem");
ExSartagine.addKettleRecipe([carrot,butter,sugar],cutKettle,null,[<harvestcraft:glazedcarrotsitem>],80);
//Mashed potato
recipes.removeByRecipeName("harvestcraft:mashedpotatoesitem");
Mortar.addRecipe(["stone"], <harvestcraft:mashedpotatoesitem>, 4, [potato,salt]);
//Potato salad
recipes.removeByRecipeName("harvestcraft:potatosaladitem");
recipes.addShapeless("potatosaladitem",<harvestcraft:potatosaladitem>,[potato,cutBad,mayo]);
RecipeBuilder.get("chef")
  .setName("potato_salad")
  .setShapeless([<ore:cookedPotato>, <ore:foodMayo>])
  .addTool(cut,1)
  .addOutput(<harvestcraft:potatosaladitem>)
  .create();
//fries -&C
recipes.removeByRecipeName("harvestcraft:friesitem");
ExSartagine.addKettleRecipe([<contenttweaker:raw_fries>,salt],null,null,[<harvestcraft:friesitem>],80);
recipes.addShapeless("fries",<contenttweaker:raw_fries>,[potato,cutBad]);
RecipeBuilder.get("chef")
  .setName("fries")
  .setShapeless([<ore:cropPotato>])
  .addTool(cut, 1)
  .addOutput(<contenttweaker:raw_fries>)
  .create();
//Potato Soup
recipes.removeByRecipeName("harvestcraft:potatosoupitem");
ExSartagine.addKettleRecipe([stock,heavyCream,potato],cutKettle,null,[<harvestcraft:potatosoupitem>],80);
//Grilled mushroom
recipes.removeByRecipeName("harvestcraft:grilledmushroomitem");
ExSartagine.addPanRecipe(mushroom, <harvestcraft:grilledmushroomitem>);
//Stuffed mushrooms
recipes.removeByRecipeName("harvestcraft:stuffedmushroomitem");
ExSartagine.addKettleRecipe([toast,mushroom],cheese,null,[<harvestcraft:stuffedmushroomitem>],80);
//Chicken sandwich -&C
recipes.removeByRecipeName("harvestcraft:chickensandwichitem");
recipes.addShapeless("chicken_sandwich", <harvestcraft:chickensandwichitem>,
    [bread,cookedChicken,mayo]);	
RecipeBuilder.get("chef")
  .setName("chicken_sandwich")
  .setShapeless([bread,cookedChicken,mayo])
  .addOutput(<harvestcraft:chickensandwichitem>)
  .create();
//Chicken noodle soup
recipes.removeByRecipeName("harvestcraft:chickennoodlesoupitem");
ExSartagine.addKettleRecipe([rawChicken,carrot,pasta,stock],cutKettle,null,[<harvestcraft:chickennoodlesoupitem>],80);
//Chicken pot pie
recipes.removeByRecipeName("harvestcraft:chickenpotpieitem");
ExSartagine.addKettleRecipe([rawChicken,potato,carrot,dough],cutKettle,null,[<harvestcraft:chickenpotpieitem>],80);
//Breaded porkshop
recipes.removeByRecipeName("harvestcraft:breadedporkchopitem");
ExSartagine.addKettleRecipe([rawPork,batter],null,null,[<harvestcraft:breadedporkchopitem>],80);
//Minced meat -&C
recipes.addShapeless("minced_meat",<mod_lavacow:mousse>,[rawPork,cutBad]);
RecipeBuilder.get("chef")
  .setName("minced_meat")
  .setShapeless([rawPork])
  .addTool(cut, 1)
  .addOutput(<mod_lavacow:mousse>)
  .create();
//Ground beef
recipes.addShapeless("ground_beef",<mod_lavacow:mousse>,[rawBeef,cutBad]);
RecipeBuilder.get("chef")
  .setName("ground_beef")
  .setShapeless([rawBeef])
  .addTool(cut, 1)
  .addOutput(<contenttweaker:ground_beef>)
  .create();
//Wiener
RecipeBuilder.get("chef")
  .setName("wiener")
  .setShapeless([<mod_lavacow:mousse>, <contenttweaker:sheep_intestines>])
  .addOutput(wiener)
  .create();
//Hot-dog
recipes.removeByRecipeName("harvestcraft:hotdogitem");
ExSartagine.addKettleRecipe([wiener,bread],null,null,[<harvestcraft:hotdogitem>],80);
//Baked Ham
recipes.removeByRecipeName("harvestcraft:bakedhamitem");
ExSartagine.addKettleRecipe([rawPork,apple,sugar],null,null,[<harvestcraft:bakedhamitem>],80);
//Simple patty
RecipeBuilder.get("chef")
  .setName("raw_patty")
  .setShapeless([anyRawMeat, salt, spice])
  .addOutput(patty)
  .create();
//Hamburger
recipes.removeByRecipeName("harvestcraft:hamburgeritem");
ExSartagine.addKettleRecipe([patty,bread],null,null,[<harvestcraft:hamburgeritem>],80);
//Cheeseburguer -&C
RecipeBuilder.get("chef")
  .setName("cheeseburger")
  .setShapeless([<harvestcraft:hamburgeritem>, cheese])
  .addOutput(<harvestcraft:cheeseburgeritem>)
  .create();
//Pot roast
recipes.removeByRecipeName("harvestcraft:potroastitem");
ExSartagine.addKettleRecipe([rawBeef,potato,carrot,stock],cutKettle,null,[<harvestcraft:potroastitem>],80);
//Fish sandwich
recipes.removeByRecipeName("harvestcraft:fishsandwichitem");
ExSartagine.addKettleRecipe([rawFish,bread],mayo,null,[<harvestcraft:fishsandwichitem>],80);
//Fish sticks 
recipes.removeByRecipeName("harvestcraft:fishsticksitem");
ExSartagine.addKettleRecipe([rawFish,batter],null,null,[<harvestcraft:fishsticksitem>],80);
//Fish & chips -&C
RecipeBuilder.get("chef")
  .setName("fish_chips")
  .setShapeless([<harvestcraft:fishsticksitem>, <harvestcraft:friesitem>])
  .addOutput(<harvestcraft:fishandchipsitem>)
  .create();
//Mayonnaise
recipes.removeByRecipeName("harvestcraft:mayoitem");
RecipeBuilder.get("chef")
  .setName("mayonnaise")
  .setShapeless([egg])
  .addTool(mixing, 3)
  .addOutput(<harvestcraft:mayoitem>)
  .create();
//Fried egg
recipes.removeByRecipeName("harvestcraft:friedeggitem");
ExSartagine.addPanRecipe(egg, <harvestcraft:friedeggitem>);
//Scrambled egg
recipes.removeByRecipeName("harvestcraft:scrambledeggitem");
ExSartagine.addKettleRecipe([egg,egg,egg],null,null,[<harvestcraft:scrambledeggitem>],40);
//Boiled egg 
JEI.removeAndHide(<harvestcraft:boiledeggitem>);
furnace.remove(<betteranimalsplus:fried_egg>, <harvestcraft:boiledeggitem>);
//Egg Salad -&C
recipes.removeByRecipeName("harvestcraft:eggsaladitem");
recipes.addShapeless("egg_salad",<harvestcraft:eggsaladitem>,[egg, mayo]);
RecipeBuilder.get("chef")
  .setName("egg_salad")
  .setShapeless([egg, mayo])
  .addTool(cut, 1)
  .addOutput(<harvestcraft:eggsaladitem>)
  .create();
//Caramel
recipes.removeByRecipeName("harvestcraft:caramelitem");
ExSartagine.addPanRecipe(sugar, <harvestcraft:caramelitem>);
ExSartagine.addKettleRecipe([sugar],null,null,[<harvestcraft:caramelitem>],80);
//Taffy
recipes.removeByRecipeName("harvestcraft:taffyitem");
ExSartagine.addKettleRecipe([sugar,salt],null,waterBottle,[<harvestcraft:taffyitem>],80);
//Cocoa Powder
Mortar.addRecipe(["stone"], <harvestcraft:cocoapowderitem>, 4, [cocoa]);
//Chocolate bar
recipes.removeByRecipeName("harvestcraft:chocolatebaritem");
ExSartagine.addKettleRecipe([<harvestcraft:cocoapowderitem>,butter,milkBottle],null,null,[<harvestcraft:chocolatebaritem>*4],80);
//Hot chocolate
recipes.removeByRecipeName("harvestcraft:hotchocolateitem");
ExSartagine.addKettleRecipe([<harvestcraft:cocoapowderitem>,milkBottle],null,waterBottle,[<harvestcraft:hotchocolateitem>*2],80);
//Chocolate ice cream 
recipes.removeByRecipeName("harvestcraft:chocolateicecreamitem");
RecipeBuilder.get("chef")
  .setName("chocolate_icecream")
  .setShapeless([iceCream,<harvestcraft:cocoapowderitem>])
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:chocolateicecreamitem>)
  .create();
//Vegetable soup
recipes.removeByRecipeName("harvestcraft:vegetablesoupitem");
ExSartagine.addKettleRecipe([potato,carrot,mushroom,stock],cutKettle,null,[<harvestcraft:vegetablesoupitem>],80);
//Fruit salad -&C
recipes.removeByRecipeName("harvestcraft:fruitsaladitem");
recipes.addShapeless("fruit_salad",<harvestcraft:fruitsaladitem>,[<ore:listAllfruit>,cutBad,<ore:listAllfruit>]);
RecipeBuilder.get("chef")
  .setName("fruit_salad")
  .setShapeless([<ore:listAllfruit>,<ore:listAllfruit>])
  .addTool(cut, 1)
  .addOutput(<harvestcraft:fruitsaladitem>)
  .create();
//Spaghetti 
recipes.removeByRecipeName("harvestcraft:spagettiitem");
ExSartagine.addKettleRecipe([tomato,pasta,pasta,spice],null,null,[<harvestcraft:spagettiitem>],80);
//Spaghetti and meatballs
recipes.removeByRecipeName("harvestcraft:spagettiandmeatballsitem");
ExSartagine.addKettleRecipe([tomato,pasta,pasta,spice,<contenttweaker:ground_beef>],null,null,[<harvestcraft:spagettiitem>],80);
//Tomato soup
recipes.removeByRecipeName("harvestcraft:tomatosoupitem");
RecipeBuilder.get("chef")
  .setName("tomato_soup")
  .setShapeless([stock,tomato])
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:tomatosoupitem>)
  .create();
//Ketchup
recipes.removeByRecipeName("harvestcraft:ketchupitem");
RecipeBuilder.get("chef")
  .setName("ketchup")
  .setShapeless([tomato])
  .addTool(mixing, 1)
  .addOutput(<harvestcraft:ketchupitem>)
  .create();
//Chicken parmesan
recipes.removeByRecipeName("harvestcraft:chickenparmasanitem");
ExSartagine.addKettleRecipe([rawChicken,tomato,cheese],cutKettle,null,[<harvestcraft:chickenparmasanitem>],80);
//Spring salad -&C
recipes.removeByRecipeName("harvestcraft:springsaladitem");
recipes.addShapeless("spring_salad",springSalad,[lettuce,veggie,cutBad]);
RecipeBuilder.get("chef")
  .setName("spring_salad")
  .setShapeless([lettuce,veggie])
  .addTool(cut, 1)
  .addOutput(springSalad)
  .create();
//Pork Lettuce Wrap -&C
recipes.removeByRecipeName("harvestcraft:porklettucewrapitem");
recipes.addShapeless("pork_lettuce_wrap",<harvestcraft:porklettucewrapitem>,[lettuce,cookedPork,cutBad]);
RecipeBuilder.get("chef")
  .setName("pork_lettuce_wrap")
  .setShapeless([lettuce,cookedPork])
  .addTool(cut, 1)
  .addOutput(<harvestcraft:porklettucewrapitem>)
  .create();
//Fish Lettuce Wrap -&C
recipes.removeByRecipeName("harvestcraft:fishlettucewrapitem");
recipes.addShapeless("fish_lettuce_wrap",<harvestcraft:fishlettucewrapitem>,[lettuce,cookedFish,cutBad]);
RecipeBuilder.get("chef")
  .setName("fish_lettuce_wrap")
  .setShapeless([lettuce,cookedFish])
  .addTool(cut, 1)
  .addOutput(<harvestcraft:fishlettucewrapitem>)
  .create();
//BLT -&C
recipes.removeByRecipeName("harvestcraft:bltitem");
recipes.addShapeless("blt",<harvestcraft:bltitem>,[lettuce,tomato,cookedPork,toast,cutBad]);
RecipeBuilder.get("chef")
  .setName("blt")
  .setShapeless([lettuce,tomato,cookedPork,toast])
  .addTool(cut, 1)
  .addOutput(<harvestcraft:bltitem>)
  .create();
//Leafy Chicken Sandwich
RecipeBuilder.get("chef")
  .setName("leafy_sandwich_chicken")
  .setShapeless([<harvestcraft:chickensandwichitem>,lettuce])
  .addOutput(<harvestcraft:leafychickensandwichitem>)
  .create();
//Leafy Fish Sandwich
RecipeBuilder.get("chef")
  .setName("leafy_sandwich_fish")
  .setShapeless([<harvestcraft:fishsandwichitem>,lettuce])
  .addOutput(<harvestcraft:leafyfishsandwichitem>)
  .create();
//Potato Cakes
recipes.removeByRecipeName("harvestcraft:potatocakesitem");
ExSartagine.addKettleRecipe([onion,potato,butter],cutKettle,null,[<harvestcraft:potatocakesitem>],80);
//Hash
recipes.removeByRecipeName("harvestcraft:potatocakesitem");
ExSartagine.addKettleRecipe([onion,potato,<contenttweaker:ground_beef>|<mod_lavacow:mousse>],cutKettle,null,[<harvestcraft:hashitem>],80);
//Braised onions
recipes.removeByRecipeName("harvestcraft:braisedonionsitem");
ExSartagine.addKettleRecipe([onion,butter,stock],cutKettle,null,[<harvestcraft:braisedonionsitem>],80);
//Corn on the cob
RecipeBuilder.get("chef")
  .setName("corn_on_the_cob")
  .setShapeless([corn,butter])
  .addOutput(<harvestcraft:cornonthecobitem>)
  .create();
//Cornmeal
recipes.removeByRecipeName("harvestcraft:cornmealitem");
Mortar.addRecipe(["stone"], cornmeal, 4, [corn]);
//Corn bread
recipes.removeByRecipeName("harvestcraft:cornbreaditem");
ExSartagine.addKettleRecipe([cornmeal,egg,milkBottle],null,null,[<harvestcraft:cornbreaditem>],80); //also millstone recipe
//Tortilla
recipes.removeByRecipeName("harvestcraft:tortillaitem");
ExSartagine.addKettleRecipe([cornmeal],null,waterBottle,[tortilla],80);
//Nachos -&C
recipes.removeByRecipeName("harvestcraft:nachoesitem");
recipes.addShapeless("nachos",<harvestcraft:nachoesitem>,[tortilla,cheese,cutBad]);
RecipeBuilder.get("chef")
  .setName("nachos")
  .setShapeless([tortilla,cheese])
  .addTool(cut, 1)
  .addOutput(<harvestcraft:nachoesitem>)
  .create();
//Beef taco -&C
recipes.removeByRecipeName("harvestcraft:tacoitem");
recipes.addShapeless("beef_taco",<harvestcraft:tacoitem>,[cookedBeef,lettuce,cheese,tortilla,cutBad]);
RecipeBuilder.get("chef")
  .setName("beef_taco")
  .setShapeless([cookedBeef,lettuce,cheese,tortilla])
  .addTool(cut, 1)
  .addOutput(<harvestcraft:tacoitem>)
  .create();
//Fish taco -&C
recipes.removeByRecipeName("harvestcraft:fishtacoitem");
recipes.addShapeless("fish_taco",<harvestcraft:fishtacoitem>,[cookedFish,lettuce,cheese,tortilla,cutBad]);
RecipeBuilder.get("chef")
  .setName("fish_taco")
  .setShapeless([cookedFish,lettuce,cheese,tortilla])
  .addTool(cut, 1)
  .addOutput(<harvestcraft:fishtacoitem>)
  .create();
//Hydra taco 
recipes.addShapeless("hydraco",<contenttweaker:hydraco>,[hydraMeat,lettuce,cheese,tortilla,cutBad]);
RecipeBuilder.get("chef")
  .setName("hydraco")
  .setShapeless([hydraMeat,lettuce,cheese,tortilla])
  .addTool(cut, 1)
  .addOutput(<contenttweaker:hydraco>)
  .create();
//Creamed corn
recipes.removeByRecipeName("harvestcraft:creamedcornitem");
ExSartagine.addKettleRecipe([corn,onion,heavyCream],cutKettle,null,[<harvestcraft:creamedcornitem>],80);
//Strawberry cake 
recipes.removeByRecipeName("harvestcraft:strawberrypieitem");
ExSartagine.addKettleRecipe([dough,sugar],strawberry,waterBottle,[<harvestcraft:strawberrypieitem>],80);
//Strawberry salad -&C
RecipeBuilder.get("chef")
  .setName("strawberry_salad")
  .setShapeless([<harvestcraft:fruitsaladitem>,strawberry])
  .addOutput(<harvestcraft:strawberrysaladitem>)
  .create();
//Chocolate strawberry
recipes.removeByRecipeName("harvestcraft:chocolatestrawberryitem");
ExSartagine.addKettleRecipe([strawberry],chocolateBar,null,[<harvestcraft:chocolatestrawberryitem>],20);
//Peanut butter
recipes.removeByRecipeName("harvestcraft:peanutbutteritem");
Mortar.addRecipe(["stone"], <harvestcraft:peanutbutteritem>, 4, [cookingOil,peanut]);
//Trail mix -&C 
RecipeBuilder.get("chef")
  .setName("trail_mix")
  .setShapeless([<harvestcraft:chocolatebaritem>,<harvestcraft:raisinsitem>,seed])
  .addOutput(<harvestcraft:trailmixitem>)
  .create();
RecipeBuilder.get("chef")
  .setName("trail_mix_1")
  .setShapeless([<harvestcraft:chocolatebaritem>,<harvestcraft:raisinsitem>,nut])
  .addOutput(<harvestcraft:trailmixitem>)
  .create();
RecipeBuilder.get("chef")
  .setName("trail_mix_2")
  .setShapeless([<harvestcraft:chocolatebaritem>,<harvestcraft:raisinsitem>,<harvestcraft:roastedpumpkinseedsitem>])
  .addOutput(<harvestcraft:trailmixitem>)
  .create();
RecipeBuilder.get("chef")
  .setName("trail_mix_3")
  .setShapeless([<harvestcraft:chocolatebaritem>,<harvestcraft:raisinsitem>,<harvestcraft:sunflowerseedsitem>])
  .addOutput(<harvestcraft:trailmixitem>)
  .create();
//Peanut butter and jam sandwich
recipes.removeByRecipeName("harvestcraft:pbandjitem");
recipes.addShapeless("pbj_sandwich",<harvestcraft:pbandjitem>,[nutButter,<harvestcraft:grapejellyitem>,bread,cutBad]);
RecipeBuilder.get("chef")
  .setName("pbj_sandwich")
  .setShapeless([nutButter,<harvestcraft:grapejellyitem>,bread])
  .addTool(cut, 1)
  .addOutput(<harvestcraft:pbandjitem>)
  .create();
//Peanut butter cookies
recipes.removeByRecipeName("harvestcraft:peanutbuttercookiesitem");
ExSartagine.addKettleRecipe([nutButter,batter,sugar,sugar],null,null,[<harvestcraft:peanutbuttercookiesitem>*2],80);
//Vinegar
recipes.removeByRecipeName("harvestcraft:vinegaritem");
//Made in soaking pot using juice; pyrotech_recipes_other.zs
//Jelly
recipes.removeByRecipeName("harvestcraft:grapejellyitem");
ExSartagine.addKettleRecipe([grape,sugar],null,null,[<harvestcraft:grapejellyitem>],80);

//Grape salad -&C
RecipeBuilder.get("chef")
  .setName("grape_salad")
  .setShapeless([<harvestcraft:fruitsaladitem>,grape])
  .addOutput(<harvestcraft:grapesaladitem>)
  .create();
//Raisin cookies 
recipes.removeByRecipeName("harvestcraft:raisincookiesitem");
ExSartagine.addKettleRecipe([batter,sugar,<harvestcraft:raisinsitem>],null,null,[<harvestcraft:raisincookiesitem>],80);
//Pickles
recipes.removeByRecipeName("harvestcraft:picklesitem_dustsalt");
ExSartagine.addKettleRecipe([cucumber,salt,vinegar],null,null,[<harvestcraft:picklesitem>],80);
//Cucumber salad -&C
recipes.removeByRecipeName("harvestcraft:cucumbersaladitem");
recipes.addShapeless("cucumber_salad",<harvestcraft:cucumbersaladitem>,[springSalad,cucumber,cutBad]);
RecipeBuilder.get("chef")
  .setName("cucumber_salad")
  .setShapeless([springSalad,cucumber])
  .addTool(cut, 1)
  .addOutput(<harvestcraft:cucumbersaladitem>)
  .create();
//Cucumber soup
recipes.removeByRecipeName("harvestcraft:cucumbersoupitem");
ExSartagine.addKettleRecipe([cucumber,stock,heavyCream],cutKettle,null,[<harvestcraft:cucumbersoupitem>],80);
//Vegetarian lettuce wrap
recipes.removeByRecipeName("harvestcraft:vegetarianlettucewrapitem");
recipes.addShapeless("v_lettuce_wrap",<harvestcraft:vegetarianlettucewrapitem>,[cucumber,lettuce,tomato,cutBad]);
RecipeBuilder.get("chef")
  .setName("v_lettuce_wrap")
  .setShapeless([cucumber,lettuce,tomato])
  .addTool(cut, 1)
  .addOutput(<harvestcraft:vegetarianlettucewrapitem>)
  .create();
//Marinated cucumbers 
recipes.removeByRecipeName("harvestcraft:marinatedcucumbersitem");
ExSartagine.addKettleRecipe([cucumber,onion,sugar,vinegar],cutKettle,null,[<harvestcraft:marinatedcucumbersitem>],80);
//Rice soup 
recipes.removeByRecipeName("harvestcraft:ricesoupitem");
ExSartagine.addKettleRecipe([rice,stock],null,null,[<harvestcraft:ricesoupitem>],80);
//Fried rice
recipes.removeByRecipeName("harvestcraft:friedriceitem");
ExSartagine.addKettleRecipe([rice,carrot,egg,onion],cutKettle,null,[<harvestcraft:friedriceitem>],80);
//Mushroom risotto 
recipes.removeByRecipeName("harvestcraft:mushroomrisottoitem");
ExSartagine.addKettleRecipe([rice,mushroom,onion,cheese],cutKettle,null,[<harvestcraft:mushroomrisottoitem>],80);
//Curry rice 
recipes.removeByRecipeName("harvestcraft:curryitem_dustsalt");
ExSartagine.addKettleRecipe([rice,salt,chili,coconutMilk,spice],null,null,[<harvestcraft:curryitem>],80);
//Refried beans 
recipes.removeByRecipeName("harvestcraft:refriedbeansitem");
ExSartagine.addKettleRecipe([beans,onion,butter],cutKettle,null,[<harvestcraft:refriedbeansitem>],80);
//Baked beans
recipes.removeByRecipeName("harvestcraft:bakedbeansitem");
ExSartagine.addKettleRecipe([beans,rawPork,sugar],null,null,[<harvestcraft:bakedbeansitem>],80);
ExSartagine.addKettleRecipe([beans,rawBacon,rawBacon,sugar],null,null,[<harvestcraft:bakedbeansitem>],80);
//Beans and rice 
recipes.removeByRecipeName("harvestcraft:beansandriceitem_croponion");
recipes.removeByRecipeName("harvestcraft:beansandriceitem_cropchilipepper");
recipes.removeByRecipeName("harvestcraft:beansandriceitem_cropbellpepper");
ExSartagine.addKettleRecipe([beans,rice,stewCondiment,rawPork],cutKettle,null,[<harvestcraft:beansandriceitem>],80);
RecipeBuilder.get("chef")
  .setName("beans_and_rice")
  .setShapeless([beans,rice,stewCondiment,cookedPork])
  .addOutput(<harvestcraft:beansandriceitem>)
  .create();
ExSartagine.addKettleRecipe([beans,rice,stewCondiment,rawBacon],cutKettle,null,[<harvestcraft:beansandriceitem>],80);
RecipeBuilder.get("chef")
  .setName("beans_and_rice_1")
  .setShapeless([beans,rice,stewCondiment,cookedBacon])
  .addOutput(<harvestcraft:beansandriceitem>)
  .create();
//Chili
recipes.removeByRecipeName("harvestcraft:chiliitem_croponion");
recipes.removeByRecipeName("harvestcraft:chiliitem_cropchilipepper");
recipes.removeByRecipeName("harvestcraft:chiliitem_cropbellpepper");
ExSartagine.addKettleRecipe([beans,stewCondiment,rawPork],cutKettle,null,[<harvestcraft:chiliitem>],80);
RecipeBuilder.get("chef")
  .setName("chili")
  .setShapeless([beans,stewCondiment,cookedPork])
  .addOutput(<harvestcraft:chiliitem>)
  .create();
ExSartagine.addKettleRecipe([beans,stewCondiment,rawBacon],cutKettle,null,[<harvestcraft:chiliitem>],80);
RecipeBuilder.get("chef")
  .setName("chili_1")
  .setShapeless([beans,stewCondiment,cookedBacon])
  .addOutput(<harvestcraft:chiliitem>)
  .create();
//Bean burrito
recipes.removeByRecipeName("harvestcraft:beanburritoitem");
ExSartagine.addKettleRecipe([beans,tortilla,rice,cheese],null,null,[<harvestcraft:beanburritoitem>],80);
//Stuffed pepper
recipes.removeByRecipeName("harvestcraft:stuffedpepperitem");
ExSartagine.addKettleRecipe([bellpepper,tomato,rice],cutKettle,null,[<harvestcraft:stuffedpepperitem>],80);
//Veggie stirfry
recipes.removeByRecipeName("harvestcraft:veggiestirfryitem_listallveggie");
recipes.removeByRecipeName("harvestcraft:veggiestirfryitem_listallmushroom");
ExSartagine.addKettleRecipe([bellpepper,carrot,rice,onion,veggie],cutKettle,null,[<harvestcraft:veggiestirfryitem>],80);
ExSartagine.addKettleRecipe([bellpepper,tomato,rice,onion,mushroom],cutKettle,null,[<harvestcraft:veggiestirfryitem>],80);
//Grilled skewer
recipes.removeByRecipeName("harvestcraft:grilledskewersitem");
ExSartagine.addKettleRecipe([bellpepper,onion,carrot],cutKettle,null,[<harvestcraft:grilledskewersitem>],80);
//Omelet
recipes.removeByRecipeName("harvestcraft:omeletitem");
ExSartagine.addKettleRecipe([egg,bellpepper,onion],cutKettle,null,[<harvestcraft:omeletitem>],80);
//Hot wings -&C 
recipes.removeByRecipeName("harvestcraft:hotwingsitem");
recipes.addShapeless("hot_one",<harvestcraft:hotwingsitem>*2,[cookedChicken,hotSauce]);
RecipeBuilder.get("chef")
  .setName("hot_one")
  .setShapeless([cookedChicken,hotSauce])
  .addOutput(<harvestcraft:hotwingsitem>*2)
  .create();










//!!!!!!!! Concept idea: "ye olde stew"; an item that can be crafted by throwing an assortment of raw ingredients to the pot which will result in a variable amount of said item. Intended for players who don't want to fiddle with different recipes and just want to use their random ingredients without thinking much. This item has absolutely no other use or buff other than just its saturation and food level; insipid due to lack of ability in its preparation