javac -cp "./classes/" -d "./classes" "./src/java/xyz/hydar/ee/*.java"
java --enable-preview -cp "./classes/:./lib/*" xyz.hydar.ee.Hydar