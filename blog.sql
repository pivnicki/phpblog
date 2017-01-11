-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2016 at 12:35 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categor`
--

CREATE TABLE `categor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categor`
--

INSERT INTO `categor` (`id`, `name`) VALUES
(1, 'News  '),
(2, 'Events'),
(3, 'Tutorials'),
(4, 'Misc');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `body`, `author`, `tags`, `date`) VALUES
(1, 1, 'Testiranje UPDATE', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tempor odio eget accumsan tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean congue risus dictum massa interdum aliquam. Etiam ornare, mauris nec accumsan accumsan, felis ipsum varius tellus, semper posuere magna lectus sit amet nisi. Aliquam nibh elit, congue id auctor quis, volutpat id augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus venenatis velit leo, et consectetur odio lacinia id. Nulla lobortis ligula a ex congue, a interdum enim blandit. Morbi suscipit laoreet lectus. Ut mi lectus, venenatis in erat semper, volutpat dapibus ex. Aliquam pretium magna vel posuere fringilla. Cras interdum metus nibh, vel suscipit quam elementum non. Morbi varius, augue quis auctor suscipit, nisl purus ultricies nisi, at rutrum est metus quis ligula. Nunc aliquam odio vitae arcu volutpat, nec elementum arcu euismod. Suspendisse tempor finibus leo quis condimentum. Nam non nisl egestas, elementum nunc sed, dignissim tellus.\r\n\r\nPhasellus hendrerit facilisis tellus at cursus. Praesent eleifend ultrices ullamcorper. Aenean pulvinar dictum magna at commodo. Phasellus vel eros hendrerit dui consectetur posuere. Duis suscipit finibus mi nec cursus. Aliquam a velit et ex aliquet tincidunt. Mauris suscipit ultricies orci, sed tristique lacus fringilla nec. Sed lobortis augue nec dolor molestie, ut ultricies justo hendrerit. Ut bibendum quam sit amet commodo venenatis. Duis at nulla ac metus interdum ullamcorper sed id risus. Proin porttitor lectus dolor, vel elementum dui rhoncus sit amet. Mauris tempor lorem tortor, quis hendrerit nisi faucibus tempus. Ut fermentum eget orci sed sollicitudin. Nam tempor sagittis arcu quis viverra.\r\n\r\nVestibulum pharetra faucibus euismod. Donec a nibh molestie, tincidunt nisi quis, fermentum magna. Pellentesque quis gravida ex. Suspendisse aliquam neque eget odio venenatis, at congue lorem venenatis. Sed aliquam, magna et aliquet convallis, mauris elit egestas risus, vitae volutpat felis ex id quam. Nunc leo quam, cursus a venenatis vitae, egestas pharetra felis. Maecenas aliquam ultrices convallis. Mauris vel lobortis lacus. Vivamus elementum tempor sodales. Donec cursus lacinia ante nec facilisis. Morbi ligula dolor, eleifend eu eleifend et, porta ac felis. Ut ac nisl et nibh sollicitudin vulputate. Nulla tristique risus cursus, semper neque sit amet, blandit ex. Aliquam ut tellus sem. Donec sed orci justo.\r\n\r\nInteger mattis ornare interdum. Aenean pharetra varius erat eget ultrices. Vestibulum at finibus ipsum. Vivamus nec iaculis neque. Nunc vestibulum nibh sed viverra lacinia. Nam tincidunt, tellus non consequat facilisis, lectus augue mollis arcu, eu dapibus felis mi id metus. Vivamus auctor malesuada lectus sit amet egestas.\r\n\r\nEtiam gravida ut urna vitae tempor. Nulla nec massa efficitur, varius massa ut, malesuada sem. In cursus sodales diam sed euismod. Donec tempus ultrices felis, in lobortis tellus dapibus vel. Aliquam erat volutpat. Sed quis lectus ultrices neque facilisis pulvinar. Sed ipsum orci, suscipit a bibendum in, malesuada vitae tortor. Suspendisse euismod neque a eros sodales tempor. Nunc lectus odio, lobortis id varius eget, ornare ut arcu. Aliquam quis ultricies felis, vitae molestie ante. Aliquam accumsan fringilla massa at finibus. Aliquam erat volutpat. Aliquam molestie eros in finibus suscipit. Vestibulum tortor sapien, gravida ac lorem sed, volutpat bibendum odio. Fusce sagittis, nibh fringilla pulvinar ornare, massa leo hendrerit magna, porta laoreet erat nibh lobortis lacus. Maecenas et ex tincidunt enim tincidunt fringilla. ', 'Stevan Pivnicki', 'tutorials, php, test', '2016-02-22 16:06:45'),
(2, 1, 'Testiranje UPDATE test id 2 ', '                      \r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tempor odio eget accumsan tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean congue risus dictum massa interdum aliquam. Etiam ornare, mauris nec accumsan accumsan, felis ipsum varius tellus, semper posuere magna lectus sit amet nisi. Aliquam nibh elit, congue id auctor quis, volutpat id augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus venenatis velit leo, et consectetur odio lacinia id. Nulla lobortis ligula a ex congue, a interdum enim blandit. Morbi suscipit laoreet lectus. Ut mi lectus, venenatis in erat semper, volutpat dapibus ex. Aliquam pretium magna vel posuere fringilla. Cras interdum metus nibh, vel suscipit quam elementum non. Morbi varius, augue quis auctor suscipit, nisl purus ultricies nisi, at rutrum est metus quis ligula. Nunc aliquam odio vitae arcu volutpat, nec elementum arcu euismod. Suspendisse tempor finibus leo quis condimentum. Nam non nisl egestas, elementum nunc sed, dignissim tellus.\r\n\r\nPhasellus hendrerit facilisis tellus at cursus. Praesent eleifend ultrices ullamcorper. Aenean pulvinar dictum magna at commodo. Phasellus vel eros hendrerit dui consectetur posuere. Duis suscipit finibus mi nec cursus. Aliquam a velit et ex aliquet tincidunt. Mauris suscipit ultricies orci, sed tristique lacus fringilla nec. Sed lobortis augue nec dolor molestie, ut ultricies justo hendrerit. Ut bibendum quam sit amet commodo venenatis. Duis at nulla ac metus interdum ullamcorper sed id risus. Proin porttitor lectus dolor, vel elementum dui rhoncus sit amet. Mauris tempor lorem tortor, quis hendrerit nisi faucibus tempus. Ut fermentum eget orci sed sollicitudin. Nam tempor sagittis arcu quis viverra.\r\n\r\nVestibulum pharetra faucibus euismod. Donec a nibh molestie, tincidunt nisi quis, fermentum magna. Pellentesque quis gravida ex. Suspendisse aliquam neque eget odio venenatis, at congue lorem venenatis. Sed aliquam, magna et aliquet convallis, mauris elit egestas risus, vitae volutpat felis ex id quam. Nunc leo quam, cursus a venenatis vitae, egestas pharetra felis. Maecenas aliquam ultrices convallis. Mauris vel lobortis lacus. Vivamus elementum tempor sodales. Donec cursus lacinia ante nec facilisis. Morbi ligula dolor, eleifend eu eleifend et, porta ac felis. Ut ac nisl et nibh sollicitudin vulputate. Nulla tristique risus cursus, semper neque sit amet, blandit ex. Aliquam ut tellus sem. Donec sed orci justo.\r\n\r\nInteger mattis ornare interdum. Aenean pharetra varius erat eget ultrices. Vestibulum at finibus ipsum. Vivamus nec iaculis neque. Nunc vestibulum nibh sed viverra lacinia. Nam tincidunt, tellus non consequat facilisis, lectus augue mollis arcu, eu dapibus felis mi id metus. Vivamus auctor malesuada lectus sit amet egestas.\r\n\r\nEtiam gravida ut urna vitae tempor. Nulla nec massa efficitur, varius massa ut, malesuada sem. In cursus sodales diam sed euismod. Donec tempus ultrices felis, in lobortis tellus dapibus vel. Aliquam erat volutpat. Sed quis lectus ultrices neque facilisis pulvinar. Sed ipsum orci, suscipit a bibendum in, malesuada vitae tortor. Suspendisse euismod neque a eros sodales tempor. Nunc lectus odio, lobortis id varius eget, ornare ut arcu. Aliquam quis ultricies felis, vitae molestie ante. Aliquam accumsan fringilla massa at finibus. Aliquam erat volutpat. Aliquam molestie eros in finibus suscipit. Vestibulum tortor sapien, gravida ac lorem sed, volutpat bibendum odio. Fusce sagittis, nibh fringilla pulvinar ornare, massa leo hendrerit magna, porta laoreet erat nibh lobortis lacus. Maecenas et ex tincidunt enim tincidunt fringilla.         ', 'Stevan Pivnicki', 'tutorials, php, test', '2016-02-22 16:06:45'),
(9, 1, 'Testiranje UPDATE', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tempor odio eget accumsan tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean congue risus dictum massa interdum aliquam. Etiam ornare, mauris nec accumsan accumsan, felis ipsum varius tellus, semper posuere magna lectus sit amet nisi. Aliquam nibh elit, congue id auctor quis, volutpat id augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus venenatis velit leo, et consectetur odio lacinia id. Nulla lobortis ligula a ex congue, a interdum enim blandit. Morbi suscipit laoreet lectus. Ut mi lectus, venenatis in erat semper, volutpat dapibus ex. Aliquam pretium magna vel posuere fringilla. Cras interdum metus nibh, vel suscipit quam elementum non. Morbi varius, augue quis auctor suscipit, nisl purus ultricies nisi, at rutrum est metus quis ligula. Nunc aliquam odio vitae arcu volutpat, nec elementum arcu euismod. Suspendisse tempor finibus leo quis condimentum. Nam non nisl egestas, elementum nunc sed, dignissim tellus.\r\n\r\nPhasellus hendrerit facilisis tellus at cursus. Praesent eleifend ultrices ullamcorper. Aenean pulvinar dictum magna at commodo. Phasellus vel eros hendrerit dui consectetur posuere. Duis suscipit finibus mi nec cursus. Aliquam a velit et ex aliquet tincidunt. Mauris suscipit ultricies orci, sed tristique lacus fringilla nec. Sed lobortis augue nec dolor molestie, ut ultricies justo hendrerit. Ut bibendum quam sit amet commodo venenatis. Duis at nulla ac metus interdum ullamcorper sed id risus. Proin porttitor lectus dolor, vel elementum dui rhoncus sit amet. Mauris tempor lorem tortor, quis hendrerit nisi faucibus tempus. Ut fermentum eget orci sed sollicitudin. Nam tempor sagittis arcu quis viverra.\r\n\r\nVestibulum pharetra faucibus euismod. Donec a nibh molestie, tincidunt nisi quis, fermentum magna. Pellentesque quis gravida ex. Suspendisse aliquam neque eget odio venenatis, at congue lorem venenatis. Sed aliquam, magna et aliquet convallis, mauris elit egestas risus, vitae volutpat felis ex id quam. Nunc leo quam, cursus a venenatis vitae, egestas pharetra felis. Maecenas aliquam ultrices convallis. Mauris vel lobortis lacus. Vivamus elementum tempor sodales. Donec cursus lacinia ante nec facilisis. Morbi ligula dolor, eleifend eu eleifend et, porta ac felis. Ut ac nisl et nibh sollicitudin vulputate. Nulla tristique risus cursus, semper neque sit amet, blandit ex. Aliquam ut tellus sem. Donec sed orci justo.\r\n\r\nInteger mattis ornare interdum. Aenean pharetra varius erat eget ultrices. Vestibulum at finibus ipsum. Vivamus nec iaculis neque. Nunc vestibulum nibh sed viverra lacinia. Nam tincidunt, tellus non consequat facilisis, lectus augue mollis arcu, eu dapibus felis mi id metus. Vivamus auctor malesuada lectus sit amet egestas.\r\n\r\nEtiam gravida ut urna vitae tempor. Nulla nec massa efficitur, varius massa ut, malesuada sem. In cursus sodales diam sed euismod. Donec tempus ultrices felis, in lobortis tellus dapibus vel. Aliquam erat volutpat. Sed quis lectus ultrices neque facilisis pulvinar. Sed ipsum orci, suscipit a bibendum in, malesuada vitae tortor. Suspendisse euismod neque a eros sodales tempor. Nunc lectus odio, lobortis id varius eget, ornare ut arcu. Aliquam quis ultricies felis, vitae molestie ante. Aliquam accumsan fringilla massa at finibus. Aliquam erat volutpat. Aliquam molestie eros in finibus suscipit. Vestibulum tortor sapien, gravida ac lorem sed, volutpat bibendum odio. Fusce sagittis, nibh fringilla pulvinar ornare, massa leo hendrerit magna, porta laoreet erat nibh lobortis lacus. Maecenas et ex tincidunt enim tincidunt fringilla. ', 'Stevan Pivnicki', 'tutorials, php, test', '2016-02-23 16:01:04'),
(11, 1, 'New Post', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n \r\n\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n	\r\n	paragraphs\r\n	words\r\n	bytes\r\n	lists\r\n	\r\nStart with ''Lorem\r\nipsum dolor sit amet...''\r\n ', 'Stevan Pivnicki', 'lorem ipsum, php, test', '2016-02-24 11:31:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categor`
--
ALTER TABLE `categor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categor`
--
ALTER TABLE `categor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
