# Deploying the personal academic website

This directory is configured for the personal GitHub Pages repository:

`FinalFantasy27/FinalFantasy27.github.io`

1. Copy the contents of this directory into the root of the GitHub repository.
2. Commit and push to `main`.
3. In GitHub, enable Actions write permission under `Settings -> Actions -> General -> Workflow permissions`.
4. In `Settings -> Pages`, choose `Deploy from a branch` and select `gh-pages`.
5. Wait for the `Deploy site` workflow to finish.

The public URL remains `https://finalfantasy27.github.io/`. Do not set `baseurl` to `/FinalFantasy27.github.io`.
