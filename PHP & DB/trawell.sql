-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 21, 2018 at 10:20 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trawell`
--

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `address_uri` varchar(50) NOT NULL,
  `description` varchar(800) NOT NULL,
  `rating` varchar(10) NOT NULL,
  `image` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `address`, `address_uri`, `description`, `rating`, `image`) VALUES
(1, 'Kudroli Temple', 'Kudroli,Kodialbail, Mangalore', '12.8761,74.8313', 'The Gokarnanatheshwara Temple, otherwise known as Kudroli Sri Gokarnanatha Kshetra, is in the Kudroli area of Mangalore in Karnataka, India. It was consecrated by Narayana Guru. It is dedicated to Gokarnanatha, a form of Lord Shiva. This temple was built in 1912 by Adhyaksha Hoige Koragappa.\r\n\r\nThe temple is 2 km from the centre of Mangalore city. The temple has Gopuram (tower like structure) decorated with murals of various gods and goddesses. Murals depict scenes from Hindu epics and legends.The dasara festival is celebrated with much grandeur.\r\n\r\nThe dasara celebrations of this temple is popularly called Mangalore Dasara.Mangalore Dasara was started by B.R.Karkera.', '4.3', 'http://elmentrix.000webhostapp.com/project/images/k.jpg'),
(2, 'Panambur Beach', 'Surathkal,Mangalore', '12.937325,74.804169', 'This beach is on the shores of Arabian sea and is credited as one of the safest and best maintained beaches of India.It is the most popular, well connected and most visited beach of coastal Karnataka.\r\n\r\nThe beach is located in the place called Panambur 10 km north of the City center which comes under the administration of Mangalore City Corporation.  As of now this beach is maintained by a private enterprise under the banner of\"Panambur Beach Tourism Development Project\". Other attractions include jet ski rides, boating, dolphin viewing, food stalls and is also known for its highly skilled and trained lifeguards who patrol the beach to ensure visitor safety.\r\n\r\nThis beach has been popular for its picturesque sunsets, the beautiful port area and a picnic spot for tourists and local.', '3.9', 'http://elmentrix.000webhostapp.com/project/images/panmbur.jpg'),
(3, 'Sulthan Bathery Beach', 'Sulthan bathery,Mangalore', '12.889698,74.821091', 'Sultan Bathery, previously known as Sultan\'s Battery or Ganapathyvattam, is a town and municipality in Wayanad district of Kerala, India, near the borders with Tamil Nadu and Karnataka states. The largest city in Wayanad district, it is the headquarters of Sultan Bathery taluq. It is a quiet and peaceful town.\r\n\r\nThe place came to be known by its new name after Mysore ruler Tipu Sultan invaded the region and used the Jain Temple located here as a battery. The pleasant weather in this beautiful town, coupled with excellent opportunities for shopping and spectacular historical sites makes the town of Sultan Bathery a popular tourist destination that is visited by tourists all year round. Located at an altitude of 1000 meters above the sea level.', '4.0', 'http://elmentrix.000webhostapp.com/project/images/Sul.JPG'),
(4, 'Murudeshwara', 'Bhatkal,Udupi', '14.093993,74.489863', 'Murdeshwar is a town in Bhatkal Taluk of Uttara Kannada district in the state of Karnataka, India. Murdeshwar is another name of the Hindu god Shiva. Famous for the world\'s second tallest Shiva statue, the town lies on the coast of the Arabian Sea and is also famous for the Murdeshwar Temple. Murdeshwar has a railway station on the Mangalore-Mumbai Konkan railway route.\r\n\r\nMurdeshwar Temple and Raja Gopura: This temple is built on the Kanduka Hill which is surrounded on three sides by the waters of the Arabian Sea. It is dedicated to Sri Lokankara, and a 20-storied gopura is constructed at the temple. The temple authorities have installed a lift that provides a breath-taking view of the 123-feet Sri Shiva idol from the top of the Raja gopura. There is also a Rameshwara linga at the bot. ', '4.1', 'http://elmentrix.000webhostapp.com/project/images/Muru.jpg'),
(5, 'Pilikula Nisrgadhama', 'Mudushedde,Mangalore', '12.928834,74.894781', 'The Pilikula Nisarga Dhama Society has developed this area to offer scenic beauty and peace. Pilikula has a huge lake encircled by beautiful gardens. Swans and ducks swim in the lake and sometimes occupy the gardens. Boating facilities are available in the lake. Couples prefer pedal boats; larger parties use boats that carry 10 to 15 persons.\r\n\r\nIn the Tulu language, \"pili\" means tiger and \"kula\" means lake. The name Tiger Lake is because tigers used to come to this lake to drink.\r\n\r\nThe state of Karnataka also has a nature preserve called Kaveri Nisargadhama, near Kushalnagar.  Dholes in the theme park On the other side of the road, there is a zoo featuring several wild animals. The animals are not kept in cages but are in the open, with more natural barriers, such as wide trenches. ', '4.2', 'http://elmentrix.000webhostapp.com/project/images/Pilikula.png'),
(6, 'Jain Temple', 'Mudabidri', '13.074191,74.997649', ' Jain temple noted for its 1000 pillars in Moodabidri, Karnataka, India. The temple is also known as \"Chandranatha Temple\" since it honors the tirthankara Chandraprabha, whose eight-foot idol is worshipped in the shrine.\r\n\r\nThe town of Moodabidri is noted for its eighteen Jain temples but Saavira Kambada Temple is consThe Basadi was built by the local chieftain, Devaraya Wodeyar in 1430 with additions made in 1962. The shrine has a 60 feet tall monolith manasthambha (erected by Karkala Bhairava Queen Nagala Devi)idered the finest among them.', '4.6', 'http://elmentrix.000webhostapp.com/project/images/basadi.jpg'),
(7, 'Manasa Water Park', 'Mudushedde,Mangalore', '12.925168,74.895456', 'Want to break free from the stressful city life? Need that long – deserved break from tropical heat? Cool yourself with fun and turn your dream holiday now into reality at Manasa Amusement & Water Park, place to be all summer long and the complete fun centre for the entire family…\r\n\r\nJust the Place to Discover Your Childhood  Manasa Amusement & Water Park is an ideal picnic spot, place rather a heaven on earth, nestled in the scintillating and amusing with cool, calm, serene and lush green is just 12Kms from Mangalore  city and also just 12Kms from Mangalore International Airport, situated within 450 acres Tourism project of Dakshina Kannada administration “Pilikula Nisarga Dhama”, Eco-Educational Tourist Park with Zoo, Botanical Garden, Heritage Village, Science Centre, Lake, Garden, Boat', '4.9', 'http://elmentrix.000webhostapp.com/project/images/Manasa.png'),
(8, 'TannirBavi Beach', 'Urva,Mangalore', '12.891302,74.813874', 'Tannirbhavi beach is a beach in Mangalore, Karnataka, India. It can be reached either by land near Kuloor Bridge or by ferry via Gurupura river from Sultan Battery.Tannirbhavi (also spelled as Tannirbavi) is one of the popular beaches in Mangalore city, and comes second in popularity to the nearby Panambur beach. Tannirbhavi beach has some basic facilities like life guards, proper toilets, a parking lot, a couple of small eateries and concrete benches.On the other side of the land strip of the beach there is a barge-mounted 220 MW power plant set up by the GMR group.It is located at a distance of 12 km from Mangalore.\r\n\r\nTannirbhavi is well connected by road, and easily reachable in own vehicle or a hired one. Alternatively, you can take city bus (No. 16, 16A) from Statebank to Sulthanbath', '4.7', 'http://elmentrix.000webhostapp.com/project/images/tanni.jpg'),
(9, 'Havana Island', 'Sulthan Bathery,Mangalore', '12.878800,74.827526', 'Havana Ventures was founded on the principle that it shouldn\'t cost a lot to just get away from the grind for a few Hours!! Our experiences have been responsible for the philosophy that is followed at Havana ventures. It has helped us understand that spare time, however little, is a luxury that should be utilized in a way so as to make the most of it  In order to help you do this, Havana ventures provide distinctive services at Havana Island, Havana Manji -Floating Restaurant & Havana Sea Breeze Cruise with all Modern amenities and a fine dining experience.', '4.9', 'http://elmentrix.000webhostapp.com/project/images/hawana.jpg'),
(10, 'Bekal Fort', 'Kasaragod,Kerala', '12.392387,75.032887', 'The fort appears to emerge from the sea. Almost three quarters of its exterior is in contact with water. Bekal fort was not an administrative centre and doesn\'t include any palace or mansion.  An important feature is the water-tank, magazine and the flight of steps leading to an observation tower built by Tipu Sultan.\r\n\r\nStanding at the centre of the fort, this offers views of the coastline and the towns of Kanhangad, Pallikkara, Bekal, Kottikkulam, and Uduma.India declared Bekal Fort a special tourism area in 1992 and formed Bekal Tourism Development Corporation three years later to promote it. The song \'Uyire\' (Tamil) from the movie Bombay was shot at Bekal Fort.Local roads connect to Mangalore in the north and Calicut in the south. The nearest railway station is Bekal Fort Railway.', '5', 'http://elmentrix.000webhostapp.com/project/images/bekal.jpg'),
(11, 'St.Mary\'s Island', 'Malpe,Udupi', '13.379500,74.673000', 'St. Mary\'s Islands, also known as Coconut Island and Thonsepar, are a set of four small islands in the Arabian Sea off the coast of Malpe in Udupi, Karnataka, India. They are known for their distinctive geological formation of columnar basaltic lava (pictured).Scientific studies indicate that the basalt of the St. Mary\'s Islands was formed by sub-aerial subvolcanic activity, because at that time Madagascar was attached to India. The rifting of Madagascar took place around 88 million years ago.The islands form one of the four geological monuments in Karnataka state, one of the 26 Geological Monuments of India declared by the Geological Survey of India in 2001. The monument is considered an important site for \"Geo Tourism\".\r\n\r\nThe only way of getting to the islands is by boat.', '4.6', 'http://elmentrix.000webhostapp.com/project/images/St.jpg'),
(12, 'Kadri Park', 'Kadri,Magalore', '12.888945,74.856276', 'Kadri Park is a garden, 5 min from the city near AIR studios. It is located in Kadri gudde ( meaning hill in Tulu ). It\'s the largest park within city limits of Mangalore. The park has beautifully laid garden and a toy train which is currently operational.', '4.4', 'http://elmentrix.000webhostapp.com/project/images/kadri.jpg'),
(13, 'Tannirubavi Tree Park', 'Sulthanbatherry,Mangalore', '12.891302,74.813874', 'Tannirbhavi Tree Park is set up in an area of 15 hectares near Tannirbhavi Beach. It is an initiate by Karnataka Forest Department. The Tree Park includes tree species found in the Western Ghats and also the trees/plants are herbal and have medical importance. It has various sculptures depicting the culture of the region — Tulu Nadu such as Yakshagana and Buta Kola.', '4.2', 'http://elmentrix.000webhostapp.com/project/images/tree.jpg'),
(14, 'Adyar Falls', 'Adyar,Mangalore', '12.872787,74.934431', 'May be it is for this reason the Adyar waterfalls at the outskirts at about 12 kms drive from the city, has failed to catch the fancy of Mangaloreans. Many Mangaloreans may not be aware of this waterfall situated amidst thick lush foliage and verdant hills still untouched by the evils of modernity. At a distant backdrop the muddy red waters of the meandering Netravati River (after heavy rainfall) beckon visitors who care to spend some time on the hilltop savouring those tantalizing moments.  Known as Adyar Falls the waterfall can be easily approached from two sides – i.e one from Neermarga on the road leading to Volachil and the other from Bantwal- B C Road highway near Adyar. In fact the fall gets the name as it is just two furlongs from National High Way on Adyar near Valachil on the way', '3.9', 'http://elmentrix.000webhostapp.com/project/images/Adyr.jpeg'),
(15, 'Swami Vivekananda Planetarium', 'Mudusheddu,Mangalore', '12.9266971,74.8984518', 'Swami Vivekananda Planetarium at Pilikula in Mangalore is the first 3D planetarium in India.It is also the first planetarium in the country with 8K digital and opto-mechanical (hybrid) projection system.The planetarium is at the Pilikula Regional Science Centre in Mangalore.The Swami Vivekananda Planetarium has a dome diameter of 18 m (59 ft) and a seating capacity of 170.3D shows such as We are the Stars are presented in English and Kannada.', '4.0', 'http://elmentrix.000webhostapp.com/project/images/plt.jpg'),
(16, 'Pilikula Regional Science Center', 'Moodushedde, Vamanjoor Post,Mangaluru', '12.925914,74.899180', 'The Pilikula Regional Science Centre (PRSC) at Pilikula, Mangaluru was set up jointly by the Department of Science & Technology (DST), Govt. of Karnataka (GoK) and National Council of Science Museums (NCSM) Kolkata, Ministry of Culture, Govt. of India (GoI). It is administered by the Pilikula Regional Science Centre Society (PRSCS) for which Deputy Commissioner of the District is the Chairman. PRSC receives annual grants from Department of Science & Technology, Govt. of Karnataka for the maintenance, activities through Karnataka Science and Technology Promotion Society (KSTePS). Through interactive science exhibits and free choice science learning activities, the centre caters to the large population of the Region and is program for building up.', '4.0', 'http://elmentrix.000webhostapp.com/project/images/science.jpg'),
(17, 'Infant Jesus Shrine', 'Carmel Hill, Kulshekar Post, Mangaluru', '12.882231,74.868990', 'The Infant Jesus has been honored with a magnificent shrine at Carmel Hill, Mangalore. The architectural structure and design of the newly inaugurated shrine is unique in many ways. Carefully planned, it has a rich symbolic meaning and significance derived principally from Biblical themes, of both the old and the new testaments. Here below we give in brief its main features.\r\n\r\nFive huge columns encircle and uphold the main structure, while rising to a height nearly double that of the roof and converging under a globe atop of which is planted a luminescent Cross. While at the base the shrine is hexagonal, the roofing is pentagonal. The flooring is generally of marble, except for the aisle and the border along the walls which is granite. The wall itself is constructed of bare granite stones', '4.9', 'http://elmentrix.000webhostapp.com/project/images/chrch.jpeg'),
(18, 'Manipal Museum of Anatomy & Pathology', ' Madhav Nagar, Manipal, Karnataka 576104', '13.352319,74.785545', ' On most days, there is a serpentine queue outside theipal Museum of Anatomy and Pathology, or MAP, a sprawling building diagonally opposite the main education building.  Apart from college and school students, some from as far away as Mysore and Mumbai, there is a usually scattering of medical professionals and tourists from around the world, jostling to get in.  Billed as one of the largest in Asia, the museum boasts of over 3,000 specimens and samples of things anatomical, including the skulls of an elephant and a whale, and the long skeleton of a King Cobra.\r\n\r\n Dr SS Godbole, the first Anatomy Professor of Kasturba Medical College, had a passion for preservation. His techniques of careful dissection, processing and mounting of anatomical specimens are followed even today.', '4.9', 'http://elmentrix.000webhostapp.com/project/images/museum.jpg'),
(19, 'Clock Tower', 'Thenkpete,Udupi, Karnataka 576101', '13.341969,74.747244', 'No info. sorry :(', '3.7', 'http://elmentrix.000webhostapp.com/project/images/clck.jpeg'),
(20, 'ThimmanKudru Suspension Bridge', 'Tonse West, Karnataka 576115', '13.409914,74.715571', 'Famous rope-suspension footbridge connecting ThimmanKudru Island to the mainland.', '3.8', 'http://elmentrix.000webhostapp.com/project/images/brdg.jpeg'),
(21, 'CHANDRAGIRI FORT', 'Kasaragod,Kerala', '12.469937,75.003245', 'Chandragiri Fort is a fort built in the 17th century, situated in Kasaragod District of Kerala, South India. This large squarish fort is 150 feet (46 m) above sea level and occupies an area of about seven acres by the side of the river Payaswini. The fort is now in ruins.  The fort has an eventful history. In earlier days, the river was considered to be the border of two powerful kingdoms - Kolathunadu and Thulunadu. When Thulunadu was captured by the Vijayanagara Empire, the Kolathunadu kings lost the Chandragiri region to them. During the decline of the Vijayanagara Empire, the area was administratively looked after by the Keladi Nayakas of Ikkeri. When the Vijayanagara Empire fell in the 16th century, Vengappa Nayaka declared independence. Later Shivappa Nayaka took over the reins.', '4.0', 'http://elmentrix.000webhostapp.com/project/images/fort.jpeg'),
(22, 'ULLAL DARGA', 'Ullal,Mangalore', '12.819777,74.847331', 'The Ullal darga famous for Uroos fair has an interesting history behind its presence. Located about 10 kms from the heart of the city the darga is easily accessible by buses, auto-rickshaws ans taxis. The Dargah to commemorate Saint Sayyid Mohammed Shareeful Madani, located in Ullal in South Kanara, has been drawing pilgrims from all faiths. Legend has it that about 400 years ago, Sayyid Muhammed Shareeful Madani came to Mangalore from Saudi Arabia, reaching the shores of Ullal by floating on a piece of cloth. He camped in a small mosque at Melangadi in Ullal village where he led asimple life showering his love on the poor.', '3.8', 'http://elmentrix.000webhostapp.com/project/images/UD.jpg'),
(23, 'Kumara Parvatha Trekking', 'Subramanya,DK', '12.658056,75.686667', 'Pushpagiri (Kumara Parvha), at 1,712 metres (5,617 ft),is the highest peak in Pushpagiri Wildlife Sanctuary in the Western Ghats of Karnataka. It is located in the Somwarpet Taluk, 20 kilometres (12 mi) from Somwarpet in the northern part of Kodagu district on the border between Dakshina Kannada and Kodagu district and hassan districts. It is 4th highest peak of Karnataka. The Sanskrit name of the mountain is Pu?pagiri while its Prakrit form is Puphagiri, which is mentioned in the Nagarjunakond Second Apsidal Temple inscription, although this may refer to a different mountain to the north of Cuddapah, in Andhra Pradesh.\r\n\r\nThe Pushpagiri or Subramanya Hills (also referred as Kumaraparvatha) is the second-highest peak of Kodagu, and fourth highest peak in Karnataka.About 36 kilometres.', '3.5', 'http://elmentrix.000webhostapp.com/project/images/trek.jpeg'),
(24, 'Ananthapura Lake Temple', 'Ananthapura, Naikap, Kerala 671321', '12.584162,74.982063', 'Ananthapadmanabhaswamy Temple or Anantha Lake Temple is a Hindu temple built in the middle of a lake in the little village of Ananthapura, around 6 km from the town of Kumbla in Manjeswaram taluk of Kasaragod District of Kerala, South India. This is the only lake temple in Kerala and is believed to be the original seat (Moolasthanam) of Ananthapadmanabha Swami (Padmanabhaswamy temple) Thiruvananthapuram. Legend has it that this is the original site where Ananthapadmanabha settled down.The lake in which the Sanctum Sanctorum is built measures about 2 acres (302 feet square). An interesting spot to keep in mind while visiting the temple is a cave to the right corner of the lake. According to the local legend, the deity Anantha Padmanabha chose to go all the way to Thiruvananthapuram through ', '4.1', 'http://elmentrix.000webhostapp.com/project/images/lake.jpeg'),
(25, 'Pilikula Golf Club', 'Pilikula, Moodushedde, Mangaluru, Karnataka 575028', '12.927873,74.893490', 'Pilikula Golf Club, is part of the Pilikula Nisarga Dhama Trust and has been laid out in sylvan surroundings. The club is located 12 kilometers from Mangalore. The Golf Club was established by a DFO Mr. M.S. Goudar and an Elite Group of Mangalorean’s, who usually use the course on all days of the week, particularly weekends. The Membership Strength of the club is about 685 members on 15th April 2016.  The Categories of Membership are – Charter Members, Life Members, Permanent Members, Service Members and Corporate Members.  The Golf Club is managed by 12 governing body members, out of which 6 members are government representatives and the other 6 members are elected from among the members. The Deputy Commissioner of Dakshina Kannada, is the President of the Golf Club. He presides over the ', '4.4', 'http://elmentrix.000webhostapp.com/project/images/glf.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `registered_users`
--

CREATE TABLE `registered_users` (
  `id` int(50) NOT NULL,
  `name` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `registered_users`
--

INSERT INTO `registered_users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Adil', 'adil@gmail.com', '12345'),
(2, 'dee', 'dee@gmail.com', 'qwerty'),
(3, 'shri', 'shri@gmail.com', 'asd'),
(4, 'yo', 'ha@gmail.com', 'haha'),
(5, 'deekshith', 'sgsg@gmail.com', '1234'),
(6, 'arpan', 'arpan@gmail.com', '1234'),
(7, 'jay', 'jay@gmail.com', '7890'),
(8, 'all', 'all@gmail.com', '7890'),
(9, 'kavya', 'k', '1234'),
(10, 'kavya', 'ka@g.com', '1234'),
(11, 'fff', 'rf', 'dsss'),
(12, 'asd', 'asd@gmail.com', '1234'),
(13, 'Chuuuuu', 'gan@du.com', 'dhdjsi'),
(14, 'abcd', 'abcd@gmail.com', 'abcd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registered_users`
--
ALTER TABLE `registered_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registered_users`
--
ALTER TABLE `registered_users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
