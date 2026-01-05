class ContactModel {
  String name;
  String image;
  String number;
  String subTitle;

  ContactModel({required this.name, required this.image, required this.number, this.subTitle = ""});
}

List<ContactModel> contactList = [
  ContactModel(
    name: 'Mohamed',
    image: 'assets/images/dad.jpeg',
    number: "01064348959",
    subTitle: "My father",
  ),
  ContactModel(
    name: 'Salma',
    image: 'assets/images/mom.jpeg',
    number: "01211584351",
    subTitle: "My mother",
  ),
  ContactModel(
    name: 'Smart home',
    image: 'assets/images/smarthome.jpg',
    number: "01061906455",
    subTitle: "Y smart home",
  ),
  ContactModel(
    name: 'Zahraa',
    image: 'assets/images/banota.jpg',
    number: "01061906455",
    subTitle: "My sister",
  ),
  
];
