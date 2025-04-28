

import 'package:quizuygulamasii/model/quizmodel.dart';
QuizModel loadQuestion(int questionIndex) {
  List<QuizModel> questionList = [
    QuizModel(
        "Bir algoritmanın zaman karmaşıklığını ifade eden notasyon hangisidir?",
        "O-Notasyonu",
        ["Zaman Grafiği", "Veri Akışı", "Gantt Diyagramı"]),


    QuizModel("Bilgisayarın temel iki donanım bileşeni nelerdir?",
        "İşlemci (CPU) ve Bellek (RAM)",
        ["Klavye ve Fare", "Sabit Disk ve Ekran Kartı", "Anakart ve Monitör"]),


    QuizModel("RAM neyi ifade eder ve ne amaçla kullanılır?"
        ,
        "Rastgele erişimli bellek ve geçici veri depolamak için",
        [
          "Kalıcı veri depolamak için",
          "Kalıcı veri depolamak için",
          "Ağ bağlantılarını yönetmek için"
        ]),

    QuizModel("Bir bilgisayar programında döngüler ne amaçla kullanılır?",
        "İşlemlerin tekrarlanarak yürütülmesi için",
        [
          "Belirli bir koşulun bir kez çalıştırılması için",
          "Programın başlamasını sağlamak için",
          "Verileri kalıcı olarak saklamak için"
        ]),

    QuizModel(
        "Veri tabanında bir tabloda her satırı eşsiz olarak tanımlayan alana ne ad verilir?",
        "Birincil Anahtar (Primary Key)",
        [" Tablonun Adı", "İndeks (Index)", "Yabancı Anahtar (Foreign Key)"]),

    QuizModel(
        "Hangi karakter kodlama sistemi, metin verilerini bilgisayarlarda temsil etmek için kullanılır?",
        "ASCII",
        ["HTML", " CSS", "XML"]),

    QuizModel("Hangi veri yapısı, son giren ilk çıkar prensibine göre çalışır?",
        "Stack",
        [" Queue", "Tree", "Graph"]),

    QuizModel(
        "Aşağıdaki hangi terim, bir bilgisayarın işlemcisi tarafından yürütülen temel işlemler dizisini ifade eder?",
        "Instruction",
        [" Algorithm", "Protocol", "Function"]),

    QuizModel(
        "Bir programlama dilinde, değişkenlerin hangi türü veri tutmak için kullanılır??",
        "Integer",
        [" Function", "Loop", "Operator"]),

    QuizModel(
        "Bir ağdaki veri iletimi için kullanılan temel protokoller arasında hangisi veri paketlerinin iletimini sağlar?",
        " UDP",
        [" HTTP", "FTP", "DNS"]),

    QuizModel(
        "Aşağıdaki hangi veri yapısı, düğümler arasında her iki yönde de bağlantıya sahip bir listeyi ifade eder?",
        " Doubly Linked List",
        ["Singly Linked List", "Circular Queue", "Hash Table"]),

    QuizModel(
        "Hangi algoritma türü, verileri küçük parçalara bölerek her bir parçayı ayrı ayrı sıralar ve sonra bu parçaları birleştirir?",
        "Merge Sort",
        [" Quick Sort", "Insertion Sort", "Bubble Sort"]),

    QuizModel(
        "Aşağıdaki hangi terim, veritabanı yönetim sistemlerinde verilerin yeniden düzenlenmesi ve optimize edilmesini ifade eder??",
        " Normalization",
        ["Indexing", "Sharding", "Replication"]),

    QuizModel(
        "Hangi kriptografi yöntemi, verileri şifrelemek için asimetrik anahtar çiftleri kullanır??",
        "RSA",
        [" DES", "AES", "MD5"]),

    QuizModel(
        "Aşağıdaki hangi veri yapısı düğümleri sıralı olarak gezmek için en etkili yöntemlerden biri olarak kabul edilir?",
        " Binary Search Tree",
        [" Hash Table", "Heap", "Trie"]),

    QuizModel(
        "Bir algoritmanın O(n log n) zaman karmaşıklığına sahip olması, ne anlama gelir?",
        "Algoritmanın verinin boyutuyla orantılı olarak logaritmik bir zamanda çalıştığı",
        [
          "Algoritmanın en kötü durumda lineer bir zaman karmaşıklığına sahip olduğu",
          "Algoritmanın verinin boyutu ile orantılı olarak logaritmik bir zaman karmaşıklığına sahip olduğu",
          "Algoritmanın verinin boyutunun logaritması ile orantılı olarak çalıştığı"
        ]),

    QuizModel(
        "Aşağıdaki hangi terim, veritabanı işlemlerinin performansını artırmak için verilerin parçalara ayrılması ve her bir parçanın ayrı bir sunucuda saklanmasını ifade eder?",
        " Sharding",
        [" Caching", "Clustering", "Indexing"]),

    QuizModel("Bir dağıtılmış sistemde CAP Teoremi neyi ifade eder?",
        "Konsistans, Erişilebilirlik, Bölünme Toleransı",
        [
          " Konsantrasyon, Erişim, Performansı",
          "Kararlılık, Esneklik, Performans",
          "Kabul Edilebilir Performans, Enerji Verimliliği, Güvenlik"
        ]),

    QuizModel(
        "Bir programlama dilinde inheritance (kalıtım) kavramı, hangi özellikleri ifade eder??",
        "Yeni bir sınıfın, mevcut bir sınıftan özellik ve metotları alması",
        [
          "Fonksiyonların yeniden kullanılabilirliğini sağlama",
          "Veritabanında veri bütünlüğünü sağlama",
          "Programın çalışma hızını artırma"
        ]),

    QuizModel(
        "Aşağıdaki hangi terim, veritabanındaki tablolarda ilişkileri tanımlar??",
        "Join",
        [" Index", "Schema", " View"]),


  ];
  return questionList[questionIndex];
}