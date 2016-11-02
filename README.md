# ArtOfReading
Index and processing scripts related to the Art Of Reading illustration collection from SIL International. Currently distributed from http://bloomlibrary.org/artofreading.

## Building
This repository does not contain the images themselves. It's just the various index files and scripts used to do the above.

### Creating the augmented image collection
The Art Of Reading DVD contains TIFs, with no embedded metadata.
Art Of Reading Free (this project) instead contains PNGs in which the license and
copyright are embedded in each image.
This was done once and may never have to be done again
(you can get these images by installing Art Of Reading Free). Reasons to re-generate
these would be if there were new images to add to the collection or if the embedded
IP information changed (e.g. to a different CC license).
For instructions on regenerating these images, see HowToGenerateTheImages.txt.

### About the Index Files

The first release of this package had only a simple index file that did not differentiate between languages. That file is called `index.txt` and we keep shipping it to maintain compatibility with some old version of WeSay.

The current index is named ArtOfReadingMultilingualIndex.txt.

If you create a new format, you should probably continue shipping that one for backwards compatibility, and just get a new name (e.g. ArtOfReadingMultilingualIndexV2.txt).

### Building the Windows Installer
Install a previous version and copy the `images` folder into the root of this repositories root folder, under a `Generated Art Of Reading` directory:
```
ArtOfReading
    ArtOfReadingMultilingualIndex.txt
    index.txt
    installer.iss
    License.txt
    Pre-InstallInfo.txt
    |-- Generated Art Of Reading
        |-- Images
```

Run InnoSetup with the installer.iss file.

## History
AOR started out as a DVD named "International Illustrations: The Art of Reading". It contained over 10k b&w line drawings from SIL entities around the world.

The package came with a permissive license, but it was just in English prose. It came with a commercial catalogue viewer (I think Portfolio from Extensis), so it couldn't be given away (we had to pay for each copy).

In 2011, in consultation with the Global Publishing department of SIL (the copyright holder), Hatton did the following:

* added a Creative Commons License, embedded in each image
* embedded the index words into each image
* converted to PNG and compressed
* created a simple Windows installer
* published for free on the bloomlibrary.org site as "the Art of Reading"

In 2014, McConnel make a Linux package for AOR.

In 2015, we used Google Translate API to add Arabic, French, Hindi, Portuguese,  Thai, Swahili, and Chinese index terms.

In October 2016, Arjen Lock and Michael Friedrich submitted Russian index items, and we released that as version 3.2.