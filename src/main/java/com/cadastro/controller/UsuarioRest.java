package com.cadastro.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cadastro.modelo.Usuario;
import com.cadastro.repositoryes.UsuarioRepositorye;

@CrossOrigin(origins ="*")
@RestController
@RequestMapping(value="/api")
public class UsuarioRest {
	
	@Autowired
	UsuarioRepositorye us;

	
	@GetMapping("/cadastro")
    public List<Usuario> listarUsuario(){
		return us.findAll();
	}
	
	@PostMapping("/cadastro")
	public Usuario salvarCadastro(@RequestBody @Valid Usuario usuario) {
		return us.save(usuario);
	}
	
	@DeleteMapping("/cadastro")
	public void deletarCadastro(@RequestBody @Valid Usuario usuario) {
		us.delete(usuario);
	}
	
	@PutMapping("/cadastro")
	public Usuario atualizarCadastro(@RequestBody @Valid Usuario usuario) {
		return us.save(usuario);
		
	}
}
