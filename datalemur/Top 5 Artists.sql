WITH my_code As(
SELECT artist_name,
  DENSE_RANK()OVER(ORDER BY COUNT(gs.song_id) DESC) as artist_rank
  FROM artists AS art
  INNER JOIN songs as so
  ON art.artist_id=so.artist_id
  INNER JOIN global_song_rank AS gs
  ON so.song_id	=gs.song_id	
  WHERE gs.rank<=10
  GROUP BY artist_name
)
SELECT * FROM my_code 
where artist_rank<=5
