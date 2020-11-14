# musicope-docker

A docker container for [musicope](https://github.com/oldrich-s/musicope)

## Usage

- Mount midifiles to `/opt/musicope/static/songs/`.
- Map http port to `80`

Example:

```
docker run --rm \
  -p 1412:80 \
  -v /home/paul/paul/midi:/opt/musicope/static/songs/ \
    pwighton/musicope:latest
```

Then navigate to [localhost:1412](http://localhost:1412)
