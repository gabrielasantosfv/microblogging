import 'package:mobx/mobx.dart';

import 'models/post_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  @observable
  List<News> listPublications = [
    News(
      user: User(
        name: 'Julia Almeida',
        profilePicture:
            'https://www.tenda.com/eudouconta/wp-content/uploads/2021/09/Pessoa-fisica-mobile.jpg',
        verified: false,
      ),
      message: Message(
        content:
            'Lorem ipsum in habitasse pretium gravida accumsan ipsum, quam pharetra urna volutpat quisque venenatis, ipsum lorem viverra adipiscing aptent non.',
        createdAt: '2022-08-09T15:10:33Z',
        liked: true,
        numberComments: 14,
        numberLikes: 48,
      ),
    ),
    News(
      user: User(
        name: 'Gabi Santos',
        profilePicture:
            'https://media-exp1.licdn.com/dms/image/C4E03AQGvzobOG-_b5A/profile-displayphoto-shrink_800_800/0/1628476768908?e=1666224000&v=beta&t=59Z5uO7eAo0P_IYf8c2I4sGf7YXbUN1B_9gZ8KvBFBo',
        verified: false,
      ),
      message: Message(
        content:
            'Lorem ipsum in habitasse pretium gravida accumsan ipsum, quam pharetra urna volutpat quisque venenatis, ipsum lorem viverra adipiscing aptent non.',
        createdAt: '2022-08-11T18:40:33Z',
        liked: true,
        numberComments: 17,
        numberLikes: 68,
      ),
    ),
    News(
      user: User(
        name: 'Caio Melo',
        profilePicture:
            'https://kedimanassif.com.br/wp-content/uploads/2021/01/Como-saber-se-a-pessoa-vai-ficar-careca-500x270.jpg',
        verified: false,
      ),
      message: Message(
        content:
            'Aucibus placerat sollicitudin lorem consequat convallis turpis volutpat tincidunt sodales torquent curabitur ullamcorper, neque vehicula molestie justo morbi tristique vehicula sagittis nullam etiam odio.',
        createdAt: '2022-08-04T13:10:33Z',
        liked: false,
        numberComments: 16,
        numberLikes: 38,
      ),
    ),
    News(
      user: User(
        name: 'Beatriz Santiago',
        profilePicture:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWNbhj1cYs6SGg_jCUCLAfrcDsd4t8KHbzHQ&usqp=CAU',
        verified: false,
      ),
      message: Message(
        content:
            'Lorem ipsum in habitasse pretium gravida accumsan ipsum, quam pharetra urna volutpat quisque venenatis, ipsum lorem viverra adipiscing aptent non.',
        createdAt: '2022-08-15T16:10:33Z',
        liked: true,
        numberComments: 16,
        numberLikes: 57,
      ),
    ),
    News(
      user: User(
        name: 'Felipe Costa',
        profilePicture:
            'https://img.freepik.com/fotos-gratis/retrato-de-homem-loiro-extrovertido-bonito-mostrando-o-polegar-para-cima-em-aprovacao-incentive-a-visita-a-loja-estudante-do-sexo-masculino-convidando-pessoas-para-eventos-de-verao-ou-cursos-com-desconto-especial-fundo-amarelo_1258-59741.jpg?w=2000',
        verified: false,
      ),
      message: Message(
        content:
            'Per proin mattis vulputate justo aptent vivamus pellentesque, phasellus accumsan feugiat sodales odio tristique sed nunc, mattis libero fusce dolor porttitor quisque. conubia rutrum aliquam commodo curabitur molestie adipiscing nibh donec ligula primis leo.',
        createdAt: '2022-08-16T09:10:33Z',
        liked: false,
        numberComments: 34,
        numberLikes: 73,
      ),
    ),
    News(
      user: User(
        name: 'Bruno Oliveira',
        profilePicture:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROYIxfO0el9_f17_msy47K6rpofzEQfA8Dvg&usqp=CAU',
        verified: false,
      ),
      message: Message(
        content:
            'Lorem ipsum in habitasse pretium gravida accumsan ipsum, quam pharetra urna volutpat quisque venenatis.',
        createdAt: '2022-08-09T19:10:33Z',
        liked: false,
        numberComments: 19,
        numberLikes: 58,
      ),
    ),
  ];
}
