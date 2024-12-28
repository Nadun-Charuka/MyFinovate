import 'package:flutter/material.dart';

class CurrencyExchange extends StatefulWidget {
  const CurrencyExchange({super.key});

  @override
  State<CurrencyExchange> createState() => _CurrencyExchangeState();
}

class _CurrencyExchangeState extends State<CurrencyExchange> {
  final TextEditingController _amountController = TextEditingController();
  double? _convertedAmount;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Currency Exchange",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ),
              const SizedBox(height: 16),
              isMobile
                  ? _buildVerticalLayout(context)
                  : _buildHorizontalLayout(context),
            ],
          ),
        );
      },
    );
  }

  // Vertical Layout for Mobile
  Widget _buildVerticalLayout(BuildContext context) {
    return Column(
      children: [
        _buildInputCard(context, "Enter Amount...",
            "    Min 250 - Max 10,000\nCompany Deduction - 3%"),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LKR",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(width: 8),
            const Icon(Icons.change_circle, size: 30),
            const SizedBox(width: 8),
            Text(
              "USD",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        _buildOutputCard(context),
      ],
    );
  }

  // Horizontal Layout for Web
  Widget _buildHorizontalLayout(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 2,
          child: _buildInputCard(
            context,
            "Enter Amount...",
            "    Min 250 - Max 10,000\nCompany Deduction - 3%",
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "LKR",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.change_circle, size: 30),
              const SizedBox(width: 8),
              Text(
                "USD",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: _buildOutputCard(context),
        ),
      ],
    );
  }

  // Input Card with User Interaction
  Widget _buildInputCard(BuildContext context, String title, String subtitle) {
    return Container(
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).primaryColor.withOpacity(0.1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: title,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
              fillColor: Theme.of(context).primaryColor.withOpacity(0.2),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).textTheme.bodyMedium!.color,
            ),
          ),
          ElevatedButton(
            onPressed: _convertCurrency,
            child: const Text("Convert"),
          ),
        ],
      ),
    );
  }

  // Output Card
  Widget _buildOutputCard(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).primaryColor.withOpacity(0.1),
      ),
      child: Center(
        child: Text(
          _convertedAmount != null
              ? "Converted Amount: \$${_convertedAmount!.toStringAsFixed(2)}"
              : "Enter amount to see conversion",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).textTheme.bodyMedium!.color,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  // Conversion Logic
  void _convertCurrency() {
    final amount = double.tryParse(_amountController.text);

    if (amount != null && amount >= 250 && amount <= 10000) {
      setState(() {
        _convertedAmount = amount * 0.003; // Example conversion rate
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please enter a valid amount (250-10,000)."),
        ),
      );
    }
  }
}
