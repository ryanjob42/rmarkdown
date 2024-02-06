# rmarkdown
An easy-to-use Docker image for rendering RMarkdown files.

## Usage
In short, you'll want to use `docker run` to launch a container from this image.
Since the RMarkdown file you want to render isn't in the image,
you will need to map it to somewhere within the container using the `-v` option.
Finally, you can give the path to that file (within the container) as an argument.
The conatiner will then run a script which renders the file,
saving the result to the same directory as the input file.

Here is how you can use the command if you're in a Bash terminal.
If you're using another terminal, all you should need to replace is the `${pwd}` command
with the appropriate command for your terminal to print the working directory.
This example command assumes that your RMarkdown file is in the current directory
and is named `test.rmd`.

```bash
docker run --rm -v ${pwd}:/data ryanjob42/rmarkdown /data/test.rmd
```
