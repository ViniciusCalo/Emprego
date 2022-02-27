package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.xdevapi.Result;

import bd.ConectaBD;
import model.Vaga;

public class VagaDao {
	private Connection conexao;
	public VagaDao() {
		conexao = ConectaBD.getConnection();
	}
	
	public void inserir(Vaga v) {
		// STRING COM O COMANDO SQL
		String sql = "INSERT INTO vagas(descricao, req_obrig, req_des, remuneracao, beneficios, local_trabalho ) VALUES(?,?,?,?,?,?)"; 
		try {
			PreparedStatement comando = conexao.prepareStatement(sql);
			//TROCANDO AS '?'
			comando.setString(1, v.getDescricao());
			comando.setString(2, v.getReqObg());
			comando.setString(3, v.getReqDes());
			comando.setDouble(4, v.getRemuneracao());
			comando.setString(5,  v.getBeneficios());
			comando.setString(6, v.getLocal());
			
			//EXECUTAR O COMANDO
			comando.execute();
			//FECHAR O STATEMENT
			comando.close();
			//FECHAR A CONEXÃO
			conexao.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void atualizar(Vaga v) {
		// STRING COM O COMANDO SQL
		String sql = "UPDATE vagas SET descricao = ?, req_obrig = ? , req_des = ? , remuneracao = ?, aberta = ?, beneficios = ?, local_trabalho = ? WHERE idvaga = ?"; 
		try {
			PreparedStatement comando = conexao.prepareStatement(sql);
			//TROCANDO AS '?'
			comando.setString(1, v.getDescricao());
			comando.setString(2, v.getReqObg());
			comando.setString(3, v.getReqDes());
			comando.setDouble(4, v.getRemuneracao());
			comando.setInt(5, v.getAberta());
			comando.setString(6,  v.getBeneficios());
			comando.setString(7, v.getLocal());
			comando.setInt(8, v.getIdVaga());
			
			//EXECUTAR O COMANDO
			comando.execute();
			//FECHAR O STATEMENT
			comando.close();
			//FECHAR A CONEXÃO
			conexao.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void excluir(int idVaga) {
		// STRING COM O COMANDO SQL
		String sql = "DELETE FROM vagas WHERE idvaga = ?"; 
		try {
			PreparedStatement comando = conexao.prepareStatement(sql);
			//TROCANDO AS '?'
			comando.setInt(1, idVaga);
			//EXECUTAR O COMANDO
			comando.execute();
			//FECHAR O STATEMENT
			comando.close();
			//FECHAR A CONEXÃO
			conexao.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<Vaga> buscar(int tipoBusca){
		String sql = "";
		if (tipoBusca == 1 ) {
				sql = "SELECT * FROM VAGAS WHERE aberta = 1";
		}else if(tipoBusca == 2) {
				sql = "SELECT * FROM VAGAS WHERE aberta = 0";
		}else {
				sql = "SELECT * FROM VAGAS";
		}
		List<Vaga> vagas = new ArrayList<Vaga>();
		try {
			PreparedStatement comando = conexao.prepareStatement(sql);
			ResultSet rs = comando.executeQuery();
			//ENQUANTO HOUVER LINHAS PARA LER
			while(rs.next()) {
				Vaga v = new Vaga();
				v.setIdVaga(rs.getInt("idvaga"));
				v.setDescricao(rs.getString("descricao"));
				v.setReqObg(rs.getString("req_obrig"));
				v.setReqDes(rs.getString("req_des"));
				v.setRemuneracao(rs.getFloat("remuneracao"));
				v.setAberta(rs.getInt("aberta"));
				v.setBeneficios(rs.getString("beneficios"));
				v.setLocal(rs.getString("local_trabalho"));
				vagas.add(v);
			}
			rs.close();
			comando.close();
			conexao.close();
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vagas;
	}




public Vaga procurar(int idVaga){
	String sql = "SELECT * FROM vagas WHERE idvaga = ?";
	Vaga v = null;
	try {
		PreparedStatement comando = conexao.prepareStatement(sql);
		comando.setInt(1, idVaga);
		ResultSet rs = comando.executeQuery();
		//ENQUANTO HOUVER LINHAS PARA LER
		if(rs.next()) {
			v = new Vaga();
			v.setIdVaga(rs.getInt("idvaga"));
			v.setDescricao(rs.getString("descricao"));
			v.setReqObg(rs.getString("req_obrig"));
			v.setReqDes(rs.getString("req_des"));
			v.setRemuneracao(rs.getFloat("remuneracao"));
			v.setAberta(rs.getInt("aberta"));
			v.setBeneficios(rs.getString("beneficios"));
			v.setLocal(rs.getString("local_trabalho"));
		}
		rs.close();
		comando.close();
		conexao.close();
		
		
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return v;
}
}