package org.example.poste.controller;

import org.example.poste.model.PianoTariffario;
import org.example.poste.repository.PianoTariffarioRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
@RestController
@RequestMapping(value = "/piani")
public class PianoTariffarioController {

        @GetMapping("/TuttiPiani")
        public List<PianoTariffario> getPiano(){
            return PianoTariffarioRepository.getPiano();
        }
    }

