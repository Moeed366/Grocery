class Completed_O_model{
  int id;
  bool expanded;
  String PlacedTime;
  String DeliveredTime;
  int item;
  double Total;
  bool status;

  Completed_O_model({required this.Total,required this.DeliveredTime,required this.id, required this.PlacedTime,required this.status,required this.item,this.expanded: false,});
}

List<Completed_O_model> Comp_ord_list= [

  Completed_O_model(id:1432, PlacedTime: "December,2022",status: false,Total: 32.5, DeliveredTime: 'Dec10,2022',item: 5),
  Completed_O_model(id:3443, PlacedTime: "October,2022",status: true,Total: 23.5, DeliveredTime: 'Dec10,2022',item: 6),
  Completed_O_model(id:4365, PlacedTime: "December,2022",status: false,Total: 12.5, DeliveredTime: 'Dec10,2022',item: 4),
  Completed_O_model(id:5543, PlacedTime: "November,2022",status: false,Total: 15.5, DeliveredTime: 'Dec10,2022',item: 5),
  Completed_O_model(id:6653, PlacedTime: "December,2022",status: true,Total: 12.5, DeliveredTime: 'Dec10,2022',item: 5),
  Completed_O_model(id:7743, PlacedTime: "November,2022",status: true,Total: 14.5, DeliveredTime: 'Dec10,2022',item: 3),
  Completed_O_model(id:8642, PlacedTime: "December,2022",status: false,Total: 12.5, DeliveredTime: 'Dec10,2022',item: 7),
  Completed_O_model(id:9432, PlacedTime: "November,2022",status: false,Total: 12.5, DeliveredTime: 'Dec10,2022',item: 5),
  Completed_O_model(id:1054, PlacedTime: "December,2022",status: false,Total: 12.5, DeliveredTime: 'Dec10,2022',item: 5),
];