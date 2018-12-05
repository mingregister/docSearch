# docSearch
Search document content base on your key word on web, and show the result.

docker build -t docsearch:v1.0 .
docker run -d -p 8000:8000 --name docSearch docsearch:v1.0
