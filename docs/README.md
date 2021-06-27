```bash
# reinstall database
docker pull phpdoc/phpdoc
docker run --rm -v $(pwd)/../cms/:./phpdoc phpdoc/phpdoc
```