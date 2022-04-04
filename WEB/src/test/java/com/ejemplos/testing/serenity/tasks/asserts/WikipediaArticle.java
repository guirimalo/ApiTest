package com.ejemplos.testing.serenity.tasks.asserts;

import net.serenitybdd.screenplay.targets.Target;

public class WikipediaArticle {
    public static final Target HEADING =  
    		Target.the("article identifier").
    		locatedBy("//h1");
}
