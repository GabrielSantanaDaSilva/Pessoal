package com.generation.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping

public class HelloWorldController {

	@GetMapping("/Hello-World")
	public String helloWorld(){
		
		return "Hello World";
		// TODO Auto-generated method stub

	}
	@GetMapping("/bsm")
	public String bsmGen() {
		
		return "Proatividade,Orientaçao ao futuro, comunicação não violenta";
	}
	
	@GetMapping("/objetivos")
	public String objetivosSemana() {
		return "Aprender mais sobre o framwork, melhorar minhas habilidades de programação e alinhar e orgaanizar meu horario e atividades";
	}

}
