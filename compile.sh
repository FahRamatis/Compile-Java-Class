java_location=/usr/lib/jvm/default/bin/java
current_package="$(awk '/package/' $1 | sed 's/package //g' | sed 's/;//g')"


file_path="$(pwd)"

$java_location -Dfile.encoding=UTF-8 -cp $file_path/target/classes $current_package.$2
