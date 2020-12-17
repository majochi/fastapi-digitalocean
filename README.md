# FastAPI on Digitalocean Apps Platform


## Usage

[![Deploy to DO](https://mp-assets1.sfo2.digitaloceanspaces.com/deploy-to-do/do-btn-blue.svg)](https://cloud.digitalocean.com/apps/new?repo=https://github.com/majochi/fastapi-digitalocean/tree/master)

or locally:

    docker build -t fastapi-digitalocean .
    docker run -it --rm fastapi-digitalocean

## Notes

python slug approach works but build is slow

    Procfile:
    web: python main.py

    main.py:
    ...
    if __name__ == '__main__':
        import uvicorn
        import os

        uvicorn.run("main:app", host="0.0.0.0", port=int(os.environ.get("PORT", 8000)), log_level="info")


Dockerfile based builds are faster and better to configure and Procfile and
_ifmain_ are not necessary.
