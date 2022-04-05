package com.ejemplos.testing.serenity.tasks.search;

import org.openqa.selenium.By;

import net.serenitybdd.screenplay.targets.Target;

public class Home {
    public static final Target TITLE =  
    		Target.the("title").
    		locatedBy("//html/head/title");
}
