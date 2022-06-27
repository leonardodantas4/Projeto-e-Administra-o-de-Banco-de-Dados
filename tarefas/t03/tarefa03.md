# Resumo sobre ODBC

ODBC (Open Database Connectivity) é um padrão para acesso a sistemas gerenciadores de bancos de dados (SGBD). Este padrão define um conjunto de interfaces que permitem o uso de linguagens de programação como Visual Basic, Delphi, Visual C++, Python, Java, entre outras capazes de utilizar estas interfaces, para ter acesso a uma vasta gama de bases de dados distintas sem a necessidade de codificar métodos de acesso especializados. 

O ODBC atinge a independência de bancos de dados usando drivers para operarem como uma camada de tradução entre a aplicação e o SGBD. As aplicações usam funções ODBC através de um gerenciador de driver ODBC (ODBC driver manager) com a qual está ligada e o driver passa a query para o SGBD.

A implementação de uma aplicação baseada em ODBC permite que a mesma possa utilizar simultaneamente o MySQL, o Access e o SQL Server com pouca necessidade de mudanças na sua camada de dados. O uso destas interfaces está condicionado à existência de drivers ODBC específicos para as bases de dados que se deseja acessar.

### Pyodbc

É um módulo Python de código aberto que simplifica o acesso a bancos de dados ODBC, onde implementa a especificação DB API 2.0. Essa especificação foi projetada para fornecer uma interface consistente para vários bancos de dados e ajudar os desenvolvedores a escrever aplicativos que podem funcionar com diferentes bancos de dados sem alterações significativas no código. Um módulo ODBC do Python permite organizar um código logicamente que o torna mais fácil de entender e usar. 

---

# Resumo sobre ORM

É uma técnica utilizada para fazer o mapeamento entre sistemas orientados a objetos e bancos de dados relacionais, onde as tabelas do banco de dados são representadas em classes e os registros das tabelas seriam instâncias dessas classes. Por exemplo, ao utilizar o mapeamento objeto-relacional, o desenvolvedor não precisa se preocupar em escrever as query’s para consultas, inserções, etc. O principal objetivo das técnicas de mapeamento de objeto-relacional na programação é guardar instâncias de objetos em registros de tabelas.

### Peewee

Peewee é um ORM destinado a criar e gerenciar tabelas de banco de dados relacionais através de objetos Python. O Peewee é destinado a projetos de pequeno/médio porte e se destaca pela simplicidade quando comparado a outros ORM mais conhecidos.