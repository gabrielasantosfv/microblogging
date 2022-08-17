import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:microblogging/app/shared/utils/snackbar.dart';
import 'package:mobx/mobx.dart';

import 'home_service.dart';
import 'models/post_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  @observable
  List<News?> listPublications = [
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

  @observable
  bool progressListPublications = false;

  @action
  Future<void> sortList() async {
    progressListPublications = true;
    listPublications.sort(
      (a, b) => b!.message!.createdAt.compareTo(a!.message!.createdAt),
    );
    progressListPublications = false;
  }

  @observable
  bool progressListNews = false;

  @observable
  List<News> listNews = ObservableList();

  @observable
  bool updatingListNews = false;

  @action
  Future<void> getListNews(BuildContext context) async {
    try {
      if (updatingListNews) {
        progressListNews = false;
      } else {
        progressListNews = true;
      }

      listNews.clear();

      final result = await HomeService().getListNews(context);

      if (result != null) {
        result.news.forEach((element) {
          element.user.verified = true;
          element.message.numberLikes = Random().nextInt(800) + 100;
          element.message.numberComments = Random().nextInt(800) + 100;
          element.message.liked = Random().nextBool();
          listNews.add(element);
        });

        listNews.sort(
          (a, b) => b.message!.createdAt.compareTo(a.message!.createdAt),
        );

        progressListNews = false;
      }
    } catch (e) {
      showSnackBar(context: context, message: e.toString(), color: Colors.red);
      progressListNews = false;
    }
  }
}
