package com.ejemplos.testing.karate;
 
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
 
public class TestRunner {
 
	Results results = Runner.path("classpath:com.ejemplos.testing.karate").outputCucumberJson(true).parallel(5);
	
	@Karate.Test
	Karate empleadosList() {
		return Karate.run("empleadosList").relativeTo(getClass());
	}
	@Karate.Test
	Karate empleadosID1() {
		return Karate.run("empleadosID1").relativeTo(getClass());
	}
	@Karate.Test
	Karate empleadosID7() {
		return Karate.run("empleadosID7").relativeTo(getClass());
	}
	@Karate.Test
	Karate empleadosID10() {
		return Karate.run("empleadosID10").relativeTo(getClass());
	}
	@Karate.Test
	Karate empleadosID11() {
		return Karate.run("empleadosID11").relativeTo(getClass());
	}
	@Karate.Test
	Karate empleadosID9() {
		return Karate.run("empleadosID0").relativeTo(getClass());
	}
	@Karate.Test
	Karate empleadosIDnegativo() {
		return Karate.run("empleadosIDnegativo").relativeTo(getClass());
	}
}
 