### Запуск (из текущей директории)

```bash
> sudo docker run --rm --gpus all -i -t -p 8889:8889 ctn
```

После запуска `jupyter lab` будет доступен здесь: `localhost:8889`

После запуска необходимо запустить терминал, затем пойти в директорию `mmdetection`, запустить `bash setup.sh`.

### build (из текущей директории)

```bash
> sudo docker build  -t ctn .
```

