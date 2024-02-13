import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:ir_bluebank_card/common/color_styles.dart';
import 'package:ir_bluebank_card/components/card_alert_dialog.dart';
import 'package:ir_bluebank_card/components/card_input_formatter.dart';
import 'package:ir_bluebank_card/components/card_month_input_formatter.dart';
import 'package:ir_bluebank_card/components/special_fa_text.dart';
import 'package:ir_bluebank_card/components/special_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ColorStyle appColor = ColorStyle();
  final TextEditingController cardNumberController =
      TextEditingController(text: "6219 8619 xxxx xxxx");
  final TextEditingController cardHolderNameController =
      TextEditingController(text: "آقای لورم");
  final TextEditingController cardExpiryDateController =
      TextEditingController(text: "xx xx");
  final TextEditingController cardCvvController =
      TextEditingController(text: "xxx");

  FlipCardController flipCardController = FlipCardController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5f5f8),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Gap(20),
              SizedBox(
                height: 1050 / 3,
                width: 600 / 2.60,
                child: FlipCard(
                  controller: flipCardController,
                  fill: Fill.fillFront,
                  direction: FlipDirection.HORIZONTAL,
                  front: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(350 / 20),
                      color: appColor.appColor.fronBackgroundColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/cheap.png',
                          height: 60,
                        ),
                        const Gap(5),
                        const SpecialText(
                          'bank, but lovely',
                        ),
                        const Gap(5),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Image.asset(
                              'assets/images/blue-logo.png',
                              height: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  back: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(350 / 20),
                      color: appColor.appColor.backBackgroundColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    width: double.infinity,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Column(
                            children: [
                              const Gap(10),
                              RotatedBox(
                                quarterTurns: 3,
                                child: SpecialText("bluebank.com",
                                    size: 10,
                                    color: appColor.appColor.backTextColor),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.black,
                          height: 1050 / 3,
                          width: 45,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Gap(40),
                              SpecialFaText(
                                  cardHolderNameController.text
                                      .replaceAll(" ", "\n"),
                                  size: 18,
                                  fontWeight: FontWeight.w500,
                                  color: appColor.appColor.backTextColor),

                              const Gap(10),

                              SpecialText(
                                  cardNumberController.text
                                      .replaceAll(" ", "\n")
                                      .toString(),
                                  size: 18,
                                  color: appColor.appColor.backTextColor),

                              const Gap(30),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SpecialText('EXP',
                                          size: 12,
                                          color:
                                              appColor.appColor.backTextColor),
                                      SpecialText(cardExpiryDateController.text,
                                          size: 14,
                                          color:
                                              appColor.appColor.backTextColor),
                                    ],
                                  ),
                                  const Gap(20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SpecialText('CVV2',
                                          size: 12,
                                          color:
                                              appColor.appColor.backTextColor),
                                      SpecialText(cardCvvController.text,
                                          size: 14,
                                          color:
                                              appColor.appColor.backTextColor),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              // logo saman bank
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SpecialText(
                                        'Poweres by: ',
                                        size: 8,
                                        color: appColor.appColor.backTextColor,
                                      ),
                                      SpecialText(
                                        'SamanBank',
                                        color: Colors.blueGrey.shade800,
                                        size: 14,
                                      ),
                                    ],
                                  ),
                                  const Gap(5),
                                  Image.asset(
                                    'assets/images/saman-bank.png',
                                    height: 30,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(40),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                    width: 180,
                    child: ListView.builder(
                      itemCount: appColor.colorList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              appColor.appColor = appColor.colorList[index];
                              appColor.selectedIndex = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  if (appColor.selectedIndex == index)
                                    const BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 5,
                                    ),
                                ],
                                border: appColor.selectedIndex == index
                                    ? Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      )
                                    : null,
                                borderRadius: BorderRadius.circular(99),
                                color: appColor
                                    .colorList[index].fronBackgroundColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Gap(40),
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width / 1.12,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      onTap: () {
                        if (flipCardController.state!.isFront) {
                          flipCardController.toggleCard();
                        }
                      },
                      controller: cardNumberController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        hintText: 'Card Number',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        prefixIcon: Icon(
                          Icons.credit_card,
                          color: Colors.grey,
                        ),
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(16),
                        CardInputFormatter(),
                      ],
                      onChanged: (value) {
                        var text = value.replaceAll(RegExp(r'\s+\b|\b\s'), ' ');
                        setState(() {
                          cardNumberController.value =
                              cardNumberController.value.copyWith(
                                  text: text,
                                  selection: TextSelection.collapsed(
                                      offset: text.length),
                                  composing: TextRange.empty);
                        });
                      },
                    ),
                  ),
                  const Gap(12),
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width / 1.12,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      onTap: () {
                        if (flipCardController.state!.isFront) {
                          flipCardController.toggleCard();
                        }
                      },
                      controller: cardHolderNameController,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        hintText: 'Full Name',
                        hintStyle: TextStyle(
                          fontFamily: '',
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                      ),
                      style: const TextStyle(fontFamily: 'yekan'),
                      onChanged: (value) {
                        setState(() {
                          cardHolderNameController.value =
                              cardHolderNameController.value.copyWith(
                                  text: value,
                                  selection: TextSelection.collapsed(
                                      offset: value.length),
                                  composing: TextRange.empty);
                        });
                      },
                    ),
                  ),
                  const Gap(12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 2.4,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextFormField(
                          onTap: () {
                            if (flipCardController.state!.isFront) {
                              flipCardController.toggleCard();
                            }
                          },
                          controller: cardExpiryDateController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            hintText: 'MM/YY',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                            prefixIcon: Icon(
                              Icons.calendar_today,
                              color: Colors.grey,
                            ),
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(4),
                            CardDateInputFormatter(),
                          ],
                          onChanged: (value) {
                            var text =
                                value.replaceAll(RegExp(r'\s+\b|\b\s'), ' ');
                            setState(() {
                              cardExpiryDateController.value =
                                  cardExpiryDateController.value.copyWith(
                                      text: text,
                                      selection: TextSelection.collapsed(
                                          offset: text.length),
                                      composing: TextRange.empty);
                            });
                          },
                        ),
                      ),
                      const Gap(14),
                      Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 2.4,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextFormField(
                          onTap: () {
                            if (flipCardController.state!.isFront) {
                              flipCardController.toggleCard();
                            }
                          },
                          controller: cardCvvController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            hintText: 'CVV',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.grey,
                            ),
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(3),
                          ],
                          onChanged: (value) {
                            setState(() {
                              int length = value.length;
                              if (length == 4 || length == 9 || length == 14) {
                                cardNumberController.text = '$value ';
                                cardNumberController.selection =
                                    TextSelection.fromPosition(
                                        TextPosition(offset: value.length + 1));
                              }
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const Gap(40),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.deepPurpleAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      minimumSize:
                          Size(MediaQuery.of(context).size.width / 1.12, 55),
                    ),
                    onPressed: () {
                      Future.delayed(const Duration(milliseconds: 300), () {
                        showDialog(
                            context: context,
                            builder: (context) => const CardAlertDialog());
                        cardCvvController.clear();
                        cardExpiryDateController.clear();
                        cardHolderNameController.clear();
                        cardNumberController.clear();
                        flipCardController.toggleCard();
                      });
                    },
                    child: Text(
                      'Add Card'.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
