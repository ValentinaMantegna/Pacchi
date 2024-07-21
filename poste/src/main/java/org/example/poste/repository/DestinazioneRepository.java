package org.example.poste.repository;

import org.example.poste.model.Destinazione;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static org.example.poste.constants.DBConfing.*;

public class DestinazioneRepository {

    public static  List <Destinazione>  getDestinazione() {

        List<Destinazione> destinazioni = new ArrayList<>();

        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM destinazione");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {

                // creo uN PACCO con i dati del DB
                Destinazione destinazione = new Destinazione();
                destinazione.setId(rs.getInt("id"));
                destinazione.setNome(rs.getString("nome"));
                destinazione.setIndirizzo(rs.getString("indirizzo"));
                // aggiungo alla lista
                destinazioni.add(destinazione);
            }

        } catch (
                SQLException e) {
            e.printStackTrace();
        }

        return destinazioni;

    }
}

