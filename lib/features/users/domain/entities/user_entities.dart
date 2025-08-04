class UserEntities {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? maidenName;
  final int? age;
  final String? gender;
  final String? email;
  final String? phone;
  final String? userName;
  final String? password;
  final String? birthDate;
  final String? image;
  final String? bloodGroup;
  final double? height;
  final double? weight;
  final String? eyeColor;
  final Hair hair;
  final String? ip;
  final Address address;
  final String? macAddress;
  final String? university;
  final Bank bank;
  final Company company;
  final String? ein;
  final String? ssn;
  final String? userAgent;
  final Crypto crypto;
  final String? role;

  UserEntities({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.maidenName,
    required this.age,
    required this.gender,
    required this.email,
    required this.phone,
    required this.userName,
    required this.password,
    required this.birthDate,
    required this.image,
    required this.bloodGroup,
    required this.height,
    required this.weight,
    required this.eyeColor,
    required this.hair,
    required this.ip,
    required this.address,
    required this.macAddress,
    required this.university,
    required this.bank,
    required this.company,
    required this.ein,
    required this.ssn,
    required this.userAgent,
    required this.crypto,
    required this.role,
  });
}

class Hair {
  final String? color;
  final String? type;

  Hair({required this.color, required this.type});

  factory Hair.fromJson(Map<String, dynamic> json) =>
      Hair(color: json['color'], type: json['type']);

  Map<String, dynamic> toJson() => {'color': color, 'type': type};
}

class Address {
  final String? address;
  final String? city;
  final String? state;
  final String? stateCode;
  final String? postalCode;
  final Coordinates coordinates;
  final String? country;

  Address({
    required this.address,
    required this.city,
    required this.state,
    required this.stateCode,
    required this.postalCode,
    required this.coordinates,
    required this.country,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    address: json['address'],
    city: json['city'],
    state: json['state'],
    stateCode: json['stateCode'],
    postalCode: json['postalCode'],
    coordinates: Coordinates.fromJson(json['coordinates']),
    country: json['country'],
  );

  Map<String, dynamic> toJson() => {
    'address': address,
    'city': city,
    'state': state,
    'stateCode': stateCode,
    'postalCode': postalCode,
    'coordinates': coordinates.toJson(),
    'country': country,
  };
}

class Coordinates {
  final double? lat;
  final double? long;

  Coordinates({required this.lat, required this.long});

  factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
    lat: (json['lat'] as num?)?.toDouble(),
    long: (json['long'] as num?)?.toDouble(),
  );

  Map<String, dynamic> toJson() => {'lat': lat, 'long': long};
}

class Bank {
  final String? cardExpire;
  final String? cardNumber;
  final String? cardType;
  final String? currency;
  final String? iban;

  Bank({
    required this.cardExpire,
    required this.cardNumber,
    required this.cardType,
    required this.currency,
    required this.iban,
  });

  factory Bank.fromJson(Map<String, dynamic> json) => Bank(
    cardExpire: json['cardExpire'],
    cardNumber: json['cardNumber'],
    cardType: json['cardType'],
    currency: json['currency'],
    iban: json['iban'],
  );

  Map<String, dynamic> toJson() => {
    'cardExpire': cardExpire,
    'cardNumber': cardNumber,
    'cardType': cardType,
    'currency': currency,
    'iban': iban,
  };
}

class Company {
  final String? department;
  final String? name;
  final String? title;
  final CompanyAddress companyAddress;

  Company({
    required this.department,
    required this.name,
    required this.title,
    required this.companyAddress,
  });

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    department: json['department'],
    name: json['name'],
    title: json['title'],
    companyAddress: CompanyAddress.fromJson(json['address']),
  );

  Map<String, dynamic> toJson() => {
    'department': department,
    'name': name,
    'title': title,
    'address': companyAddress.toJson(),
  };
}

class CompanyAddress {
  final String? address;
  final String? city;
  final String? state;
  final String? stateCode;
  final String? postalCode;
  final Coordinates coordinates;
  final String? country;

  CompanyAddress({
    required this.address,
    required this.city,
    required this.state,
    required this.stateCode,
    required this.postalCode,
    required this.coordinates,
    required this.country,
  });

  factory CompanyAddress.fromJson(Map<String, dynamic> json) => CompanyAddress(
    address: json['address'],
    city: json['city'],
    state: json['state'],
    stateCode: json['stateCode'],
    postalCode: json['postalCode'],
    coordinates: Coordinates.fromJson(json['coordinates']),
    country: json['country'],
  );

  Map<String, dynamic> toJson() => {
    'address': address,
    'city': city,
    'state': state,
    'stateCode': stateCode,
    'postalCode': postalCode,
    'coordinates': coordinates.toJson(),
    'country': country,
  };
}

class Crypto {
  final String? coin;
  final String? wallet;
  final String? network;

  Crypto({required this.coin, required this.wallet, required this.network});

  factory Crypto.fromJson(Map<String, dynamic> json) => Crypto(
    coin: json['coin'],
    wallet: json['wallet'],
    network: json['network'],
  );

  Map<String, dynamic> toJson() => {
    'coin': coin,
    'wallet': wallet,
    'network': network,
  };
}
