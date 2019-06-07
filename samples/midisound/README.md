# wxMidi sample application

File *midisound.cpp* is a little wxWidgets application that uses the wxMidi classes. Its purpose is to show the library main features and usage.

## Building

Please note that, before building, all dependencies (wxWidgets, portmidi and porttime libraries) must be already installed. To compile and build the sample just open a command window, move to the folder with the sample and run:

```
make -f makefile.unix
```

Run the application:

```
./midisound
```

Remove all created files, for cleaning the repo tree:

```
make -f makefile.unix clean
```

