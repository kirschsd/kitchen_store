USE [online_store]
GO
/****** Object:  Table [dbo].[activity_history]    Script Date: 3/9/2017 1:53:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activity_history](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
	[time_stamp] [datetime] NULL,
	[activity] [varchar](255) NULL,
	[notes] [varchar](1000) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cart_products]    Script Date: 3/9/2017 1:53:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart_products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
	[quantity] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[categories]    Script Date: 3/9/2017 1:53:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pictures]    Script Date: 3/9/2017 1:53:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pictures](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[picture_key] [varchar](255) NULL,
	[alt_text] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pictures_products]    Script Date: 3/9/2017 1:53:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pictures_products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[picture_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[products]    Script Date: 3/9/2017 1:53:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[count] [int] NULL,
	[rating] [int] NULL,
	[price] [decimal](9, 2) NULL,
	[description] [varchar](4000) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[products_categories]    Script Date: 3/9/2017 1:53:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[category_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[profiles]    Script Date: 3/9/2017 1:53:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[street] [varchar](255) NULL,
	[city] [varchar](255) NULL,
	[state] [varchar](255) NULL,
	[zip_code] [int] NULL,
	[phone_number] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[reviews]    Script Date: 3/9/2017 1:53:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
	[rating] [int] NULL,
	[review_text] [varchar](5000) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[reviews_pictures]    Script Date: 3/9/2017 1:53:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews_pictures](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[picture_id] [int] NULL,
	[review_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 3/9/2017 1:53:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](255) NULL,
	[last_name] [varchar](255) NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[admin_privileges] [bit] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id], [name]) VALUES (1, N'Dinnerware')
INSERT [dbo].[categories] ([id], [name]) VALUES (2, N'Serveware')
INSERT [dbo].[categories] ([id], [name]) VALUES (3, N'Glassware & Barware')
INSERT [dbo].[categories] ([id], [name]) VALUES (4, N'Appliances')
INSERT [dbo].[categories] ([id], [name]) VALUES (5, N'Cutting & Shredding')
INSERT [dbo].[categories] ([id], [name]) VALUES (6, N'Cutlery & Utensils')
INSERT [dbo].[categories] ([id], [name]) VALUES (7, N'Cookware')
INSERT [dbo].[categories] ([id], [name]) VALUES (8, N'Bakeware')
INSERT [dbo].[categories] ([id], [name]) VALUES (9, N'Storage')
SET IDENTITY_INSERT [dbo].[categories] OFF
SET IDENTITY_INSERT [dbo].[pictures] ON 

INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (1, N'Content\img\products\1_pizzafork.jpg', N'Pizza Slicing Fork')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (2, N'\Content\img\products\2_lettuce-chopper.jpg', N'A lettuce chopper')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (3, N'Content\img\products\3_chomper.jpg', N'cherry chomper')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (4, N'Content\img\products\4_kernel-shaver.jpg', N'corn-kernel-shaver')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (5, N'Content\img\products\5_lunchbox.jpg ', N'Heated LunchBox System')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (6, N'Content\img\products\6_shredder.jpg', N'Pulled Pork Shredder Claws')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (7, N'Content\img\products\7_egg-cracker.jpg', N'Automatic Egg Cracker')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (8, N'Content\img\products\8_airfryer.jpg', N'Airfryer')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (9, N'Content\img\products\9_water-ionizer.jpg', N'TouchScreen Water Ionizer Faucet')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (10, N'Content\img\products\10_fork.jpg', N'Hog Wild Twirling Spaghetti Fork')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (11, N'Content\img\products\11_kebab-maker.jpg', N'Kebab Maker')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (12, N'Content\img\products\12_spice-rack.jpg', N'Ferris™ Deluxe
Spice Rack')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (13, N'Content\img\products\13_pancakebot.jpg', N'PancakeBot')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (14, N'Content\img\products\14_toasteroid.jpg', N'Toasteroid')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (15, N'Content\img\products\15_vegetti.jpg', N'Veggetti Spiral Vegetable Slicer')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (16, N'Content\img\products\16_sprinkler.jpg', N'Unicorn Sprinkler Shaker')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (17, N'Content\img\products\17_tea infuser.jpg', N'Mr.Tea Infuser')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (18, N'Content\img\products\18_knife-holder.jpg', N'Spartan knife holder')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (19, N'Content\img\products\19_slicer.jpg', N'Strawberry Slicer')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (20, N'Content\img\products\20_apple-slicer.jpg', N'Stainless-Steel Apple Slicer')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (21, N'Content\img\products\21_hamburger.jpg', N'Hot Dog Shaped Hamburger Mold')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (22, N'Content\img\products\22_art-gun.png', N'3D Latte Art Gun')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (23, N'Content\img\products\23_tea-brewer.png', N'Sweet Tea Brewer')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (24, N'Content\img\products\24_dispenser.jpg', N'Milk Dispenser')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (25, N'Content\img\products\25_waffle.jpg', N'KeyBoard Waffle Iron')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (26, N'Content\img\products\26_cutting-board.jpg', N'Cheese Degrees Cutting Board')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (27, N'Content\img\products\27_taco-truck.jpg', N' Taco Truck for kids')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (28, N'Content\img\products\28_face-plate.jpg', N'Pizza Cutting Protactor')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (29, N'Content\img\products\29_face-plate.jpg', N'Food Face Dinner Plates')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (30, N'Content\img\products\30_Fridge.jpg', N'Star Trek Borg Cube Fridge')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (31, N'Content\img\products\31_toothpick.jpg', N' Toothpick Holder')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (32, N'Content\img\products\32_cupholder.jpg', N'Nautical Octopus Cup Holder')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (33, N'Content\img\products\33_crustastun.jpg', N'stunner ')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (34, N'Content\img\products\34_sniffer.jpg', N'Peres Meat Freshness Sniffer')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (35, N'Content\img\products\35_egg-cooker.jpg', N'The Rollie egg maker')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (36, N'Content\img\products\36_cutter.jpg', N'The Crinkle Wavy Cutter')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (37, N'Content\img\products\37_nessie-ladle.png', N'Ototo Nessie Ladle')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (38, N'Content\img\products\38_melon-slicer.jpg', N' Melon Scoop')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (39, N'Content\img\products\39_butter-cutter.jpg', N' Butter Cutter')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (40, N'Content\img\products\40_cooler.jpg', N' Rapid Drink Cooler')
INSERT [dbo].[pictures] ([id], [picture_key], [alt_text]) VALUES (41, N'Content\img\products\41_butter-churner.jpg', N'Kilner Butter Churner')
SET IDENTITY_INSERT [dbo].[pictures] OFF
SET IDENTITY_INSERT [dbo].[pictures_products] ON 

INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (1, 1, 1)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (2, 2, 2)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (3, 3, 3)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (4, 4, 4)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (5, 5, 5)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (6, 6, 6)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (7, 7, 7)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (8, 8, 8)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (9, 9, 9)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (10, 10, 10)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (11, 11, 11)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (12, 12, 12)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (13, 13, 13)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (14, 14, 14)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (15, 15, 15)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (16, 16, 16)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (17, 17, 17)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (18, 18, 18)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (19, 19, 19)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (20, 20, 20)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (21, 21, 21)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (22, 22, 22)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (23, 23, 23)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (24, 24, 24)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (25, 25, 25)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (26, 26, 26)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (27, 27, 27)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (28, 28, 28)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (29, 29, 29)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (30, 30, 30)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (31, 31, 31)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (32, 32, 32)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (33, 33, 33)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (34, 34, 34)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (35, 35, 35)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (36, 36, 36)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (37, 37, 37)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (38, 38, 38)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (39, 39, 39)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (40, 40, 40)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (41, 41, 41)
INSERT [dbo].[pictures_products] ([id], [product_id], [picture_id]) VALUES (44, 42, 42)
SET IDENTITY_INSERT [dbo].[pictures_products] OFF
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (1, N'Pizza Slicer Fork', 8, 0, CAST(4.99 AS Decimal(9, 2)), N'Easily slice and eat your pizza with this genius pizza slicer fork. This 2-in-1 eating utensil has the functionality of a pizza slicer with the practicality of a regular fork, making it perfect for people who like to eat their pizza with a knife and a fork.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (2, N'Karate Lettuce Chopper', 20, 3, CAST(11.99 AS Decimal(9, 2)), N'Practice your deadly combat strikes while dicing up a healthy salad with this karate chop lettuce chopper. These clever lettuce choppers are dishwasher safe and are a great gift idea for healthy eaters who enjoy creating their salad with a pinch violence.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (3, N'Cherry Chomper', 10, 4, CAST(11.81 AS Decimal(9, 2)), N'Pits a cherry or olive quickly and safely')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (4, N'Corn Kernel Shaver', 30, 3, CAST(10.16 AS Decimal(9, 2)), N'Stop eating corn with your hands like a caveman – now you can easily strip off the delicious corn kernels and have a tasty side dish ready to eat with this genius corn kernel shaver. Just run the shaver down a piece of corn cob, and drop the kernels onto a plate.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (5, N'Heated LunchBox System', 25, 4, CAST(50.50 AS Decimal(9, 2)), N'Enjoy your meals at the fullest flavour !!')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (6, N'Pulled Pork Shredder Claws', 10, 3, CAST(15.99 AS Decimal(9, 2)), N'That''s incredible.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (7, N'Automatic Egg Cracker', 50, 4, CAST(20.99 AS Decimal(9, 2)), N'Cracks egg in no time.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (8, N'Airfryer', 30, 5, CAST(199.95 AS Decimal(9, 2)), N'A kitchen appliance that fries food without a boiling vat of fat.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (9, N'TouchScreen Water Ionizer Faucet', 30, 4, CAST(780.99 AS Decimal(9, 2)), N'A high-tech kitchen faucet with built-in purifiers and it has a touchscreen too.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (10, N'Hog Wild Twirling Spaghetti Fork', 5, 4, CAST(13.94 AS Decimal(9, 2)), N'Motorized fork automatically winds up the pasta on the end of the fork.Less mess, and 100% twirling fun.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (11, N'Kebab Maker', 10, 3, CAST(35.00 AS Decimal(9, 2)), N'Make the entree the highlight of your next cookout by using the kebab maker. This ingenious device allows you to easily stack your chosen ingredients, pierce them with either a 3/16? or 1/8? skewer, and easily slice them into perfect kebabs with no mess.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (12, N'Ferris™ Deluxe
Spice Rack', 18, 3, CAST(50.99 AS Decimal(9, 2)), N'Find your herbs and spices at the swish of a hand.Dimensions 35cm tall, 30cm wide, 30cm deep.All spices are packed in the UK.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (13, N'PancakeBot', 25, 4, CAST(299.00 AS Decimal(9, 2)), N'A 3D printer for pancakes that automatically make flapjacks in any design you like..')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (14, N'Toasteroid', 35, 5, CAST(79.99 AS Decimal(9, 2)), N'Burn Custom images and Texts on your toasts.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (15, N'Veggetti Spiral Vegetable Slicer', 37, 3, CAST(9.99 AS Decimal(9, 2)), N'Turns veggies into healthy spaghetti instantly!')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (16, N'Unicorn Sprinkler Shaker', 50, 4, CAST(10.99 AS Decimal(9, 2)), N'Sprinkle Your CupCakes with rainbow colors.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (17, N'Mr.Tea Infuser', 30, 5, CAST(9.99 AS Decimal(9, 2)), N'This tea infuser perches on the rim of your tea cup so you don''t have to worry about fishing it out.The infuser is constructed from silicone, which is soft, food-safe and tasteless, so it won''t affect the taste of your tea.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (18, N'Spartan knife holder', 28, 5, CAST(65.95 AS Decimal(9, 2)), N'6" wide x 10" deep x 10" tall - Just big enough to show it off but leave you with plenty of counter. High quality birch laminated wood will last generations.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (19, N'Chef’n Strawberry Slicer', 20, 4, CAST(14.95 AS Decimal(9, 2)), N'The pleasure of strawberries is sweeter than ever when you''re equipped with our ultra-efficient slicer. This family-friendly tool makes it fun, fast and easy to transform a whole strawberry into perfect slices with just a squeeze of the handle.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (20, N'Williams Sonoma Open Kitchen Stainless-Steel Apple Slicer', 45, 4, CAST(12.00 AS Decimal(9, 2)), N'Life in the kitchen is easier when you use the right tool for the task. Our apple slicer cuts out the core and makes equal wedges in one swift motion—a great convenience whenever you''re baking, cooking or preparing salads with apples.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (21, N'Hot Dog Shaped Hamburger Mold', 20, 3, CAST(16.00 AS Decimal(9, 2)), N'You will never have to buy two kinds of buns again!The Ham Dogger is easy to use and makes 1/4 lb. hot dog shaped hamburger patties.Or make specialty dogs using ground sausage or turkey.Made of durable plastic.Please allow 1-2 weeks for shipping.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (22, N'3D Latte Art Gun', 26, 4, CAST(47.99 AS Decimal(9, 2)), N'For your next latte art duel.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (23, N'The Authentic Southern Sweet Tea Brewer', 25, 4, CAST(49.95 AS Decimal(9, 2)), N'Brew for fresh iced tea with any flavor tea bags or tea leaves')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (24, N'Milk Dispenser', 20, 2, CAST(20.99 AS Decimal(9, 2)), N'This dispenses milk so that kids can get their own without spills. For Drinks & pour own Cereal!')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (25, N'KeyBoard Waffle Iron', 26, 3, CAST(70.99 AS Decimal(9, 2)), N'Enjoy a breakfast that''s Control-Alt-Delicious with this geek-chic waffle iron .Made from aluminum and featuring bake-lite heat resistant handles, this design can be put on the grill or even gas or electric stovetops.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (26, N'Cheese Degrees Cutting Board', 40, 4, CAST(19.99 AS Decimal(9, 2)), N'This wonderfully precise cutting board offers diagrams for slicing exact measurements of cheese.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (27, N' Fred''s Taco Truck', 20, 3, CAST(9.99 AS Decimal(9, 2)), N'Drive Fred''s Taco Truck up to your messiest eater and marvel at how it serves the goods.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (28, N'Pizza Cutting Protactor', 30, 5, CAST(13.49 AS Decimal(9, 2)), N'This protractor-inspired tool helps you measure and cut perfect pizza slices.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (29, N'Food Face Dinner Plates', 35, 4, CAST(12.00 AS Decimal(9, 2)), N'These Food Face plates make dinner time for Miss CC so much more fun!')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (30, N'Star Trek Borg Cube Fridge', 40, 5, CAST(149.99 AS Decimal(9, 2)), N'Glows green behind the Borg coating to look like the ship from Star Trek
Green inside light, too')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (31, N'Sea urchin Toothpick Holder', 30, 4, CAST(28.00 AS Decimal(9, 2)), N'Enjoy a seaside touch of style with this charming sea urchin that comes to life when holding your toothpicks')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (32, N'Nautical Octopus Cup Holder', 20, 5, CAST(85.00 AS Decimal(9, 2)), N'Nautical Octopus Small Tea Mug Cup Jewelry Holder Figurine,7.5''''H. #Handmade')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (33, N'CrustaStan Single Stunner', 15, 4, CAST(3500.00 AS Decimal(9, 2)), N'These electric zappers that will send a quick jolt of power to render the tasty crustaceans dead.  That way, you don''t have to feel guilty about torturing your dinner.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (34, N'Peres Meat Freshness Sniffer', 11, 3, CAST(120.00 AS Decimal(9, 2)), N'The world''s first portable electronic nose.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (35, N'The Rollie egg maker', 20, 4, CAST(20.00 AS Decimal(9, 2)), N'The Rollie is an electric egg cooker that basically makes tube-shaped omelettes. Just beat your eggs, drop them in the Rollie, turn it on, and you''ll have perfectly shaped eggs for your next breakfast burrito!')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (36, N'The Crinkle Wavy Cutter', 22, 4, CAST(9.99 AS Decimal(9, 2)), N'Face it: Now you have no excuse to keep buying those frozen crinkle-cut fries. If you use this knife to cut carrots, you can also replicate the cafeteria style vegetable medley you dreaded as a kid.
')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (37, N'Ototo Nessie Ladle', 30, 4, CAST(20.00 AS Decimal(9, 2)), N'You''ll never feel lonely in the kitchen again with this lil'' monster by your side. The best part about this ladle is that it doesn''t need an extra long drawer for stashing, because it stands up on its own.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (38, N'Super Marts Melon Scoop', 40, 3, CAST(8.00 AS Decimal(9, 2)), N'Melon-lovers now have it easy with this tool that separates the fruit from its skin, sans knife. It''s a perfect tool for kids and adults alike to make quick (and healthy) work of snack-time, and you can even use it to separate the seeds from the fruit as well.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (39, N'One Click Butter Cutter', 22, 3, CAST(16.00 AS Decimal(9, 2)), N'This contraption makes perfect little pats of butter for your toast, so it spreads and melts evenly. You can even use it for cooking to portion out just the right amount.')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (40, N'Takara Tomy Rapid Drink Cooler', 25, 5, CAST(37.99 AS Decimal(9, 2)), N'This portable cooler will chill your drink lightning-fast even on the hottest day, and it''s battery-powered, so you don''t have to worry about being near an outlet. Just pop in some ice and let it do its magic!')
INSERT [dbo].[products] ([id], [name], [count], [rating], [price], [description]) VALUES (41, N'Kilner Butter Churner', 30, 4, CAST(30.99 AS Decimal(9, 2)), N'If you''ve ever made butter using a mason jar, a marble, and some heavy cream, this is basically the same thing but less labor-intensive. You can have fresh, hand-churned butter in just minutes by using this crank, or you can use it to exhaust your child when they have too much energy.')
SET IDENTITY_INSERT [dbo].[products] OFF
SET IDENTITY_INSERT [dbo].[products_categories] ON 

INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (1, 1, 6)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (2, 2, 5)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (3, 3, 4)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (4, 4, 5)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (5, 5, 9)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (6, 6, 5)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (7, 6, 7)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (8, 7, 4)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (9, 8, 4)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (10, 9, 4)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (11, 10, 6)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (12, 11, 4)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (13, 12, 9)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (14, 13, 4)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (15, 14, 4)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (16, 15, 5)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (17, 16, 2)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (18, 17, 3)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (19, 18, 9)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (20, 19, 5)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (21, 20, 5)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (22, 21, 7)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (23, 22, 3)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (24, 23, 4)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (25, 23, 3)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (26, 24, 4)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (27, 24, 2)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (28, 25, 7)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (29, 28, 5)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (30, 28, 2)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (31, 29, 1)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (32, 30, 4)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (33, 31, 9)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (34, 32, 9)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (35, 33, 4)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (36, 34, 4)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (37, 35, 4)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (38, 36, 5)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (39, 37, 6)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (40, 37, 2)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (41, 38, 6)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (42, 39, 4)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (43, 40, 4)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (44, 41, 7)
INSERT [dbo].[products_categories] ([id], [product_id], [category_id]) VALUES (45, 41, 4)
SET IDENTITY_INSERT [dbo].[products_categories] OFF
