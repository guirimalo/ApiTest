package com.ejemplos.testing.karate;
 
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
 
public class TestRunner {
 
	Results results = Runner.path("classpath:animals").outputCucumberJson(true).parallel(5);
	
	@Karate.Test
	Karate ejemplo() {
		return Karate.run("ejemplo").relativeTo(getClass());
	}
	@Karate.Test
	Karate empleadosList() {
		return Karate.run("empleadosList").relativeTo(getClass());
	}
	@Karate.Test
	Karate empleadosID() {
		return Karate.run("empleadosID").relativeTo(getClass());
	}
}
 