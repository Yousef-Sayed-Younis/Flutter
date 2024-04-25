class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product({
    required this.id,
    required this.image,
    required this.price,
    required this.title,
    required this.subTitle,
    required this.description,
  });
}

List<Product> products = [
  Product(
    id: 1,
    price: 59,
    title: "سماعات لاسلكية",
    image: "images/airpod.png",
    subTitle: "جودة صوت عالية",
    description: "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
  Product(
    id: 2,
    price: 1099,
    title: "جهاز موبايل",
    image: "images/mobile.png",
    subTitle: "وأصبح للموبايل قوة",
    description: "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
  Product(
    id: 3,
    price: 39,
    image: "images/class.png",
    title: "نظارات ثلاثية الأبعاد",
    subTitle: "لنقلك للعالم الافتراضي",
    description: "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
  Product(
    id: 4,
    price: 56,
    title: "سماعات",
    image: "images/headset.png",
    subTitle: "لساعات استماع طويلة",
    description: "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
  Product(
    id: 5,
    price: 68,
    title: "مسجل صوت",
    image: "images/speaker.png",
    subTitle: "سجل اللحظات المهمة حولك",
    description: "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
  Product(
    id: 6,
    price: 39,
    title: "كاميرات كمبيوتر",
    image: "images/camera.png",
    subTitle: "بجودة ودقة صورة عالية",
    description: "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
];
