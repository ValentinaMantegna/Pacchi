package org.example.poste.controller;


import org.example.poste.model.Pacco;
import org.example.poste.repository.PaccoRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/pacchi")
public class PaccoController {
    @GetMapping("/TuttiPacchi")
    public List<Pacco> getPacchi(){
        return PaccoRepository.getPacchi();
    }
}
