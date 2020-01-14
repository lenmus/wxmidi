# wxMidi
wxMidi is a C++ wrapper for wxWidgets around the PortMidi library. With this component, software developers using the wxWidgets application development framework can add MIDI in/out support to any wxWidgets application. 

wxMidi offers a set of classes: *wxMidiSystem*, *wxMidiDevice*, *wxMidiMessage*, *wxMidiDatabaseGM* and derived from them, that interfaces wxWidgets with the PortMidi library.

#### Why wxMidi?

During LenMus Phonascus development, it was necessary to write code to deal with MIDI messages. As I was using wxWidgets, I thought it could be of benefit for the wxWidgets developers community to put my code available as an wxWidgets component. It is a way of saying 'thank you' to all other wxWidgets developers.


## Table of Contents

- [Features](#features)
- [Documentation](https://lenmus.github.io/wxmidi/)
- [Installation](#install)
- [License](#license)
- [Help, bug reports and feedback](#help)
- [Acknowledgements](#acknowledge)
- [Changelog](CHANGELOG.txt)


## <a name="features" />Features

wxMidi provides a suitable interface, object oriented, to use portmidi with wxWidgets.
- All strings has been moved from PortMidi and adapted to support internationalization.
- In PortMidi SysEx messages are received in chunks with real-time messages interleaved. In wxMidi, sysex messages are received completed, in a single string of bytes, and any real-time message embedded is delivered before the sysex message is delivered.
- In PortMidi user has to deal with buffer's allocation issues. In wxMidi, all buffer allocation for messages is hidden in the wxMidi classes. User has not to worry abut this.
- wxMidi also includes an additional feature, class wxMidiDatabaseGM, which provides methods for dealing with the General MIDI Standard (GM) instruments list.

By now, these classes wrap only the most important PortMidi features but they are perfectly integrated with wxWidgets and easily extensible since they provide good commented code and documentation.

The wxMidi package includes a sample application that uses the wxMidi classes showing their main features and usage.


## Documentation

Extensive documentation is available at https://lenmus.github.io/wxmidi/

## <a name="install" />Installation and usage

No installation needed. Use wxMidi source files as part of your application source code. wxMidi is just two source files and one header file. Copy them to your application source tree, and compile them with your code.

Obviously you will also require the PortMidi library and you will have to modify your application makefile or project build file to link with this library.

In Linux, portmidi is normally already installed in your system. If not, install package portmidi. For instance, in Debian based systems, open a terminal window and enter:

```
sudo apt-get install libportmidi-dev
```

In MS Windows the situation is just the contrary: unless another package has already installed portmidi, you have great chances to have to install it.



## <a name="license" />License

**wxMidi** is free software: you can redistribute it and/or modify it under the terms of the GNU Lesser General Public License version 3
or later as published by the Free Software Foundation, with the wxWindows 3.1 exception. This permissive license includes the fulltext of the LGPL, but has an exception that allows you to use, copy, link, modify and distribute binary object code versions of wxMidi under licenses of your own choosing. Also allows static linking.

For details see files:
- [LICENSE.spdx](LICENSE.spdx)
- [LICENSE.txt](LICENSE.txt)
- [LPGL-3.0.txt](LPGL-3.0.txt)
- [WxWindows-exception-3.1.txt](WxWindows-exception-3.1.txt)


## <a name="help" />Help, bug reports and feedback

Feel free to ask any question or to send feedback. I would like very much to know how you feel about the software and hear your suggestions for improvements. Thank you! And if you encountered a bug, please tell about it. Explain what you did and how you encountered it, and what happened afterwards. Most importantly, state how to go about and recreate the same error. Please be as descriptive as possible and remember to give exact error messages, program version number and operating system name and version.

For help, feedback or bug reports go to the wxMidi [issues page](https://github.com/lenmus/wxmidi/issues) and create a new issue.

Thanks a lot for helping make wxMidi better!


## <a name="acknowledge" />Acknowledgements

The following people have contributed to **wxMidi**:

##### Management & development:
- Cecilio Salmerón (Project management and hands for all)

##### Patches and other:
- Andreas Micheler (Patch to fix memory leaks problem with PortMidi)
- Brian Walton (Feedback and help for testing SysEx for version 2.0)

##### Translations:
- Karlos del Olmo Serna (Basque translation)
- Jack Van Handenhove (Dutch translation)
- Carlos Alarcia (French translation)
- Emilio Mesías and Xema Sanxurxo Rodríguez (Galician translation)
- Undine Peters (German translation)
- Mauro Giubileo (Italian translation)
- 卢文汐 (Wenxi Lu)  (Simplified Chinese translation)
- Cecilio Salmerón (Spanish translation)
- Elif Ozturk (Turkish translation)



