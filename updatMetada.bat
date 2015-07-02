set source="Art of Reading From DVD/images"
set dest="Generated Art Of Reading"
set imageMagick=c:\dev\art of reading\ImageMagick
set pngout=c:\dev\art of reading\pngout
set exifTool=c:\dev\art of reading\exiftool

set dest=%dest:"=%
set dest="%dest%/images"

FOR /R %dest% %%a in (*.png) DO ( 
	pushd "%%~dpa"

	call "%exiftool%" -E -overwrite_original_in_place -copyright="Copyright, SIL International 2009. This work is licensed under a Creative Commons Attribution-NoDerivs 3.0 Unported License. To view a copy of this license, visit http://creativecommons.org/licenses/by-nd/3.0/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA." -XMP-cc:License="http://creativecommons.org/licenses/by-nd/3.0/" -XMP:Marked="True" -XMP:ReuseAllowed="true" -XMP:AttributionUrl="http://SIL.org" -XMP:CollectionURI="http://www.ethnologue.com/show_product.asp?isbn=9781556712418" -XMP:CollectionName="International Illustrations; The Art Of Reading 3.0"  %%~na.png
	popd
)


