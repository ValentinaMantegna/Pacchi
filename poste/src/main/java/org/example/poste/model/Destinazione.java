package org.example.poste.model;

import lombok.*;

@ToString
@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter


public class Destinazione {
    private int id;
    private String nome;
    private String indirizzo;
}
