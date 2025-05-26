import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final String label;
  final int tableType;
  final Color? labelColor;
  final VoidCallback? onTap;
  final ValueChanged<String>? tableSelector;

  const CustomCard({
    super.key,
    this.onTap,
    required this.label,
    required this.tableType,
    this.labelColor,
    this.tableSelector,
  });

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isSelected = false;

  void _toggleColor() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  Color get seatColor => isSelected ? Colors.black : Colors.grey[300]!;

  Color get tableColor => isSelected ? Colors.black : Colors.grey[100]!;

  Color get textColor => isSelected ? Colors.white : Colors.black;

  Widget _buildSeat({double height = 24, double width = 21}) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: seatColor,
      ),
    );
  }

  Widget _buildSeats({double height = 21, double width = 24}) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: seatColor,
      ),
    );
  }

  Widget _buildSeatBackSupport({Alignment align = Alignment.center}) {
    return Container(
      height: 18,
      width: 2,
      alignment: align,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: seatColor,
      ),
    );
  }

  Widget _buildSeatBackSupports({Alignment align = Alignment.center}) {
    return Container(
      height: 2,
      width: 18,
      alignment: align,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: seatColor,
      ),
    );
  }

  Widget _buildTable({double height = 40, double width = 50}) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: tableColor,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: widget.labelColor ?? Colors.white,
          ),
          child: Text(
            widget.label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: textColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTwoSeatsRow() {
    return InkWell(
      onTap: () {
        setState(() {
          if (!isSelected) {
            isSelected = true;
            if (widget.tableSelector != null) {
              widget.tableSelector!(widget.label.toString());
            }
          } else {
            isSelected = false;
            if (widget.tableSelector != null) {
              widget.tableSelector!("None");
            }
          }
        });
      },
      borderRadius: BorderRadius.circular(5),
      child: Row(
        children: [
          _buildSeat(height: 18, width: 2),
          const SizedBox(width: 2),
          _buildSeat(),
          const SizedBox(width: 4),
          _buildTable(),
          const SizedBox(width: 4),
          _buildSeat(),
          const SizedBox(width: 2),
          _buildSeat(height: 18, width: 2),
        ],
      ),
    );
  }

  Widget _buildTwoSeatsColumn() {
    return InkWell(
      onTap: () {
        setState(() {
          if (!isSelected) {
            isSelected = true;
            if (widget.tableSelector != null) {
              widget.tableSelector!(widget.label.toString());
            }
          } else {
            isSelected = false;
            if (widget.tableSelector != null) {
              widget.tableSelector!("None");
            }
          }
        });
      },
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: [
          _buildSeatBackSupports(),
          const SizedBox(height: 2),
          _buildSeat(),
          const SizedBox(height: 4),
          _buildTable(height: 60, width: 40),
          const SizedBox(height: 4),
          _buildSeat(),
          const SizedBox(height: 2),
          _buildSeat(height: 2, width: 18),
        ],
      ),
    );
  }

  Widget _buildFourSeatsRow() {
    return InkWell(
      onTap: () {
        setState(() {
          if (!isSelected) {
            isSelected = true;
            if (widget.tableSelector != null) {
              widget.tableSelector!(widget.label.toString());
            }
          } else {
            isSelected = false;
            if (widget.tableSelector != null) {
              widget.tableSelector!("None");
            }
          }
        });
      },
      borderRadius: BorderRadius.circular(5),
      child: Row(
        children: [
          _buildSeat(height: 18, width: 2),
          const SizedBox(width: 2),
          _buildSeat(),
          const SizedBox(width: 4),
          Column(
            children: [
              _buildSeat(height: 2, width: 18),
              const SizedBox(height: 2),
              _buildSeat(),
              const SizedBox(height: 4),
              _buildTable(),
              const SizedBox(height: 4),
              _buildSeat(),
              const SizedBox(height: 2),
              _buildSeat(height: 2, width: 18),
            ],
          ),
          const SizedBox(width: 4),
          _buildSeat(),
          const SizedBox(width: 2),
          _buildSeat(height: 18, width: 2),
        ],
      ),
    );
  }

  Widget _buildEightSeatsRow() {
    return InkWell(
      onTap: () {
        setState(() {
          if (!isSelected) {
            isSelected = true;
            if (widget.tableSelector != null) {
              widget.tableSelector!(widget.label.toString());
            }
          } else {
            isSelected = false;
            if (widget.tableSelector != null) {
              widget.tableSelector!("None");
            }
          }
        });
      },
      borderRadius: BorderRadius.circular(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Top seat with back support
          Column(
            children: [
              _buildSeatBackSupports(align: Alignment.topCenter),
              SizedBox(height: 2),
              _buildSeats(),
            ],
          ),
          const SizedBox(height: 3),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Left side seats with back support on the left
              Column(
                children: [
                  Row(
                    children: [
                      _buildSeatBackSupport(align: Alignment.centerLeft),
                      SizedBox(width: 2),
                      _buildSeat(),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      _buildSeatBackSupport(align: Alignment.centerLeft),
                      SizedBox(width: 2),

                      _buildSeat(),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      _buildSeatBackSupport(align: Alignment.centerLeft),
                      SizedBox(width: 2),

                      _buildSeat(),
                    ],
                  ),
                ],
              ),

              const SizedBox(width: 3),

              // Table
              _buildTable(height: 90, width: 50),

              const SizedBox(width: 3),

              // Right side seats with back support on the right
              Column(
                children: [
                  Row(
                    children: [
                      _buildSeat(),
                      SizedBox(width: 2),

                      _buildSeatBackSupport(align: Alignment.centerRight),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      _buildSeat(),
                      SizedBox(width: 2),

                      _buildSeatBackSupport(align: Alignment.centerRight),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      _buildSeat(),
                      SizedBox(width: 2),

                      _buildSeatBackSupport(align: Alignment.centerRight),
                    ],
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 3),

          // Bottom seat with back support
          Column(
            children: [
              _buildSeats(),
              SizedBox(height: 2),

              _buildSeatBackSupports(align: Alignment.bottomCenter),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.tableType) {
      case 2:
        return _buildTwoSeatsRow();
      case 22:
        return _buildTwoSeatsColumn();
      case 4:
        return _buildFourSeatsRow();
      case 8:
        return _buildEightSeatsRow();
      default:
        return Container();
    }
  }
}
