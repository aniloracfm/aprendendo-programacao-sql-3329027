-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"
-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso

WITH musica AS (
SELECT 
  tracks.TrackId  AS ID,
  tracks.Name     AS Musica,
  albums.Title    AS Album,
  artists.Name    AS artista
FROM
  tracks 
INNER JOIN
  albums
  ON
  albums.AlbumId = tracks.TrackId
INNER JOIN
  artists
  ON
  artists.ArtistId = albums.ArtistId
)
SELECT 
  artista,
  COUNT(Musica) AS Total_musica
FROM 
  musica
WHERE 
  artista LIKE "Caetano%";
