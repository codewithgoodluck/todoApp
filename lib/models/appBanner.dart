class AppBanner{
  final int id;
  final String title;
  final String thumbnailUrl;

  AppBanner(this.id, this.title, this.thumbnailUrl);
}

List<AppBanner> appBannerList = [
   AppBanner(1, 'Gooluck', 'https://ng.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/89/762414/1.jpg?2533'),
   AppBanner(2, 'Mordi', 'https://ng.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/36/009817/1.jpg?8357'),
   AppBanner(3, 'Sugar', 'https://ng.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/77/745887/1.jpg?1158')
];