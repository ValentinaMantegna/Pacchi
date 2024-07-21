package org.example.poste.repository;


import org.example.poste.model.PianoTariffario;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static org.example.poste.constants.DBConfing.*;

public class PianoTariffarioRepository {
    public static List<PianoTariffario> getPiano() {
        List<PianoTariffario> piani = new ArrayList<>();
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM pianoTariffario");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {


                PianoTariffario piano = new PianoTariffario();
                piano.setId(rs.getInt("id"));
                piano.setNomeAzienda(rs.getString("nome_azienda"));
                piano.setNomePiano(rs.getString("nome_piano"));
                piano.setMaxPeso(rs.getDouble("max_peso"));
                piano.setMaxPacchi(rs.getInt("max_pacchi"));
                piano.setMaxDistanza(rs.getInt("max_distanza"));
                piano.setPrezzo(rs.getDouble("prezzo"));


                piani.add(piano);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return piani;
    }
}

