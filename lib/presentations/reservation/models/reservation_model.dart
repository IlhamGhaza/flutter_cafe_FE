class ReservationModel {
  //
  final String customerName;
  final String customerPhone;
  final String notes;
  final String status;
  final String reservationDate;
  final String reservationTime;
  final String tableNumber;

  ReservationModel(
      {required this.customerName,
      required this.customerPhone,
      required this.notes,
      required this.status,
      required this.reservationDate,
      required this.reservationTime,
      required this.tableNumber});
}
