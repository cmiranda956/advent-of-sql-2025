SELECT user_plays.song_id, COUNT(user_plays.song_id), songs.song_title AS title 
FROM user_plays 
INNER JOIN songs 
ON user_plays.song_id = songs.song_id 
GROUP BY user_plays.song_id, title 
ORDER BY count DESC;
