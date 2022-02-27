package model;

public class Vaga {
	private int idVaga;
	private String descricao;
	private String reqObg;
	private String reqDes;
	private double remuneracao;
	private int aberta;
	private String beneficio;
	private String local;

	public int getIdVaga() {
		return idVaga;
	}

	public void setIdVaga(int idVaga) {
		this.idVaga = idVaga;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getReqObg() {
		return reqObg;
	}

	public void setReqObg(String reqObg) {
		this.reqObg = reqObg;
	}

	public String getReqDes() {
		return reqDes;
	}

	public void setReqDes(String reqDes) {
		this.reqDes = reqDes;
	}

	public double getRemuneracao() {
		return remuneracao;
	}

	public void setRemuneracao(double remuneracao) {
		this.remuneracao = remuneracao;
	}

	public int getAberta() {
		return aberta;
	}

	public void setAberta(int aberta) {
		this.aberta = aberta;
	}

	public String getBeneficios() {
		return beneficio;
	}

	public void setBeneficios(String beneficios) {
		this.beneficio = beneficios;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

}
