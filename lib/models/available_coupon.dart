class AvailableCoupon {
  const AvailableCoupon({
    required this.coupon,
    required this.discount,
    required this.desc,
  });

  final String coupon;
  final String discount;
  final String desc;

  static List<AvailableCoupon> getAvailableCoupons() {
    return const [
      AvailableCoupon(
        coupon: '100INDUSIND',
        discount: 'Get 20 % discount using Induslnd Bank Credit Cards',
        desc:
            'Use code 100INDUSIND & get 20 % discount up to Rs100 on orders above Rs400',
      ),
      AvailableCoupon(
        coupon: 'HSBC500',
        discount: 'Get 15 % discount using HSBC Bank Credit Cards',
        desc:
            'Use code HSBC500 & get 14 % discount up to Rs125 on orders above Rs500',
      ),
      AvailableCoupon(
        coupon: '100TMB',
        discount: 'Get 20 % discount using TMB Bank Credit Cards',
        desc:
            'Use code 100TMB & get 20 % discount up to Rs100 on orders above Rs400',
      ),
      AvailableCoupon(
        coupon: 'INDUSIND20',
        discount: 'Get 20 % discount using Induslnd Bank Credit Cards',
        desc:
            'Use code INDUSIND20 & get 20 % discount up to Rs200 on orders above Rs600',
      ),
      AvailableCoupon(
        coupon: 'HSBC5100',
        discount: 'Get 20 % discount using Induslnd Bank Credit Cards',
        desc:
            'Use code HSBC5100 & get 20 % discount up to Rs100 on orders above Rs400',
      ),
      AvailableCoupon(
        coupon: '100AXIS',
        discount: 'Get 20 % discount using Axis Bank Credit Cards',
        desc:
            'Use code 100AXIS & get 20 % discount up to Rs100 on orders above Rs400',
      ),
      AvailableCoupon(
        coupon: '100INDUSIND',
        discount: 'Get 20 % discount using Induslnd Bank Credit Cards',
        desc:
            'Use code 100INDUSIND & get 20 % discount up to Rs100 on orders above Rs400',
      ),
    ];
  }
}
