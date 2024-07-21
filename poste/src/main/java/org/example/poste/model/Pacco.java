package org.example.poste.model;


import lombok.*;

import java.util.Date;

@NoArgsConstructor
@AllArgsConstructor
@ToString
@Getter
@Setter
public class Pacco {
    private int id;
    private double peso;
    private String destinatario;
    private Date dataSpedizione;

}
