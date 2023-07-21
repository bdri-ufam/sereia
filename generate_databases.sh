# Restoring NBA database
# echo "Restoring NBA database"
# mongorestore --username sereia --password sereia@mongo --port=27017 --authenticationDatabase=admin --db=nba /databases/nba/nba.bson

# Restoring Twitter database
# echo "Restoring Twitter database"
# mongorestore --username sereia --password sereia@mongo --port=27017 --authenticationDatabase=admin --db=twitter /databases/twitter/twitter.bson

# Restoring DBLP database
echo "Restoring DBLP database"
mongorestore --username sereia --password sereia@mongo --port=27017 --authenticationDatabase=admin --db=dblp /databases/dblp/dblp.bson

# Restoring IMDb database
# echo "Restoring IMDb database"
# mongorestore --username sereia --password sereia@mongo --port=27017 --authenticationDatabase=admin --db=imdb /databases/imdb/

# Restoring Yelp! database
# echo "Restoring Yelp! database"
# mongorestore --username sereia --password sereia@mongo --port=27017 --authenticationDatabase=admin --db=yelp_expanded /databases/yelp/