<?php
require_once '/vendor/autoload.php';
/**
 * This is a default single command application skeleton.
 * 
 * It registers the class ("App" by default) defined in this file as a command and executes it when this file
 * is called from CLI. The class also has to implement basic behavior of an application by having $name and $version
 * protected static properties as well as public static function loadModules() which is responsible for loading any
 * required modules.
 * 
 * Scroll down to the definition of ```execute()``` method and implement your command.
 */

/*****************************************
 * CONFIG
 *****************************************/
// the array below is your command app's config, populate it with whatever config options you need
$config = array();

/*****************************************
 * APP DEFINITION
 *****************************************/
// this is the definition of your command app. Add your code to the ```execute()``` method.
// if you change the name of this class then be sure to change it also in the last line of this file
class App extends \Splot\Framework\Console\AbstractCommand
{

    protected static $name = 'SingleCommandApp';
    protected static $description = 'Lorem ipsum dolor sit amet...';
    protected static $version = '0.0.0-dev';

    // return an array of modules that you want to be booted before the command is executed
    public static function loadModules() {
        return array(
            new Splot\DevToolsModule\SplotDevToolsModule()
        );
    }

    public function execute($name = 'world') {
        /*****************************************
         * COMMAND APP CODE
         *****************************************/
        // remove these comments and implement your app code here!
        
        $this->writeln('Hello <info>'. $name .'</info>.');


    }

}

/*****************************************
 * RUN !!!
 *****************************************/
// and finally run the command app passing the name of the command class as 1st argument.
Splot\Framework\Framework::command('\App', $config, array(), defined('SPLOT_SCRIPT_HANDLER'));