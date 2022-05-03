<%@page import="java.util.ArrayList"%>
<%@page import="demo.Disciplina"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%

DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");



Disciplina POO = new Disciplina("ILP007", "Programação Orientada a Objetos", "Conceitos e evolução da tecnologia de orientação a objetos. Limitações e diferenças entre o paradigma da programação estruturada em relação à orientação a objetos. Conceito de objeto, classe, métodos, atributos, herança, polimorfismo, agregação, associação, dependência, encapsulamento, mensagem e suas respectivas notações na linguagem padrão de representação da orientação a objetos. Implementação de algoritmos orientado a objetos utilizando linguagens de programação. Aplicação e uso das estruturas fundamentais da orientação a objetos.", "Segunda-Feira", "19h-22:30h");
Disciplina ING = new Disciplina("LIN600", "Inglês VI", "Aprimoramento da compreensão e produção oral e escrita por meio da integração das habilidades lingüístico-comunicativas. Ênfase na oralidade, atendendo às especificidades acadêmico-profissionais da área e abordando aspectos sócio-culturais da língua inglesa.", "Terça-Feira", "16:50h-18:30h");
Disciplina TG2 = new Disciplina("TTG103A", "Trabalho de Graduação 2","O estudante elaborará e apresentará, sob a orientação de docente, um Trabalho de Graduação, e o apresentará perante uma banca examinadora. Nos cursos onde há disciplinas de Projetos as mesmas deverão subsidiar o trabalho de graduação, com temas e propostas de projetos, casos, etc.","Sexta-Feira","13:10h-15h");

ArrayList<Disciplina> lista = new ArrayList<>();

lista.add(POO);


lista.add(TG2);

%>

<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        <h3>Pedro Henrique A. de Oliveira</h3>
        <h3>RA: 1290481913040</h3>
        <h3>Horário atual: <%= dtf.format(LocalDateTime.now())%></h3>
        <hr/>
        <h2>Minhas Disciplinas</h2>
        <div>
            <table border="1">
                <tr>
                    <th>Sigla</th>
                    <th>Disciplina</th>
                    <th>Ementa</th>
                    <th>Dia da Semana</th>
                    <th>Horário</th>
                </tr>
                <%for(Disciplina d : lista){%>
                <tr>
                    <td><%= d.getSigla()%></td>
                    <td><%= d.getNome()%></td>
                    <td><%= d.getEmenta()%></td>
                    <td><%= d.getDia_semana()%></td>
                    <td><%= d.getHorario()%></td>
                </tr>
                <%}%>
            </table>
        </div>
    </body>
</html>
