package org.example.poste.repository;

import org.example.poste.model.Pacco;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static org.example.poste.constants.DBConfing.*;

public class PaccoRepository {

    public static List<Pacco> getPacchi() {
        List<Pacco> pacchi = new ArrayList<>();
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM pacco");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {

                // creo uN PACCO con i dati del DB
                Pacco pacco = new Pacco();
                pacco.setId(rs.getInt("id"));
                pacco.setPeso(rs.getDouble("peso"));
                pacco.setDestinatario(rs.getString("destinatario"));
                pacco.setDataSpedizione(rs.getDate("data_spedizione"));
                // aggiungo alla lista
                pacchi.add(pacco);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return pacchi;
    }
}
