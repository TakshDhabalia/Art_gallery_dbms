
--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artistid`, `gid`, `custid`, `eid`, `fname1`, `lname1`, `birthplace`, `style`) VALUES
('ART1', 'MM123', 'AT2000', 'AD22', 'Georgia', 'O Keeffe', 'USA', 'Oil on Canvas'),
('ART2', 'TLM123', 'AR1998', 'AD55', 'Pablo', 'Picasso', 'Spain', 'Analytic Cubism'),
('ART3', 'BM123', 'AD1998', 'AD88', 'Rembrandt', 'van Rijn', 'Netherlands', 'Oil Painting'),
('ART4', 'JG123', 'AM1994', 'AD00', 'Theodore', 'Chasseriau', 'France', 'Oil Painting'),
('ART5', 'NG123', 'PM1996', 'AD11', 'Leonardo', 'da Vinci', 'Italy', 'High Renaissance');
--
-- Dumping data for table `artwork`
--

INSERT INTO `artwork` (`artid`, `title`, `year`, `type_of_art`, `price`, `eid`, `gid`, `artistid`) VALUES
('AW12', 'Mona Lisa', '1503', 'Painting', '10,00,00,000', 'G123', 'NG123', 'AD11'),
('AW34', 'Poppies', '1873', 'Painting', '1,50,00,000', 'H123', 'MM123', 'AD22'),
('AW56', 'Guernica', '1937', 'Painting', '2,50,00,000', 'I123', 'TLM123', 'AD55'),
('AW78', 'The Night Watch', '1642', 'Painting', '90,00,000', 'J123', 'BM123', 'AD88'),
('AW90', 'Two Sisters', '2010', 'Sculpture', '2,00,000', 'K123', 'JG123', 'AD00'),
('a111', 'ttt', '2018', 'tyse', '2000000000', 'E11', 'G11', 'ar1');


--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`CUSTID`, `PHONE`) VALUES
('AT2000', '9456805776'),
('AR1998', '8073271337'),
('AD1998', '9980904736'),
('AM1994', '7737564076'),
('PM1996', '8002391707');
--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custid`, `gid`, `artid`, `fname`, `lname`, `dob`, `address`) VALUES
('AT2000', 'MM123', 'AD22', 'Akshay', 'Thakur', '2000-04-16', 'New York'),
('AR1998', 'TLM123', 'AD55', 'Ashutosh', 'Ranjan', '1998-02-04', 'Paris'),
('AD1998', 'BM123', 'AD88', 'Ayush', 'Dhar', '1998-09-28', 'London'),
('AM1994', 'JG123', 'AD00', 'Avanish', 'Mehta', '1994-10-05', 'Mumbai'),
('PM1996', 'NG123', 'AD11', 'Ashish', 'Mehta', '1996-06-18', 'Washington');
--
-- Dumping data for table `exhibition`
--

INSERT INTO `exhibition` (`eid`, `gid`, `startdate`, `enddate`) VALUES
('H123', 'BM123', '2018-12-21', '2019-01-05'),
('I123', 'MM123', '2019-01-25', '2019-02-05'),
('G123', 'NG123', '2018-12-01', '2018-12-15'),
('J123', 'TLM123', '2018-12-15', '2019-01-15'),
('K123', 'JG123', '2019-03-09', '2019-03-27');

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gid`, `gname`, `location`) VALUES
('NG123', 'NATIONAL GALLERY', 'Washington'),
('BM123', 'BRITISH MUSEUM', 'London'),
('JG123', 'JAHANGIR GALLERY', 'Mumbai'),
('TLM123', 'THE LOUVRE MUSEUM', 'Paris'),
('MM123', 'METROPOLITAN MUSEUM', 'New York');
