#!/bin/bash

helps() {

echo "Usage:
      checkwp -t <theme name>
      Checks the theme's existence in Wordpress.org
      Example: checkwp -t twentytwenty
      
      checkwp -p <plugin name>
      Checks the plugins's existence in Wordpress.org
      Example: checkwp -p jetpack
      
      checkwp -v <plugin name>
      Checks the version's security.
      Example: checkwp -v 6.4.3
      
      checkwp -cli <command keyword>
      Provide's wp-cli usage and example
      Example: checkwp -cli plugin "
      exit 1
}
