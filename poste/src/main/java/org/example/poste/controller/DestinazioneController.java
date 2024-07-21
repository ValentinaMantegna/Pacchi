package org.example.poste.controller;

import org.example.poste.model.Destinazione;
import org.example.poste.repository.DestinazioneRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("destinazioni")
public class DestinazioneController {

        @GetMapping("/tutteDestinazioni")
        public List<Destinazione> getDestinazione(){
            return DestinazioneRepository.getDestinazione();
        }
}
