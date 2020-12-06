# XcodeBuildConfigurations
Managing Build Configurations in Xcode. (Tips from cocoacasts.com)

This documents shows how to safely manage data that is specific for a build configuration, such as API keys, credentials, and other sensitive data

1. Create swift file and name it Configuration.swift
2. Define enum of type String
3. Added cases for 1. staging, 2. production, 3. release
4. Add new key value pair on Info.plist -> key = Configuration : value : $(CONFIGURATION)
  CONFIGURATIONS value will be the current configuration
5. Use the value of "Configuration" for defining variables
  
Advantages
1. Type Safety as we're no longer dealing with optional value
2. Autocompletion, use the Configuration file on different parts of your app
