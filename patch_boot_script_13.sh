#!/bn/sh

echo "patching makefile"


cp -r work/boot_script_patch/Makefile1 work/clfs-embedded-bootscripts/

cp -r work/boot_script_patch/bootscript_Makefile.patch work/clfs-embedded-bootscripts/

cd work/clfs-embedded-bootscripts/

patch Makefile bootscript_Makefile.patch

echo "makefile patch completed"

cd ../../
