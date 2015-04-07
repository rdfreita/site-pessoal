package br.com.rdfreitas.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import br.com.rdfreitas.modelo.Conhecimento;
import br.com.rdfreitas.modelo.ConnectionFactory;

public class JdbcConhecimentoDao {
	private final Connection connection;

	public JdbcConhecimentoDao() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void adiciona(Conhecimento conhecimento) {
		String sql = "insert into skills (quantidade, conhecimento) values (?,?)";
		PreparedStatement stmt;
		try {
			stmt = connection.prepareStatement(sql);
			stmt.setInt(1, conhecimento.getQuantidade());
			stmt.setString(2, conhecimento.getConhecimento());
			stmt.execute();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void remove(Conhecimento conhecimento) {

		/*if (conhecimento.getId() == " ") {
			throw new IllegalStateException("Id da tarefa n„o deve ser nula.");
		}*/

		String sql = "delete from skills where id = ?";
		PreparedStatement stmt;
		try {
			stmt = connection.prepareStatement(sql);
			stmt.setLong(1, conhecimento.getId());
			stmt.execute();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void altera(Conhecimento conhecimento) {
		String sql = "update skills set quantidade = ?, conhecimento = ? where id = ?";
		PreparedStatement stmt;
		try {
			stmt = connection.prepareStatement(sql);
			stmt.setInt(1, conhecimento.getQuantidade());
			stmt.setString(2, conhecimento.getConhecimento());
			stmt.setLong(3, conhecimento.getId());
			stmt.execute();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Conhecimento> lista() {
		try {
			List<Conhecimento> conhecimento = new ArrayList<Conhecimento>();
			PreparedStatement stmt = this.connection
					.prepareStatement("select * from skills");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				// adiciona a tarefa na lista
				conhecimento.add(populaConhecimento(rs));
			}

			rs.close();
			stmt.close();

			return conhecimento;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public Conhecimento buscaPorId(Long id) {

		if (id == null) {
			throw new IllegalStateException("Id do item n„o deve ser nula.");
		}

		try {
			PreparedStatement stmt = this.connection
					.prepareStatement("select * from skills where id = ?");
			stmt.setLong(1, id);

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				return populaConhecimento(rs);
			}

			rs.close();
			stmt.close();

			return null;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void finaliza(Long id) {

		if (id == null) {
			throw new IllegalStateException("Id da tarefa n√£o deve ser nula.");
		}

		String sql = "update tarefas set finalizado = ?, dataFinalizacao = ? where id = ?";
		PreparedStatement stmt;
		try {
			stmt = connection.prepareStatement(sql);
			stmt.setBoolean(1, true);
			stmt.setDate(2, new Date(Calendar.getInstance().getTimeInMillis()));
			stmt.setLong(3, id);
			stmt.execute();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	private Conhecimento populaConhecimento(ResultSet rs) throws SQLException {
		Conhecimento conhecimento = new Conhecimento();

		// popula o objeto conhecimento
		conhecimento.setId(rs.getInt("id"));
		conhecimento.setQuantidade(rs.getInt("quantidade"));
		conhecimento.setConhecimento(rs.getString("conhecimento"));

		return conhecimento;
	}
}
