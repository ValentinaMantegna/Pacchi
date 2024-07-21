package org.example.poste.model;


import lombok.*;

@ToString
@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
public class PianoTariffario {

    private int id;
    private String nomeAzienda;
    private String nomePiano;
    private double maxPeso;
    private int  maxPacchi;
    private int maxDistanza;
    private double prezzo;

 }
