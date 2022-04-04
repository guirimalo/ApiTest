package com.ejemplos.testing.serenity.stepdefinitions;

import io.cucumber.java.Before;
import io.cucumber.java.ParameterType;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.actors.OnStage;
import net.serenitybdd.screenplay.actors.OnlineCast;
import net.serenitybdd.screenplay.ensure.Ensure;

import com.ejemplos.testing.serenity.tasks.asserts.LookForInformation;
import com.ejemplos.testing.serenity.tasks.asserts.WikipediaArticle;
import com.ejemplos.testing.serenity.tasks.navigation.NavigateTo;


public class WebHome {

	@Given("^El usuario quiere acceder a la pagina Home desde chrome$")
	public void el_usuario_quiere_acceder_a_la_página_home_desde_chrome() {
	    System.out.println("Given");
	}

	@When("^el usuario accede a la pagina a traves de la URL LucAPI - Home$")
	public void el_usuario_accede_a_la_página_a_través_de_la_url_luc_api_home() {
		System.out.println("When");
	}

	@Then("^se le muestra la informacion inicial de la pagina.$")
	public void se_le_muestra_la_información_inicial_de_la_página() {
		System.out.println("Then");
	}
}
