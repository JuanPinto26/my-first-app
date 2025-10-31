on:
    push:

jobs:
    build:
        runs-on: ubuntu-latest

        steps:
            - name: Checkout repository
              uses: actions/checkout@v2

            - name: Set up Docker
              uses: docker/setup-buildx-action@v1

            - name: Log the Image
              uses: |
                docker build -t my-app-image:latest .
                