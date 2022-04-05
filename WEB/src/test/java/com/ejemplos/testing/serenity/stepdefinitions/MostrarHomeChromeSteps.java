package com.ejemplos.testing.serenity.stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.actions.MoveMouse;
import net.serenitybdd.screenplay.actions.Scroll;
import net.serenitybdd.screenplay.ensure.Ensure;

import com.ejemplos.testing.serenity.tasks.navigation.NavigateTo;
import com.ejemplos.testing.serenity.tasks.search.Home;
import com.ejemplos.testing.serenity.tasks.search.LookForInformation;

public class MostrarHomeChromeSteps {

	@Given("El {actor} accede a la pagina Home desde chrome")
	public void el_usuario_accede_a_la_pagina_home_desde_chrome(Actor actor) {
		actor.wasAbleTo(
        		NavigateTo.theHomePage()
        );
	}
	
	@When("el {actor} busca en la pagina Home la etiqueta {string}")
	public void el_usuario_busca_en_la_pagina_home_la_etiqueta(Actor actor, String term) {
		actor.attemptsTo(
				Scroll.to(Home.TITLE).andAlignToTop()
        );
	}
	
	@Then("al {actor} se le muestra el titulo {string}.")
	public void al_usuario_se_le_muestra_el_titulo(Actor actor, String term) {
		actor.attemptsTo(
				Ensure.thatTheCurrentPage().title().isEqualToIgnoringCase(term)
        );
	}
}
