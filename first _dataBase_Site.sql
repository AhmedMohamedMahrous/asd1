-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2019 at 11:34 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `first`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `department_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'French', 'The French have always had an eye for beauty. One look at the T-shirts below and you\'ll see that same appreciation has been applied abundantly to their postage stamps. Below are some of our most beautiful and colorful T-shirts, so browse away! And don\'t forget to go all the way to the bottom - you don\'t want to miss any of them!', NULL, NULL),
(2, 1, 'Italian', 'The full and resplendent treasure chest of art, literature, music, and science that Italy has given the world is reflected splendidly in its postal stamps. If we could, we would dedicate hundreds of T-shirts to this amazing treasure of beautiful images, but for now we will have to live with what you see here. You don\'t have to be Italian to love these gorgeous T-shirts, just someone who appreciates the finer things in life!', NULL, NULL),
(3, 1, 'Irish', 'It was Churchill who remarked that he thought the Irish most curious because they didn\'t want to be English. How right he was! But then, he was half-American, wasn\'t he? If you have an Irish genealogy you will want these T-shirts! If you suddenly turn Irish on St. Patrick\'s Day, you too will want these T-shirts! Take a look at some of the coolest T-shirts we have!', NULL, NULL),
(4, 2, 'Animal', ' Our ever-growing selection of beautiful animal T-shirts represents critters from everywhere, both wild and domestic. If you don\'t see the T-shirt with the animal you\'re looking for, tell us and we\'ll find it!', NULL, NULL),
(5, 2, 'Flower', 'These unique and beautiful flower T-shirts are just the item for the gardener, flower arranger, florist, or general lover of things beautiful. Surprise the flower in your life with one of the beautiful botanical T-shirts or just get a few for yourself!', NULL, NULL),
(6, 3, 'Christmas', ' Because this is a unique Christmas T-shirt that you\'ll only wear a few times a year, it will probably last for decades (unless some grinch nabs it from you, of course). Far into the future, after you\'re gone, your grandkids will pull it out and argue over who gets to wear it. What great snapshots they\'ll make dressed in Grandpa or Grandma\'s incredibly tasteful and unique Christmas T-shirt! Yes, everyone will remember you forever and what a silly goof you were when you would wear only your Santa beard and cap so you wouldn\'t cover up your nifty T-shirt.', NULL, NULL),
(7, 3, 'Valentine\'s', 'For the more timid, all you have to do is wear your heartfelt message to get it across. Buy one for you and your sweetie(s) today!', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Regional', 'Proud of your country? Wear a T-shirt with a national symbol stamp!', NULL, NULL),
(2, 'Nature', 'Find beautiful T-shirts with animals and flowers in our Nature department!', NULL, NULL),
(3, 'Seasonal', 'Each time of the year has a special flavor. Our seasonal T-shirts express traditional symbols using unique postal stamp pictures.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_07_04_122038_create_departments_table', 1),
(10, '2019_07_04_122233_create_categories_table', 1),
(11, '2019_07_04_124519_create_products_table', 1),
(12, '2019_07_04_124856_create_product_category_table', 1),
(13, '2019_07_04_211016_create_reviews_table', 2),
(15, '2019_07_05_120023_add_img_to_users_table', 3),
(16, '2019_07_07_160351_add_is_admin_to_users_table', 4),
(23, '2019_07_08_080345_create_shopping_carts_table', 5),
(24, '2019_07_08_080950_create_orders_table', 5),
(25, '2019_07_15_102449_add_ordered_to_table_shopping_carts', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `total_amount` decimal(8,2) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `total_amount`, `customer_id`, `shipping_id`, `created_at`, `updated_at`) VALUES
(1, '31.94', 1, 1562601758, '2019-07-08 14:02:38', '2019-07-08 14:02:38'),
(2, '31.94', 1, 1562601820, '2019-07-08 14:03:40', '2019-07-08 14:03:40'),
(3, '50.89', 1, 1563223196, '2019-07-15 18:39:56', '2019-07-15 18:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `discounted_price` decimal(8,2) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` int(11) NOT NULL DEFAULT 0,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `discounted_price`, `img`, `img_2`, `display`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 'Arc d\'Triomphe', 'This beautiful and iconic T-shirt will no doubt lead you to your own triumph.', '14.99', '0.00', 'arc-d-triomphe.gif', 'arc-d-triomphe-2.gif', 0, 'arc-d-triomphe-thumbnail.gif', NULL, NULL),
(3, 'Coat of Arms', 'There\'s good reason why the ship plays a prominent part on this shield!', '14.50', '0.00', 'coat-of-arms.gif', 'coat-of-arms-2.gif', 0, 'coat-of-arms-thumbnail.gif', NULL, NULL),
(4, 'Gallic Cock', 'This fancy chicken is perhaps the most beloved of all French symbols. Unfortunately, there are only a few hundred left, so you\'d better get your T-shirt now!', '18.99', '16.99', 'gallic-cock.gif', 'gallic-cock-2.gif', 2, 'gallic-cock-thumbnail.gif', NULL, NULL),
(5, 'Marianne', 'She symbolizes the \"Triumph of the Republic\" and has been depicted many different ways in the history of France, as you will see below!', '15.95', '14.95', 'marianne.gif', 'marianne-2.gif', 2, 'marianne-thumbnail.gif', NULL, NULL),
(6, 'Alsace', 'It was in this region of France that Gutenberg perfected his movable type. If he could only see what he started!', '16.50', '0.00', 'alsace.gif', 'alsace-2.gif', 0, 'alsace-thumbnail.gif', NULL, NULL),
(7, 'Apocalypse Tapestry', 'One of the most famous tapestries of the Loire Valley, it dates from the 14th century. The T-shirt is of more recent vintage, however.', '20.00', '18.95', 'apocalypse-tapestry.gif', 'apocalypse-tapestry-2.gif', 3, 'apocalypse-tapestry-thumbnail.gif', NULL, NULL),
(8, 'Centaur', 'There were never any lady centaurs, so these guys had to mate with nymphs and mares. No wonder they were often in such bad moods!', '14.99', '0.00', 'centaur.gif', 'centaur-2.gif', 0, 'centaur-thumbnail.gif', NULL, NULL),
(9, 'Corsica', 'Borrowed from Spain, the \"Moor\'s head\" may have celebrated the Christians\' victory over the Moslems in that country.', '22.00', '0.00', 'corsica.gif', 'corsica-2.gif', 3, 'corsica-thumbnail.gif', NULL, NULL),
(10, 'Haute Couture', 'This stamp publicized the dress making industry. Use it to celebrate the T-shirt industry!', '15.99', '14.95', 'haute-couture.gif', 'haute-couture-2.gif', 3, 'haute-couture-thumbnail.gif', NULL, NULL),
(11, 'Iris', 'Iris was the Goddess of the Rainbow, daughter of the Titans Thaumas and Electra. Are you up to this T-shirt?!', '17.50', '0.00', 'iris.gif', 'iris-2.gif', 0, 'iris-thumbnail.gif', NULL, NULL),
(12, 'Lorraine', 'The largest American cemetery in France is located in Lorraine and most of the folks there still appreciate that fact.', '16.95', '0.00', 'lorraine.gif', 'lorraine-2.gif', 0, 'lorraine-thumbnail.gif', NULL, NULL),
(13, 'Mercury', 'Besides being the messenger of the gods, did you know that Mercury was also the god of profit and commerce? This T-shirt is for business owners!', '21.99', '18.95', 'mercury.gif', 'mercury-2.gif', 2, 'mercury-thumbnail.gif', NULL, NULL),
(14, 'County of Nice', 'Nice is so nice that it has been fought over for millennia, but now it all belongs to France.', '12.95', '0.00', 'county-of-nice.gif', 'county-of-nice-2.gif', 0, 'county-of-nice-thumbnail.gif', NULL, NULL),
(15, 'Notre Dame', 'Commemorating the 800th anniversary of the famed cathedral.', '18.50', '16.99', 'notre-dame.gif', 'notre-dame-2.gif', 2, 'notre-dame-thumbnail.gif', NULL, NULL),
(16, 'Paris Peace Conference', 'The resulting treaties allowed Italy, Romania, Hungary, Bulgaria, and Finland to reassume their responsibilities as sovereign states in international affairs and thus qualify for membership in the UN.', '16.95', '15.99', 'paris-peace-conference.gif', 'paris-peace-conference-2.gif', 2, 'paris-peace-conference-thumbnail.gif', NULL, NULL),
(17, 'Sarah Bernhardt', 'The \"Divine Sarah\" said this about Americans: \"You are younger than we as a race, you are perhaps barbaric, but what of it? You are still in the molding. Your spirit is superb. It is what helped us win the war.\" Perhaps we\'re still barbaric but we\'re still winning wars for them too!', '14.99', '0.00', 'sarah-bernhardt.gif', 'sarah-bernhardt-2.gif', 0, 'sarah-bernhardt-thumbnail.gif', NULL, NULL),
(18, 'Hunt', 'A scene from \"Les Tres Riches Heures,\" a medieval \"book of hours\" containing the text for each liturgical hour of the day. This scene is from a 14th century painting.', '16.99', '15.95', 'hunt.gif', 'hunt-2.gif', 2, 'hunt-thumbnail.gif', NULL, NULL),
(19, 'Italia', 'The War had just ended when this stamp was designed, and even so, there was enough optimism to show the destroyed oak tree sprouting again from its stump! What a beautiful T-shirt!', '22.00', '18.99', 'italia.gif', 'italia-2.gif', 2, 'italia-thumbnail.gif', NULL, NULL),
(20, 'Torch', 'The light goes on! Carry the torch with this T-shirt and be a beacon of hope for the world!', '19.99', '17.95', 'torch.gif', 'torch-2.gif', 2, 'torch-thumbnail.gif', NULL, NULL),
(21, 'Espresso', 'The winged foot of Mercury speeds the Special Delivery mail to its destination. In a hurry? This T-shirt is for you!', '16.95', '0.00', 'espresso.gif', 'espresso-2.gif', 0, 'espresso-thumbnail.gif', NULL, NULL),
(22, 'Galileo', 'This beautiful T-shirt does honor to one of Italy\'s (and the world\'s) most famous scientists. Show your appreciation for the education you\'ve received!', '14.99', '0.00', 'galileo.gif', 'galileo-2.gif', 0, 'galileo-thumbnail.gif', NULL, NULL),
(23, 'Italian Airmail', 'Thanks to modern Italian post, folks were able to reach out and touch each other. Or at least so implies this image. This is a very fast and friendly T-shirt--you\'ll make friends with it!', '21.00', '17.99', 'italian-airmail.gif', 'italian-airmail-2.gif', 0, 'italian-airmail-thumbnail.gif', NULL, NULL),
(24, 'Mazzini', 'Giuseppe Mazzini is considered one of the patron saints of the \"Risorgimiento.\" Wear this beautiful T-shirt to tell the world you agree!', '20.50', '18.95', 'mazzini.gif', 'mazzini-2.gif', 2, 'mazzini-thumbnail.gif', NULL, NULL),
(25, 'Romulus & Remus', 'Back in 753 BC, so the story goes, Romulus founded the city of Rome (in competition with Remus, who founded a city on another hill). Their adopted mother is shown in this image. When did they suspect they were adopted?', '17.99', '16.95', 'romulus-remus.gif', 'romulus-remus-2.gif', 2, 'romulus-remus-thumbnail.gif', NULL, NULL),
(26, 'Italy Maria', 'This beautiful image of the Virgin is from a work by Raphael, whose life and death it honors. It is one of our most popular T-shirts!', '14.00', '0.00', 'italy-maria.gif', 'italy-maria-2.gif', 0, 'italy-maria-thumbnail.gif', NULL, NULL),
(27, 'Italy Jesus', 'This image of Jesus teaching the gospel was issued to commemorate the third centenary of the \"propagation of the faith.\" Now you can do your part with this T-shirt!', '16.95', '0.00', 'italy-jesus.gif', 'italy-jesus-2.gif', 0, 'italy-jesus-thumbnail.gif', NULL, NULL),
(28, 'St. Francis', 'Here St. Francis is receiving his vision. This dramatic and attractive stamp was issued on the 700th anniversary of that event.', '22.00', '18.99', 'st-francis.gif', 'st-francis-2.gif', 2, 'st-francis-thumbnail.gif', NULL, NULL),
(29, 'Irish Coat of Arms', 'This was one of the first stamps of the new Irish Republic, and it makes a T-shirt you\'ll be proud to wear on St. Paddy\'s Day!', '14.99', '0.00', 'irish-coat-of-arms.gif', 'irish-coat-of-arms-2.gif', 3, 'irish-coat-of-arms-thumbnail.gif', NULL, NULL),
(30, 'Easter Rebellion', 'The Easter Rebellion of 1916 was a defining moment in Irish history. Although only a few hundred participated and the British squashed it in a week, its leaders were executed, which galvanized the uncommitted.', '19.00', '16.95', 'easter-rebellion.gif', 'easter-rebellion-2.gif', 2, 'easter-rebellion-thumbnail.gif', NULL, NULL),
(31, 'Guiness', 'Class! Who is this man and why is he important enough for his own T-shirt?!', '15.00', '0.00', 'guiness.gif', 'guiness-2.gif', 0, 'guiness-thumbnail.gif', NULL, NULL),
(32, 'St. Patrick', 'This stamp commemorated the 1500th anniversary of the revered saint\'s death. Is there a more perfect St. Patrick\'s Day T-shirt?!', '20.50', '17.95', 'st-patrick.gif', 'st-patrick-2.gif', 0, 'st-patrick-thumbnail.gif', NULL, NULL),
(33, 'St. Peter', 'This T-shirt commemorates the holy year of 1950.', '16.00', '14.95', 'st-peter.gif', 'st-peter-2.gif', 2, 'st-peter-thumbnail.gif', NULL, NULL),
(34, 'Sword of Light', 'This was the very first Irish postage stamp, and what a beautiful and cool T-shirt it makes for the Irish person in your life!', '14.99', '0.00', 'sword-of-light.gif', 'sword-of-light-2.gif', 0, 'sword-of-light-thumbnail.gif', NULL, NULL),
(35, 'Thomas Moore', 'One of the greatest if not the greatest of Irish poets and writers, Moore led a very interesting life, though plagued with tragedy in a somewhat typically Irish way. Remember \"The Last Rose of Summer\"?', '15.95', '14.99', 'thomas-moore.gif', 'thomas-moore-2.gif', 2, 'thomas-moore-thumbnail.gif', NULL, NULL),
(36, 'Visit the Zoo', 'This WPA poster is a wonderful example of the art produced by the Works Projects Administration during the Depression years. Do you feel like you sometimes live or work in a zoo? Then this T-shirt is for you!', '20.00', '16.95', 'visit-the-zoo.gif', 'visit-the-zoo-2.gif', 2, 'visit-the-zoo-thumbnail.gif', NULL, NULL),
(37, 'Sambar', 'This handsome Malayan Sambar was a pain in the neck to get to pose like this, and all so you could have this beautiful retro animal T-shirt!', '19.00', '17.99', 'sambar.gif', 'sambar-2.gif', 2, 'sambar-thumbnail.gif', NULL, NULL),
(38, 'Buffalo', 'Of all the critters in our T-shirt zoo, this is one of our most popular. A classic animal T-shirt for an individual like yourself!', '14.99', '0.00', 'buffalo.gif', 'buffalo-2.gif', 0, 'buffalo-thumbnail.gif', NULL, NULL),
(39, 'Mustache Monkey', 'This fellow is more than equipped to hang out with that tail of his, just like you\'ll be fit for hanging out with this great animal T-shirt!', '20.00', '17.95', 'mustache-monkey.gif', 'mustache-monkey-2.gif', 2, 'mustache-monkey-thumbnail.gif', NULL, NULL),
(40, 'Colobus', 'Why is he called \"Colobus,\" \"the mutilated one\"? He doesn\'t have a thumb, just four fingers! He is far from handicapped, however; his hands make him the great swinger he is. Speaking of swinging, that\'s what you\'ll do with this beautiful animal T-shirt!', '17.00', '15.99', 'colobus.gif', 'colobus-2.gif', 2, 'colobus-thumbnail.gif', NULL, NULL),
(41, 'Canada Goose', 'Being on a major flyway for these guys, we know all about these majestic birds. They hang out in large numbers on a lake near our house and fly over constantly. Remember what Frankie Lane said? \"I want to go where the wild goose goes!\" And when you go, wear this cool Canada goose animal T-shirt.', '15.99', '0.00', 'canada-goose.gif', 'canada-goose-2.gif', 0, 'canada-goose-thumbnail.gif', NULL, NULL),
(42, 'Congo Rhino', 'Among land mammals, this white rhino is surpassed in size only by the elephant. He has a big fan base too, working hard to make sure he sticks around. You\'ll be a fan of his, too, when people admire this unique and beautiful T-shirt on you!', '20.00', '18.99', 'congo-rhino.gif', 'congo-rhino-2.gif', 2, 'congo-rhino-thumbnail.gif', NULL, NULL),
(43, 'Equatorial Rhino', 'There\'s a lot going on in this frame! A black rhino is checking out that python slithering off into the bush--or is he eyeing you? You can bet all eyes will be on you when you wear this T-shirt!', '19.95', '17.95', 'equatorial-rhino.gif', 'equatorial-rhino-2.gif', 2, 'equatorial-rhino-thumbnail.gif', NULL, NULL),
(44, 'Ethiopian Rhino', 'Another white rhino is honored in this classic design that bespeaks the Africa of the early century. This pointillist and retro T-shirt will definitely turn heads!', '16.00', '0.00', 'ethiopian-rhino.gif', 'ethiopian-rhino-2.gif', 3, 'ethiopian-rhino-thumbnail.gif', NULL, NULL),
(45, 'Dutch Sea Horse', 'I think this T-shirt is destined to be one of our most popular simply because it is one of our most beautiful!', '12.50', '0.00', 'dutch-sea-horse.gif', 'dutch-sea-horse-2.gif', 0, 'dutch-sea-horse-thumbnail.gif', NULL, NULL),
(46, 'Dutch Swans', 'This stamp was designed in the middle of the Nazi occupation, as was the one above. Together they reflect a spirit of beauty that evil could not suppress. Both of these T-shirts will make it impossible to suppress your artistic soul, too!', '21.00', '18.99', 'dutch-swans.gif', 'dutch-swans-2.gif', 2, 'dutch-swans-thumbnail.gif', NULL, NULL),
(47, 'Ethiopian Elephant', 'From the same series as the Ethiopian Rhino and the Ostriches, this stylish elephant T-shirt will mark you as a connoisseur of good taste!', '18.99', '16.95', 'ethiopian-elephant.gif', 'ethiopian-elephant-2.gif', 2, 'ethiopian-elephant-thumbnail.gif', NULL, NULL),
(48, 'Laotian Elephant', 'This working guy is proud to have his own stamp, and now he has his own T-shirt!', '21.00', '18.99', 'laotian-elephant.gif', 'laotian-elephant-2.gif', 0, 'laotian-elephant-thumbnail.gif', NULL, NULL),
(49, 'Liberian Elephant', 'And yet another Jumbo! You need nothing but a big heart to wear this T-shirt (or a big sense of style)!', '22.00', '17.50', 'liberian-elephant.gif', 'liberian-elephant-2.gif', 2, 'liberian-elephant-thumbnail.gif', NULL, NULL),
(50, 'Somali Ostriches', 'Another in an old series of beautiful stamps from Ethiopia. These big birds pack quite a wallop, and so will you when you wear this uniquely retro T-shirt!', '12.95', '0.00', 'somali-ostriches.gif', 'somali-ostriches-2.gif', 0, 'somali-ostriches-thumbnail.gif', NULL, NULL),
(51, 'Tankanyika Giraffe', 'The photographer had to stand on a step ladder for this handsome portrait, but his efforts paid off with an angle we seldom see of this lofty creature. This beautiful retro T-shirt would make him proud!', '15.00', '12.99', 'tankanyika-giraffe.gif', 'tankanyika-giraffe-2.gif', 3, 'tankanyika-giraffe-thumbnail.gif', NULL, NULL),
(52, 'Ifni Fish', 'This beautiful stamp was issued to commemorate National Colonial Stamp Day (you can do that when you have a colony). When you wear this fancy fish T-shirt, your friends will think it\'s national T-shirt day!', '14.00', '0.00', 'ifni-fish.gif', 'ifni-fish-2.gif', 0, 'ifni-fish-thumbnail.gif', NULL, NULL),
(53, 'Sea Gull', 'A beautiful stamp from a small enclave in southern Morocco that belonged to Spain until 1969 makes a beautiful bird T-shirt.', '19.00', '16.95', 'sea-gull.gif', 'sea-gull-2.gif', 2, 'sea-gull-thumbnail.gif', NULL, NULL),
(54, 'King Salmon', 'You can fish them and eat them and now you can wear them with this classic animal T-shirt.', '17.95', '15.99', 'king-salmon.gif', 'king-salmon-2.gif', 2, 'king-salmon-thumbnail.gif', NULL, NULL),
(55, 'Laos Bird', 'This fellow is also known as the \"White Crested Laughing Thrush.\" What\'s he laughing at? Why, at the joy of being on your T-shirt!', '12.00', '0.00', 'laos-bird.gif', 'laos-bird-2.gif', 0, 'laos-bird-thumbnail.gif', NULL, NULL),
(56, 'Mozambique Lion', 'The Portuguese were too busy to run this colony themselves so they gave the Mozambique Company a charter to do it. I think there must be some pretty curious history related to that (the charter only lasted for 50 years)! If you\'re a Leo, or know a Leo, you should seriously consider this T-shirt!', '15.99', '14.95', 'mozambique-lion.gif', 'mozambique-lion-2.gif', 2, 'mozambique-lion-thumbnail.gif', NULL, NULL),
(57, 'Peru Llama', 'This image is nearly 100 years old! Little did this little llama realize that he was going to be made immortal on the Web and on this very unique animal T-shirt (actually, little did he know at all)!', '21.50', '17.99', 'peru-llama.gif', 'peru-llama-2.gif', 2, 'peru-llama-thumbnail.gif', NULL, NULL),
(58, 'Romania Alsatian', 'If you know and love this breed, there\'s no reason in the world that you shouldn\'t buy this T-shirt right now!', '15.95', '0.00', 'romania-alsatian.gif', 'romania-alsatian-2.gif', 0, 'romania-alsatian-thumbnail.gif', NULL, NULL),
(59, 'Somali Fish', 'This is our most popular fish T-shirt, hands down. It\'s a beauty, and if you wear this T-shirt, you\'ll be letting the world know you\'re a fine catch!', '19.95', '16.95', 'somali-fish.gif', 'somali-fish-2.gif', 2, 'somali-fish-thumbnail.gif', NULL, NULL),
(60, 'Trout', 'This beautiful image will warm the heart of any fisherman! You must know one if you\'re not one yourself, so you must buy this T-shirt!', '14.00', '0.00', 'trout.gif', 'trout-2.gif', 3, 'trout-thumbnail.gif', NULL, NULL),
(61, 'Baby Seal', 'Ahhhhhh! This little harp seal would really prefer not to be your coat! But he would like to be your T-shirt!', '21.00', '18.99', 'baby-seal.gif', 'baby-seal-2.gif', 2, 'baby-seal-thumbnail.gif', NULL, NULL),
(62, 'Musk Ox', 'Some critters you just don\'t want to fool with, and if I were facing this fellow I\'d politely give him the trail! That is, of course, unless I were wearing this T-shirt.', '15.50', '0.00', 'musk-ox.gif', 'musk-ox-2.gif', 0, 'musk-ox-thumbnail.gif', NULL, NULL),
(63, 'Suvla Bay', ' In 1915, Newfoundland sent its Newfoundland Regiment to Suvla Bay in Gallipoli to fight the Turks. This classic image does them honor. Have you ever heard of them? Share the news with this great T-shirt!', '12.99', '0.00', 'suvla-bay.gif', 'suvla-bay-2.gif', 0, 'suvla-bay-thumbnail.gif', NULL, NULL),
(64, 'Caribou', 'There was a time when Newfoundland was a self-governing dominion of the British Empire, so it printed its own postage. The themes are as typically Canadian as can be, however, as shown by this \"King of the Wilde\" T-shirt!', '21.00', '19.95', 'caribou.gif', 'caribou-2.gif', 2, 'caribou-thumbnail.gif', NULL, NULL),
(65, 'Afghan Flower', 'This beautiful image was issued to celebrate National Teachers Day. Perhaps you know a teacher who would love this T-shirt?', '18.50', '16.99', 'afghan-flower.gif', 'afghan-flower-2.gif', 2, 'afghan-flower-thumbnail.gif', NULL, NULL),
(66, 'Albania Flower', 'Well, these crab apples started out as flowers, so that\'s close enough for us! They still make for a uniquely beautiful T-shirt.', '16.00', '14.95', 'albania-flower.gif', 'albania-flower-2.gif', 2, 'albania-flower-thumbnail.gif', NULL, NULL),
(67, 'Austria Flower', 'Have you ever had nasturtiums on your salad? Try it--they\'re almost as good as having them on your T-shirt!', '12.99', '0.00', 'austria-flower.gif', 'austria-flower-2.gif', 0, 'austria-flower-thumbnail.gif', NULL, NULL),
(68, 'Bulgarian Flower', 'For your interest (and to impress your friends), this beautiful stamp was issued to honor the George Dimitrov state printing works. You\'ll need to know this when you wear the T-shirt.', '16.00', '14.99', 'bulgarian-flower.gif', 'bulgarian-flower-2.gif', 2, 'bulgarian-flower-thumbnail.gif', NULL, NULL),
(69, 'Colombia Flower', 'Celebrating the 75th anniversary of the Universal Postal Union, a date to mark on your calendar and on which to wear this T-shirt!', '14.50', '12.95', 'colombia-flower.gif', 'colombia-flower-2.gif', 1, 'colombia-flower-thumbnail.gif', NULL, NULL),
(70, 'Congo Flower', 'The Congo is not at a loss for beautiful flowers, and we\'ve picked a few of them for your T-shirts.', '21.00', '17.99', 'congo-flower.gif', 'congo-flower-2.gif', 2, 'congo-flower-thumbnail.gif', NULL, NULL),
(71, 'Costa Rica Flower', 'This national flower of Costa Rica is one of our most beloved flower T-shirts (you can see one on Jill, above). You will surely stand out in this T-shirt!', '12.99', '0.00', 'costa-rica-flower.gif', 'costa-rica-flower.gif', 0, 'costa-rica-flower-thumbnail.gif', NULL, NULL),
(72, 'Gabon Flower', 'The combretum, also known as \"jungle weed,\" is used in China as a cure for opium addiction. Unfortunately, when you wear this T-shirt, others may become hopelessly addicted to you!', '19.00', '16.95', 'gabon-flower.gif', 'gabon-flower-2.gif', 2, 'gabon-flower-thumbnail.gif', NULL, NULL),
(73, 'Ghana Flower', 'This is one of the first gingers to bloom in the spring--just like you when you wear this T-shirt!', '21.00', '18.99', 'ghana-flower.gif', 'ghana-flower-2.gif', 2, 'ghana-flower-thumbnail.gif', NULL, NULL),
(74, 'Israel Flower', 'This plant is native to the rocky and sandy regions of the western United States, so when you come across one, it really stands out. And so will you when you put on this beautiful T-shirt!', '19.50', '17.50', 'israel-flower.gif', 'israel-flower-2.gif', 2, 'israel-flower-thumbnail.gif', NULL, NULL),
(75, 'Poland Flower', 'A beautiful and sunny T-shirt for both spring and summer!', '16.95', '15.99', 'poland-flower.gif', 'poland-flower-2.gif', 2, 'poland-flower-thumbnail.gif', NULL, NULL),
(76, 'Romania Flower', 'Also known as the spring pheasant\'s eye, this flower belongs on your T-shirt this summer to help you catch a few eyes.', '12.95', '0.00', 'romania-flower.gif', 'romania-flower-2.gif', 3, 'romania-flower-thumbnail.gif', NULL, NULL),
(77, 'Russia Flower', 'Someone out there who can speak Russian needs to tell me what this plant is. I\'ll sell you the T-shirt for $10 if you can!', '21.00', '18.95', 'russia-flower.gif', 'russia-flower-2.gif', 0, 'russia-flower-thumbnail.gif', NULL, NULL),
(78, 'San Marino Flower', '\"A white sport coat and a pink carnation, I\'m all dressed up for the dance!\" Well, how about a white T-shirt and a pink carnation?!', '19.95', '17.99', 'san-marino-flower.gif', 'san-marino-flower-2.gif', 2, 'san-marino-flower-thumbnail.gif', NULL, NULL),
(79, 'Uruguay Flower', 'The Indian Queen Anahi was the ugliest woman ever seen. But instead of living a slave when captured by the Conquistadores, she immolated herself in a fire and was reborn the most beautiful of flowers: the ceibo, national flower of Uruguay. Of course, you won\'t need to burn to wear this T-shirt, but you may cause some pretty hot glances to be thrown your way!', '17.99', '16.99', 'uruguay-flower.gif', 'uruguay-flower-2.gif', 2, 'uruguay-flower-thumbnail.gif', NULL, NULL),
(80, 'Snow Deer UP', 'Tarmo has produced some wonderful Christmas T-shirts for us, and we hope to have many more soon.', '21.00', '18.95', 'snow-deer.gif', 'snow-deer-2.gif', 2, 'snow-deer-thumbnail.gif', NULL, '2019-07-18 17:26:00'),
(81, 'Holly Cat', 'Few things make a cat happier at Christmas than a tree suddenly appearing in the house!', '15.99', '0.00', 'holly-cat.gif', 'holly-cat-2.gif', 0, 'holly-cat-thumbnail.gif', NULL, NULL),
(82, 'Christmas Seal', 'Is this your grandmother? It could be, you know, and I\'d bet she\'d recognize the Christmas seal on this cool Christmas T-shirt.', '19.99', '17.99', 'christmas-seal.gif', 'christmas-seal-2.gif', 2, 'christmas-seal-thumbnail.gif', NULL, NULL),
(83, 'Weather Vane', 'This weather vane dates from the 1830\'s and is still showing which way the wind blows! Trumpet your arrival with this unique Christmas T-shirt.', '15.95', '14.99', 'weather-vane.gif', 'weather-vane-2.gif', 2, 'weather-vane-thumbnail.gif', NULL, NULL),
(84, 'Mistletoe', 'This well-known parasite and killer of trees was revered by the Druids, who would go out and gather it with great ceremony. Youths would go about with it to announce the new year. Eventually more engaging customs were attached to the strange plant, and we\'re here to see that they continue with these cool Christmas T-shirts.', '19.00', '17.99', 'mistletoe.gif', 'mistletoe-2.gif', 3, 'mistletoe-thumbnail.gif', NULL, NULL),
(85, 'Altar Piece', 'This beautiful angel Christmas T-shirt is awaiting the opportunity to adorn your chest!', '20.50', '18.50', 'altar-piece.gif', 'altar-piece-2.gif', 2, 'altar-piece-thumbnail.gif', NULL, NULL),
(86, 'The Three Wise Men', 'This is a classic rendition of one of the season�s most beloved stories, and now showing on a Christmas T-shirt for you!', '12.99', '0.00', 'the-three-wise-men.gif', 'the-three-wise-men-2.gif', 0, 'the-three-wise-men-thumbnail.gif', NULL, NULL),
(87, 'Christmas Tree', 'Can you get more warm and folksy than this classic Christmas T-shirt?', '20.00', '17.95', 'christmas-tree.gif', 'christmas-tree-2.gif', 2, 'christmas-tree-thumbnail.gif', NULL, NULL),
(88, 'Madonna & Child', 'This exquisite image was painted by Filipino Lippi, a 15th century Italian artist. I think he would approve of it on a Going Postal Christmas T-shirt!', '21.95', '18.50', 'madonna-child.gif', 'madonna-child-2.gif', 0, 'madonna-child-thumbnail.gif', NULL, NULL),
(89, 'The Virgin Mary', 'This stained glass window is found in Glasgow Cathedral, Scotland, and was created by Gabriel Loire of France, one of the most prolific of artists in this medium--and now you can have it on this wonderful Christmas T-shirt.', '16.95', '15.95', 'the-virgin-mary.gif', 'the-virgin-mary-2.gif', 2, 'the-virgin-mary-thumbnail.gif', NULL, NULL),
(90, 'Adoration of the Kings', 'This design is from a miniature in the Evangelistary of Matilda in Nonantola Abbey, from the 12th century. As a Christmas T-shirt, it will cause you to be adored!', '17.50', '16.50', 'adoration-of-the-kings.gif', 'adoration-of-the-kings-2.gif', 2, 'adoration-of-the-kings-thumbnail.gif', NULL, NULL),
(91, 'A Partridge in a Pear Tree', 'The original of this beautiful stamp is by Jamie Wyeth and is in the National Gallery of Art. The next best is on our beautiful Christmas T-shirt!', '14.99', '0.00', 'a-partridge-in-a-pear-tree.gif', 'a-partridge-in-a-pear-tree-2.gif', 3, 'a-partridge-in-a-pear-tree-thumbnail.gif', NULL, NULL),
(92, 'St. Lucy', 'This is a tiny detail of a large work called \"Mary, Queen of Heaven,\" done in 1480 by a Flemish master known only as \"The Master of St. Lucy Legend.\" The original is in a Bruges church. The not-quite-original is on this cool Christmas T-shirt.', '18.95', '0.00', 'st-lucy.gif', 'st-lucy-2.gif', 0, 'st-lucy-thumbnail.gif', NULL, NULL),
(93, 'St. Lucia', 'Saint Lucia\'s tradition is an important part of Swedish Christmas, and an important part of that are the candles. Next to the candles in importance is this popular Christmas T-shirt!', '19.00', '17.95', 'st-lucia.gif', 'st-lucia-2.gif', 2, 'st-lucia-thumbnail.gif', NULL, NULL),
(94, 'Swede Santa', 'Santa as a child. You must know a child who would love this cool Christmas T-shirt!?', '21.00', '18.50', 'swede-santa.gif', 'swede-santa-2.gif', 2, 'swede-santa-thumbnail.gif', NULL, NULL),
(95, 'Wreath', 'Hey! I\'ve got an idea! Why not buy two of these cool Christmas T-shirts so you can wear one and tack the other one to your door?!', '18.99', '16.99', 'wreath.gif', 'wreath-2.gif', 2, 'wreath-thumbnail.gif', NULL, NULL),
(96, 'Love', 'Here\'s a Valentine\'s day T-shirt that will let you say it all in just one easy glance--there\'s no mistake about it!', '19.00', '17.50', 'love.gif', 'love-2.gif', 2, 'love-thumbnail.gif', NULL, NULL),
(97, 'Birds', 'Is your heart all aflutter? Show it with this T-shirt!', '21.00', '18.95', 'birds.gif', 'birds-2.gif', 2, 'birds-thumbnail.gif', NULL, NULL),
(98, 'Kat Over New Moon', 'Love making you feel lighthearted?', '14.99', '0.00', 'kat-over-new-moon.gif', 'kat-over-new-moon-2.gif', 0, 'kat-over-new-moon-thumbnail.gif', NULL, NULL),
(99, 'Thrilling Love', 'This girl\'s got her hockey hunk right where she wants him!', '21.00', '18.50', 'thrilling-love.gif', 'thrilling-love-2.gif', 2, 'thrilling-love-thumbnail.gif', NULL, NULL),
(100, 'The Rapture of Psyche', 'Now we\'re getting a bit more serious!', '18.95', '16.99', 'the-rapture-of-psyche.gif', 'the-rapture-of-psyche-2.gif', 2, 'the-rapture-of-psyche-thumbnail.gif', NULL, NULL),
(101, 'The Promise of Spring', 'With Valentine\'s Day come, can Spring be far behind?', '21.00', '19.50', 'the-promise-of-spring.gif', 'the-promise-of-spring-2.gif', 0, 'the-promise-of-spring-thumbnail.gif', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 2, NULL, NULL),
(20, 20, 2, NULL, NULL),
(21, 21, 2, NULL, NULL),
(22, 22, 2, NULL, NULL),
(23, 23, 2, NULL, NULL),
(24, 24, 2, NULL, NULL),
(25, 25, 2, NULL, NULL),
(26, 26, 2, NULL, NULL),
(27, 27, 2, NULL, NULL),
(28, 28, 2, NULL, NULL),
(29, 29, 3, NULL, NULL),
(30, 30, 3, NULL, NULL),
(31, 31, 3, NULL, NULL),
(32, 32, 3, NULL, NULL),
(33, 33, 3, NULL, NULL),
(34, 34, 3, NULL, NULL),
(35, 35, 3, NULL, NULL),
(36, 36, 4, NULL, NULL),
(37, 37, 4, NULL, NULL),
(38, 38, 4, NULL, NULL),
(39, 39, 4, NULL, NULL),
(40, 40, 4, NULL, NULL),
(41, 41, 4, NULL, NULL),
(42, 42, 4, NULL, NULL),
(43, 43, 4, NULL, NULL),
(44, 44, 4, NULL, NULL),
(45, 45, 4, NULL, NULL),
(46, 46, 4, NULL, NULL),
(47, 47, 4, NULL, NULL),
(48, 48, 4, NULL, NULL),
(49, 49, 4, NULL, NULL),
(50, 50, 4, NULL, NULL),
(51, 51, 4, NULL, NULL),
(52, 52, 4, NULL, NULL),
(53, 53, 4, NULL, NULL),
(54, 54, 4, NULL, NULL),
(55, 55, 4, NULL, NULL),
(56, 56, 4, NULL, NULL),
(57, 57, 4, NULL, NULL),
(58, 58, 4, NULL, NULL),
(59, 59, 4, NULL, NULL),
(60, 60, 4, NULL, NULL),
(61, 61, 4, NULL, NULL),
(62, 62, 4, NULL, NULL),
(63, 63, 4, NULL, NULL),
(64, 64, 4, NULL, NULL),
(65, 81, 4, NULL, NULL),
(66, 97, 4, NULL, NULL),
(67, 98, 4, NULL, NULL),
(68, 65, 5, NULL, NULL),
(69, 66, 5, NULL, NULL),
(70, 67, 5, NULL, NULL),
(71, 68, 5, NULL, NULL),
(72, 69, 5, NULL, NULL),
(73, 70, 5, NULL, NULL),
(74, 71, 5, NULL, NULL),
(75, 72, 5, NULL, NULL),
(76, 73, 5, NULL, NULL),
(77, 74, 5, NULL, NULL),
(78, 75, 5, NULL, NULL),
(79, 76, 5, NULL, NULL),
(80, 77, 5, NULL, NULL),
(81, 78, 5, NULL, NULL),
(82, 79, 5, NULL, NULL),
(83, 80, 6, NULL, NULL),
(84, 81, 6, NULL, NULL),
(85, 82, 6, NULL, NULL),
(86, 83, 6, NULL, NULL),
(87, 84, 6, NULL, NULL),
(88, 85, 6, NULL, NULL),
(89, 86, 6, NULL, NULL),
(90, 87, 6, NULL, NULL),
(91, 88, 6, NULL, NULL),
(92, 89, 6, NULL, NULL),
(93, 90, 6, NULL, NULL),
(94, 91, 6, NULL, NULL),
(95, 92, 6, NULL, NULL),
(96, 93, 6, NULL, NULL),
(97, 94, 6, NULL, NULL),
(98, 95, 6, NULL, NULL),
(99, 96, 7, NULL, NULL),
(100, 97, 7, NULL, NULL),
(101, 98, 7, NULL, NULL),
(102, 99, 7, NULL, NULL),
(103, 100, 7, NULL, NULL),
(104, 101, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` smallint(6) NOT NULL DEFAULT 4,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `review`, `rating`, `created_at`, `updated_at`) VALUES
(1, 2, 101, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo', 4, NULL, NULL),
(2, 3, 101, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo', 5, NULL, NULL),
(3, 1, 100, 'A7A', 4, '2019-07-07 07:52:02', '2019-07-07 07:52:02'),
(4, 1, 100, 'So Good', 4, '2019-07-07 07:52:41', '2019-07-07 07:52:41'),
(5, 3, 31, 'Goood', 4, '2019-07-07 08:32:21', '2019-07-07 08:32:21'),
(6, 3, 29, 'asd', 4, '2019-07-07 08:36:11', '2019-07-07 08:36:11'),
(7, 3, 29, 'Love IT', 4, '2019-07-07 08:48:43', '2019-07-07 08:48:43'),
(8, 3, 29, 'GOOOOOOOOOOOOOd', 3, '2019-07-07 08:48:57', '2019-07-07 08:48:57'),
(9, 1, 99, 'BAD', 2, '2019-07-07 09:56:49', '2019-07-07 09:56:49'),
(10, 4, 2, 'GOOOOOOOOD', 1, '2019-07-07 14:56:49', '2019-07-07 14:56:49'),
(11, 2, 2, 'BAD', 4, '2019-07-07 15:35:57', '2019-07-07 15:35:57'),
(12, 1, 2, 'ASD', 3, '2019-07-15 05:00:54', '2019-07-15 05:00:54');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_carts`
--

CREATE TABLE `shopping_carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `cart_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordered` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopping_carts`
--

INSERT INTO `shopping_carts` (`id`, `cart_id`, `product_id`, `order_id`, `user_id`, `quantity`, `created_at`, `updated_at`, `ordered`) VALUES
(1, '1562601341', 2, 2, 1, 1, '2019-07-08 13:55:41', '2019-07-08 14:03:40', 0),
(2, '1562601346', 8, 2, 1, 1, '2019-07-08 13:55:46', '2019-07-08 14:03:40', 0),
(3, '1563126946', 2, 3, 1, 1, '2019-07-14 15:55:46', '2019-07-15 18:39:56', 0),
(4, '1563127128', 1, 3, 1, 1, '2019-07-14 15:58:48', '2019-07-15 18:39:57', 0),
(8, '1563222973', 100, 3, 1, 1, '2019-07-15 18:36:13', '2019-07-15 18:39:57', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `img`, `is_admin`) VALUES
(1, 'Ahmed', 'asd@asd.asd', NULL, '123456', 'bxLtBdSK4hy27ufRNCK9f7ayK8H5FqaPJruNoXIlJaMzFIflV6SjlXebco1A', '2019-07-05 18:20:08', '2019-07-21 19:10:01', '1.jpg', 1),
(2, 'Ahmed', 'AhmedMohammedMahrous@gmail.com', NULL, '123456', 'IepvV45Bw50YTCwKBR4l3TYfkSOCtafrppgux49uwzqwliIGYSwVAtufjGOM', '2019-07-07 07:10:05', '2019-07-07 15:35:23', '5055454101334.PT01_2048x2048.jpg', 0),
(3, 'Ahmed', 'A.Mohammed16.34@compit.au.edu.eg', NULL, '123456', 'taM4YICexYYiKMuIf8fibpsQwFUqWK6Z6ecBiyOqigDk7CaCYu9pnr0tQzW7', '2019-07-07 07:14:52', '2019-07-07 15:33:49', 'Apple-logo1.jpg', 0),
(4, 'Ali', 'Ali@Ali.ali', NULL, '123456', 'slv8i6Y2df6q5G7B0Rz5nj2Lr6G12XIHFBBKSvw4JLJSox9Bbn1RDRWSvakw', '2019-07-07 14:07:03', '2019-07-07 14:56:15', 'aaa.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
