#!/bin/sh
cd $SNAP/jar
export GST_PLUGIN_PATH=$SNAP/usr/lib/x86_64-linux-gnu/gstreamer-1.0
export GST_PLUGIN_SCANNER=$SNAP/usr/lib/x86_64-linux-gnu/gstreamer-1.0/gst-plugin-scanner
java --add-exports=javafx.graphics/com.sun.javafx.css=ALL-UNNAMED --add-exports=javafx.base/com.sun.javafx.runtime=ALL-UNNAMED --add-exports=javafx.base/com.sun.javafx.event=ALL-UNNAMED --add-opens java.base/java.lang=ALL-UNNAMED --add-opens javafx.controls/javafx.scene.control=ALL-UNNAMED -Djdk.gtk.verbose=true -Djdk.gtk.version=2 -DVLCJ_INITX=no -Duser.dir=$SNAP/jar -Dfile.encoding=UTF-8 -Dprism.dirtyopts=false -Djavafx.cachedir=$SNAP_USER_COMMON -jar $SNAP/jar/Quelea.jar --userhome=$SNAP_USER_COMMON