import 'package:desafio/domain/oop_concept.dart';

class OopConceptRepository {
  List<OopConcept> getConcepts() {
    return [
      OopConcept(
        title: "Encapsulamento",
        concept:
            "Oi! Sou o Marley! Deixa eu te explicar sobre Encapsulamento: É como minha coleira e identificação - elas protegem e controlam minhas informações importantes. Em programação, encapsulamento é quando agrupamos dados relacionados e os métodos que operam nesses dados em uma única unidade (classe), controlando o acesso a eles. Assim como minha coleira só pode ser ajustada pelo meu dono, os dados encapsulados só podem ser acessados através de métodos específicos!",
      ),
      OopConcept(
        title: "Herança",
        concept:
            "Oi! Sou a Luna, sua cadelinha professora! Deixa eu te contar sobre Herança: é como quando eu aprendo truques da minha mamãe cachorra. Se ela sabe sentar e dar a patinha, eu também posso aprender rapidinho! Na programação, herança permite que uma classe (filha) receba características e comportamentos de outra classe (mãe). Assim, reaproveitamos código e organizamos melhor nossas ideias!",
      ),
      OopConcept(
        title: "Polimorfismo",
        concept:
            "Oi! Aqui é o Max, o doguinho sabichão! Polimorfismo parece complicado, mas é como quando eu sei latir de jeitos diferentes: um latido pra pedir comida, outro pra brincar e outro quando escuto o carteiro! Na programação, polimorfismo é a capacidade de usar um mesmo método de formas diferentes dependendo do contexto. Ou seja, um comportamento adaptável, assim como meus latidos!",
      ),
      OopConcept(
        title: "Abstração",
        concept:
            "Olá! Sou a Bella, sua instrutora canina! Vamos falar de Abstração: é como quando você vê meu crachá de cão-guia — você não precisa saber tudo que eu faço por trás das cenas, só que eu te ajudo com segurança e carinho. Na programação, abstração significa esconder detalhes complexos e mostrar apenas o necessário. Isso deixa tudo mais simples e organizado, como um bom passeio!",
      ),
      OopConcept(
        title: "Classe",
        concept:
            "Oi! Sou o Thor, o professor de POO com patas! Classe é como meu manual de raças! Ele diz tudo que cachorros da minha raça geralmente fazem: latem, correm, brincam… Na programação, uma classe define a estrutura e o comportamento de um objeto. É como o plano antes de construir um doguinho como eu!",
      ),
      OopConcept(
        title: "Objeto",
        concept:
            "Uau! Aqui é a Mel, pronta pra te ensinar! Objeto é como eu mesma: um doguinho específico com nome, cor e energia pra brincar! Na programação, um objeto é uma instância real de uma classe. Se a classe é o plano, o objeto é o cãozinho em carne, osso e fofura!",
      ),
    ];
  }
}
