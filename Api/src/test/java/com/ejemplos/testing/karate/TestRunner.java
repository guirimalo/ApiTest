package com.ejemplos.testing.karate;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner {
	
	Results results = Runner.path("classpath:animals").tags("~@skipme").parallel(5);
	
	@Test
	Karate urlListaEmpleados() {
		return Karate.run("empleadosList").relativeTo(getClass());
	}
	
	@Test
	Karate idEmpleado() {
		return Karate.run("idEmpleado").relativeTo(getClass());
	}

}
