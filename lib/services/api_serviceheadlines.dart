
import 'dart:convert';
import 'package:firebaseapp/model/article_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  //let's add an Endpoint URL, you can check the website documentation
  // and learn about the different Endpoint
  //for this example I'm going to use a single endpoint
 


  //NOTE: make sure to use your OWN apikey, you can make a free acount and
  // choose a developer option it's FREE
  


  //Now let's create the http request function
  // but first let's import the http package

  Future<List<Article>> getArticle() async {
 
 final res  = await http.get(Uri.parse('https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=a80aad8a17dc46089a176be9c73e5724'));
     print(res);
 // var res = await http. get(Uri.https('newsapi.org', 'v2/everything?q=tesla&from=2021-09-01&sortBy=publishedAt&apiKey=a80aad8a17dc46089a176be9c73e5724'));

    //first of all let's check that we got a 200 statu code: this mean that the request was a succes
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      //this line will allow us to get the different articles from the json file and putting them into a list
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}