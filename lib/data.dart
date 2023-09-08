import 'index/Category.dart'; // Import the Category model
import 'index/Products.dart';


List<Category> categories = [
  Category(id: 1, title: 'Category 1'),
  Category(id: 2, title: 'Category 2'),
  // Add more categories
];

List<Product> products = [
  Product(
    id: 1,
    title: 'Woven Floor Vase.',
    description: 'BOHEMIAN THEME: A boho inspired style that exudes creative form with a free-spirited design, MADE WITH BAMBOO : Natural cylinder vase is made from solid bamboo material for a unique woven design, WHITE METAL FINISH : Features a distressed white finish, FEATURES CYLINDER VASE : Transform your natural, modern, and contemporary living spaces with the addition of this stunning white bamboo vase, LARGE SIZE: Item measures 30.00" x 8.50" x 8.60", and weighs 3.25 lbs',
    price: 52.69,
    imageUrl: 'https://m.media-amazon.com/images/I/91Kaln27NwL._AC_SX522_.jpg',
    CategoryId: 1,
    isFavourite: true
     // Associate this product with a category
  ),

  Product(
    id: 2,
    title: 'Ceramic Vase',
    description: 'ECLECTIC THEME: Express your personality with eclectic design and transform your space into a diverse mixture of colors and patterns, MADE OF STONEWARE: Durable and watertight vase made from pure stoneware, GRAY POLISHED FINISH: Our vase features a semi gloss polished gray finish with a textured surface, FEATURES CYLINDER VASE: Durable and watertight vase made from pure stoneware with a tall round cylinder vase crafted with an assortment of geometrical-inspired patterns & shapes,CONVENIENTLY SIZED: Item measures 6"D x 22"H tall and weighs 7 lbs',
    price: 39,
    imageUrl: 'https://m.media-amazon.com/images/I/91hX+1x0tZL._AC_SX522_.jpg',
    CategoryId: 1,
    isFavourite: true
     // Associate this product with a category
  ),

  Product(
    id: 3,
    title: 'Flower Vase',
    description: 'VASE SET OF 2 GLASS VASES: There is a LARGE GLASS VASE and a SMALL GLASS VASE of this flower pots set planter terrariums set glass vases for flowers gold vases rose gold vase set. HAND-MADE glass vase with metal vase stand, which shows noble quality of PuTwo vase vases flower vase glass vase glass vases for flowers planter terrariums. At the same time, PuTwo cylinder vase vases for decor glass vases vase set is resistant to high temperatures and low temperatures and is also easy to clean',
    price: 19.99,
    imageUrl: 'https://m.media-amazon.com/images/I/71rkbj2sDjL.__AC_SX300_SY300_QL70_FMwebp_.jpg',
    CategoryId: 1, 
    isFavourite: false,
   // Associate this product with a category
  ),

   Product(
    id: 4,
    title: 'Table Lamp',
    description: 'Product Dimensions: 14-in x 14-in x 23-in, Transitional table lamp infuses an earthy, organic vibe, BULB NOT INCLUDED: requires standrd E26 bulb max 100W, LED compatible, 3-Way Rotary switch; 60-in cord, Minimal assembly: must attach finial, harp and shade. Dust or wipe with a soft dry cloth, do not use abrasive cleaners.',
    price: 85,
    imageUrl: 'https://m.media-amazon.com/images/I/816RiYhkfcL._AC_SX425_.jpg',
    CategoryId: 1, 
    isFavourite: false,
   // Associate this product with a category
  ),

   Product(
    id: 5,
    title: 'Round Accent Table',
    description: 'TRADITIONAL THEME: A classic and timeless style of design for your traditional home setting, MADE WITH ALUMINIUM: A small accent table crafted of solid aluminum material for a lightweight feel, SILVER POLISHED FINISH: Round side table for living room sports a silver finish that brings an elegant look to any room,FEATURES ROUND ACCENT TABLE: Round silver metal accent table features serpentine tripod base with a smooth polished top for immaculate display, CONVENIENTLY SIZED: This living room side table measures 15”D x 22”H and weighs 8.65 lbs',
    price: 56.59,
    imageUrl: 'https://m.media-amazon.com/images/I/81JvoP2-hEL._AC_SX522_.jpg',
    CategoryId: 1, 
    isFavourite: false,
   // Associate this product with a category
  ),

   Product(
    id: 6,
    title: 'LED Nightstand Bedside Table ',
    description: 'Nightstand with LED Lights: Our night stand features built-in LED lights with a variety of color options, eliminating the need for additional night lights while providing convenient illumination to meet your nighttime needs. The soft and adjustable lighting creates a cozy and relaxed atmosphere, High-Quality Craftsmanship: Made from durable and high-quality MDF material, this end table is sturdy and long-lasting, ensuring years of use. Additionally, the smooth surface of the tabletop is easy to clean and maintain with just a damp cloth.',
    price: 99.99 ,
    imageUrl: 'https://m.media-amazon.com/images/I/814zKpjxJjL._AC_SX425_.jpg',
    CategoryId: 1, 
    isFavourite: false,
   // Associate this product with a category
  ),

  Product(
    id: 7,
    title: 'Bluetooth Earbuds',
    description: 'OPTIMAL PERFORMANCE — Customizable equalizer and bass boost for powerful sound. Use only one earbud with Mono Mode. Each earbud offers up to 7 hours battery; up to 28 hours of battery life total with the case and fast-charge, SEAMLESS CONNECTION VIA BLUETOOTH 5.2. — Connect your Android phone with Google Fast Pair, quickly play your songs with Spotify Tap Playback or ask Alexa (Android 6.0 or higher), Siri or Google Assistant whilst on-the-run.',
    price: 79.99,
    imageUrl: 'https://m.media-amazon.com/images/I/411NxOSWI5L._AC_UY218_.jpg',
    CategoryId: 3, 
    isFavourite: true,
   // Associate this product with a category
  ),

  Product(
    id: 8,
    title: 'Lenovo Tab',
    description: 'Safer Screen Time: The Lenovo Tab M8 (4th Gen) is TÜV Eye Care Certified. It protects sensitive eyes by reducing harmful blue light emissions. Turn on Reading Mode for a more realistic and immersive reading experience that lets you read for longer, Greater Peace of Mind: Safeguard yourself and your family with a privacy dashboard that lets you manage your privacy permission accesses. Know when your camera and microphone is on through the camera and microphone indicator for greater peace of mind.',
    price: 78.99,
    imageUrl: 'https://m.media-amazon.com/images/I/61e2XEOJLGL._AC_SX425_.jpg',
    CategoryId: 3, 
    isFavourite: false,
   // Associate this product with a category
  ),

  Product(
    id: 9,
    title: 'SAMSUNG Galaxy Buds',
    description: 'OUND THAT ROCKS: The AKG-tuned 12mm speaker and enhanced bass tone play everything in studio-quality sound.Note : If the size of the earbud tips does not match the size of your ear canals or the headset is not worn properly in your ears, you may not obtain the correct sound qualities or call performance. Change the earbud tips to ones that fit more snugly in your ear.Battery Capacity - Typical Usage Time (Hours) : 6 Hours, Talk Time : 4.5 Hours..Speed Charge : Yes. Talk Time : 4.5 Hours.',
    price: 87.99,
    imageUrl: 'https://m.media-amazon.com/images/I/41++0n6cDXL._AC_UY218_.jpg',
    CategoryId: 3, 
    isFavourite: false,
   // Associate this product with a category
  ),


  Product(
    id: 10,
    title: 'Security Camera for Baby Monitor',
    description: '【Works w/ Alexa & Google Assistant】Fully compatible with Amazon Alexa and Google Assistant, use your simple voice command to view Tapo indoor security camera live stream on Echo Show or Google Chrome Cast with a screen. Easily get your home security footage up on a larger TV display.',
    price: 27.99,
    imageUrl: 'https://m.media-amazon.com/images/I/61axT2Q1KTL._AC_UY218_.jpg',
    CategoryId: 3, 
    isFavourite: true,
   // Associate this product with a category
  ),

  Product(
    id: 11,
    title: 'Digital Camera',
    description: '40X Optical Zoom - 24mm Wide Angle Lens, 20 Megapixel CMOS Sensor, 1080P Full HD Video - Vlogging Camera, SD Card Compatibility: At least Class 10, no larger than 512GB (SD, SDHC, SDXC)3", LCD Screen - Optical Image Stabilization (OIS) - AA Batteries',
    price: 569,
    imageUrl: 'https://m.media-amazon.com/images/I/71W1KvLH3sL._AC_UL320_.jpg',
    CategoryId: 3, 
    isFavourite: true,
   // Associate this product with a category
  ),

  Product(
    id: 12,
    title: 'Sony Speaker',
    description: 'Massive 4" Drivers – Arena 3 uses an organic fiber cone to accurately output a full range of crystal-clear highs, vibrant mids, and powerful lows with a front-firing bass port for total gaming immersion, Easy Connectivity – PC wired, Aux, and wired headset support allow wide compatibility to enjoy rich sound with your devices.',
    price: 87,
    imageUrl: 'https://m.media-amazon.com/images/I/71SkRGw+cKL._AC_UY218_.jpg',
    CategoryId: 3, 
    isFavourite: false,
   // Associate this product with a category
  ),

  Product(
    id: 13,
    title: 'Pringles Potato Chips',
    description: 'Lunch Snacks, On-the-Go Snacks, Snack Stacks, Variety Pack, 19.3oz Box (27 Cups)​​',
    price: 2,
    imageUrl: 'https://m.media-amazon.com/images/I/71BTHs3-FYL._SX569_.jpg',
    CategoryId: 2, 
    isFavourite: true,
   // Associate this product with a category
  ),

  Product(
    id: 14,
    title: 'Chocolate Gold Gift Box',
    description: 'Godiva Chocolatier Assorted Chocolate Gold Gift Box, 8 Count, 3.3 ounces',
    price: 5,
    imageUrl: 'https://m.media-amazon.com/images/I/61C0SQqiCmL._SX569_.jpg',
    CategoryId: 2, 
    isFavourite: false,
   // Associate this product with a category
  ),


  Product(
    id: 15,
    title: 'Dark Chocolate Bar',
    description: 'Endangered Species Dark Chocolate Bar w/Sea Salt & Almonds (72% cocoa)',
    price: 10.99,
    imageUrl: 'https://m.media-amazon.com/images/I/41NGcPzgT7L._PIbundle-12,TopRight,0,0_AA512SH20_.jpg',
    CategoryId: 2, 
    isFavourite: true,
   // Associate this product with a category
  ),


  Product(
    id: 16,
    title: 'KitKat Dark',
    description: 'Item Form	Bar, Chocolate Type	Dark, Unit Count	4.00 Count, Number of Pieces	4,Package Type	Box',
    price: 99.9,
    imageUrl: 'https://m.media-amazon.com/images/I/81gEVc9Um5L._SX679_.jpg',
    CategoryId: 2, 
    isFavourite: false,
   // Associate this product with a category
  ),


  Product(
    id: 17,
    title: 'ORLANE PARIS',
    description: 'ORLANE PARIS B21 Extraordinaire Box',
    price: 370.00,
    imageUrl: 'https://m.media-amazon.com/images/I/81n3QOLSLKL._SX522_.jpg',
    CategoryId: 2, 
    isFavourite: true,
   // Associate this product with a category
  ),

  Product(
    id: 18,
    title: 'Velvet Musk Perfume',
    description: 'Experience the enchanting aroma of our White Peony, Sage, and Velvet Musk fragrance. With a delicate blend of floral and earthy notes, this scent is both refreshing and soothing. The crisp and floral White Peony is balanced with the herbaceous Sage, while the warm and velvety Musk adds a touch of luxury. Perfect for any occasion, our White Peony, Sage, and Velvet Musk fragrance is sure to leave you feeling refreshed and rejuvenated.',
    price: 55.99,
    imageUrl: 'https://m.media-amazon.com/images/I/5183KRIg2TL._SX425_.jpg',
    CategoryId: 2, 
    isFavourite: true,
   // Associate this product with a category
  ),
  // Add more products with different categories
];
