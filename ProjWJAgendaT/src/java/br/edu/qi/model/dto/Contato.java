
package br.edu.qi.model.dto;

public class Contato {
    private long id;
    private String nome;
    private String telefone;
    private String email;

    public long getId() {
        return id;
    }

    public void setId(long id) { //dentro do parênteses é algo que vem externo
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "<h1>Dados do contato</h1>"
                + "<br>Nome: " + nome
                + "<br>Id: " + id
                + "<br>Telefone: " + telefone
                + "<br>E-mail: " + email;
    }
    
    
}
