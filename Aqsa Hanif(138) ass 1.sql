Create Database Sound_Management;
Use Sound_Management;

-- Table 1: songs--

CREATE TABLE Songs (
  song_id INT PRIMARY KEY,
  title VARCHAR(255),
  artist VARCHAR(255),
  album VARCHAR(255),
  duration INT,
  genre VARCHAR(255)
);

-- Table 2: Users--

CREATE TABLE Users (
  user_id INT PRIMARY KEY,
  username VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255)
);

-- Table 3: Playlists--

CREATE TABLE Playlists (
  playlist_id INT PRIMARY KEY,
  user_id INT,
  playlist_name VARCHAR(255)
);

-- Table 4: Playlist_Songs--

CREATE TABLE Playlist_Songs (
  playlist_song_id INT PRIMARY KEY,
  playlist_id INT,
  song_id INT
);

-- Table 5: Artists--

CREATE TABLE Artists (
  artist_id INT PRIMARY KEY,
  artist_name VARCHAR(255),
  genre VARCHAR(255),
  country VARCHAR(255)
);

-- Table 6: Albums --

CREATE TABLE Albums (
  album_id INT PRIMARY KEY,
  album_name VARCHAR(255),
  artist_id INT,
  release_year INT
);

-- Table 7: Genres--

CREATE TABLE Genres (
  genre_id INT PRIMARY KEY,
  genre_name VARCHAR(255)
);

-- Table 8: Favorites--

CREATE TABLE Favorites (
  favorite_id INT PRIMARY KEY,
  user_id INT,
  song_id INT
);

-- Table 9: Recently_Played--

CREATE TABLE Recently_Played (
  recently_played_id INT PRIMARY KEY,
  user_id INT,
  song_id INT,
  play_date DATETIME
);

-- Table 10: Subscriptions--

CREATE TABLE Subscriptions (
  subscription_id INT PRIMARY KEY,
  user_id INT,
  subscription_type VARCHAR(255),
  start_date DATE,
  end_date DATE
);