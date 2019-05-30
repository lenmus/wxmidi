# wxMidi
wxMidi is a C++ wrapper for wxWidgets around the PortMidi library. With this component, software developers using the wxWidgets application development framework can add MIDI in/out support to any wxWidgets application. 

wxMidi offers a set of classes: *wxMidiSystem*, *wxMidiDevice*, *wxMidiMessage*, *wxMidiDatabaseGM* and derived from them, that interfaces wxWidgets with the PortMidi library.

# Features

wxMidi provides a suitable interface, object oriented, to use portmidi with wxWidgets.
- All strings has been moved from PortMidi and adapted to support internationalization.
- In PortMidi SysEx messages are received in chunks with real-time messages interleaved. In wxMidi, sysex messages are received completed, in a single string of bytes, and any real-time message embedded is delivered before the sysex message is delivered.
- In PortMidi user has to deal with buffer's allocation issues. In wxMidi, all buffer allocation for messages is hidden in the wxMidi classes. User has not to worry abut this.
- wxMidi also includes an additional feature, class wxMidiDatabaseGB, which provides methods for dealing with the General MIDI Standard (GM) instruments list.

By now, these classes wrap only the most important PortMidi features but they are perfectly integrated with wxWidgets and easily extensible since they provide good commented code and documentation.

The wxMidi package includes a sample application that uses the wxMidi classes showing their main features and usage.


# Why wxMidi?

During LenMus Phonascus development, it was necessary to write code to deal with MIDI messages. As I was using wxWidgets, I thought it could be of benefit for the wxWidgets developers community to put my code available as an wxWidgets component. It is a way of saying 'thank you' to all other wxWidgets debvelopers.

# Documentation

Extensive documentation is available at http://wxcode.sourceforge.net/docs/wxmidi/

# Installation and usage

No installation needed. Use wxMidi source files as part of your application source code. wxMidi is just two source files and one header file. Copy them to your application source tree, and compile them with your code.

Obviously you will also require the PortMidi library and you will have to modify your application makefile or project build file to link with this library.

In Linux, portmidi is normally already installed in your system. If not, install package portmidi. For instance, in Debian based systems open a terminal window and enter:

```
	sudo apt-get install libportmidi-dev
```

In MS Windows the situation is just the contrary: unless another package has already installed portmidi, you have great chances to have to install it. 
