# BEL.bio website

![Published](https://github.com/biodati/biodati.com.hugo/workflows/Published/badge.svg)

This is the hugo-based website repository for the BEL.bio project. We are using the
[Syna Hugo theme](https://themes.gohugo.io/syna/).

## Usage

> Prerequisites: Go, Hugo, aws (Amazon AWS cli and S3 write credentials)

To start your website run the following commands:

**Development**:

```
$ git clone git@github.com:belbio/belws.git
$ hugo server -D
```

**Production**:

```
$ hugo # This command would generate the static website in the public/ directory

aws s3 sync "public" "s3://bel.bio" --acl "public-read"
```

## Directory Structure

We're using the standard directory structure using content pages.

```
├─ content/
|  └ _global/ # All global fragments are located in this directory
|  └ _index/ # Landing page is in this directory and it's url is changed to **/**.
|  └ about/ # About page
├ layouts/ # You can add extra layout files here. A sample custom fragment is available as a sample.
├ static/ # Your static files are in this directory.
├ themes/ # Hugo uses this directory as a default to look for themes. Syna theme is a git submodule available in this directory.
├ .gitignore
├ .gitmodules
├ config.toml # Hugo config file containing general settings and menu configs.
```

For storing images in the static directory, note that Syna fragments look for
images in their own fragment directory, page directory and `static/images`
directory. Read our [image fallthrough documentation](https://syna.okkur.org/docs/image-fallthrough/) for more info.

Further details read our [full documentation](https://syna.okkur.org/docs).

## Credits

Website:

-   [Hugo](https://gohugo.io/) static site generator
-   [Syna Hugo theme](https://themes.gohugo.io/syna/)
-   [Home page hero background image](https://pixabay.com/illustrations/virus-microscope-infection-disease-4030721/) created by <a href="https://pixabay.com/users/geralt-9301/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=4030721">Gerd Altmann</a> from <a href="https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=4030721">Pixabay</a>
