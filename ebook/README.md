#### use gitbook to generate ebook in 3 formats (pdf,epub,mobi)

##### usage:
```bash
cd ebook
rm -rf dist
npm install
npm run 'gitbook:all'
```

##### notes:
* [Calibre](https://calibre-ebook.com/download) is an external dependency
  * under Windows:
    * the npm script will automatically download and install the PortableApps version of Calibre to: `ebook/dep`
      * this directory is not included in the git repository
  * for other platforms:
    * please confirm that its `ebook-convert` binary can be found in `$PATH`: `which "ebook-convert"`

##### download links for ebooks of the current commit of the _Serverless Guide_:
* [pdf](./dist/guide.pdf)
* [epub](./dist/guide.epub)
* [mobi](./dist/guide.mobi)
