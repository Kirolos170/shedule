class homemodel {
  int? id;
  String? title;
  String? description;
  int? spots;
  int? price;
  double? lat;
  double? lon;
  String? placeName;
  String? featuredImage;
  String? deeplink;
  String? date;
  int? tagId;
  int? createdBy;
  int? communityId;
  String? whatsappLink;
  List<Images>? images;
  String? finishDate;
  int? locationId;
  String? cancelledAt;
  bool? isPrivate;
  String? lockedAt ;
  String? minimumMembers;
  String? paymentMethod;
  bool? receiveUpdates;
  String? state;
  bool? isCheckedIn;
  bool? isFeatured;
  int? viewersCount;
  List<Users>? users ;
  Community? community;
  Tag? tag;
  bool? isWaiting;
  bool? isJoined;
  int? joinedUsersCount;
  int? checkedInCount;
  int? paidAmount;
  int? ownerEarnings;

  homemodel(
      {this.id,
        this.title,
        this.description,
        this.spots,
        this.price,
        this.lat,
        this.lon,
        this.placeName,
        this.featuredImage,
        this.deeplink,
        this.date,
        this.tagId,
        this.createdBy,
        this.communityId,
       this.whatsappLink,
        this.images,
        this.finishDate,
        this.locationId,
        this.cancelledAt,
        this.isPrivate,
        this.lockedAt,
        this.minimumMembers,
        this.paymentMethod,
        this.receiveUpdates,
        this.state,
        this.isCheckedIn,
        this.isFeatured,
        this.viewersCount,
        this.users,
        this.community,
        this.tag,
        this.isWaiting,
        this.isJoined,
        this.joinedUsersCount,
        this.checkedInCount,
        this.paidAmount,
        this.ownerEarnings});








  homemodel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    spots = json['spots'];
    price = json['price'];
    lat = json['lat'];
    lon = json['lon'];
    placeName = json['placeName'];
    featuredImage = json['featuredImage'];
    deeplink = json['deeplink'];
    date = json['date'];
    tagId = json['tagId'];
    createdBy = json['createdBy'];
    communityId = json['communityId'];
    whatsappLink = json['whatsapp_link'];
    // if (json['images'] != null) {
    //   images = <Images>[];
    //   json['images'].forEach((v) {
    //     images!.add(new Images.fromJson(v));
    //   });
    // }
    // finishDate = json['finish_date'];
    // locationId = json['location_id'];
    // cancelledAt = json['cancelled_at'];
    // isPrivate = json['is_private'];
    // lockedAt = json['lockedAt'];
    // minimumMembers = json['minimumMembers'];
    // paymentMethod = json['paymentMethod'];
    // receiveUpdates = json['receiveUpdates'];
    // state = json['state'];
    // isCheckedIn = json['isCheckedIn'];
    // isFeatured = json['isFeatured'];
    // viewersCount = json['viewersCount'];
    // if (json['users'] != null) {
    //   users = <Users>[];
    //   json['users'].forEach((v) {
    //     users!.add(new Users.fromJson(v));
    //   });
    // }
    // community = json['community'] != null
    //     ? new Community.fromJson(json['community'])
    //     : null;
    // tag = json['tag'] != null ? new Tag.fromJson(json['tag']) : null;
    // isWaiting = json['isWaiting'];
    // isJoined = json['isJoined'];
    // joinedUsersCount = json['joinedUsersCount'];
    // checkedInCount = json['checkedInCount'];
    // paidAmount = json['paidAmount'];
    // ownerEarnings = json['ownerEarnings'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['spots'] = this.spots;
    data['price'] = this.price;
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['placeName'] = this.placeName;
    data['featuredImage'] = this.featuredImage;
    data['deeplink'] = this.deeplink;
    data['date'] = this.date;
    data['tagId'] = this.tagId;
    data['createdBy'] = this.createdBy;
    data['communityId'] = this.communityId;
   // data['whatsapp_link'] = this.whatsappLink;
    if (this.images != null) {
      data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    data['finish_date'] = this.finishDate;
    data['location_id'] = this.locationId;
    //data['cancelled_at'] = this.cancelledAt;
    data['is_private'] = this.isPrivate;
    //data['lockedAt'] = this.lockedAt;
    //data['minimumMembers'] = this.minimumMembers;
    data['paymentMethod'] = this.paymentMethod;
    data['receiveUpdates'] = this.receiveUpdates;
    data['state'] = this.state;
    data['isCheckedIn'] = this.isCheckedIn;
    data['isFeatured'] = this.isFeatured;
    data['viewersCount'] = this.viewersCount;
    if (this.users != null) {
      data['users'] = this.users!.map((v) => v.toJson()).toList();
    }
    if (this.community != null) {
      data['community'] = this.community!.toJson();
    }
    if (this.tag != null) {
      data['tag'] = this.tag!.toJson();
    }
    data['isWaiting'] = this.isWaiting;
    data['isJoined'] = this.isJoined;
    data['joinedUsersCount'] = this.joinedUsersCount;
    data['checkedInCount'] = this.checkedInCount;
    data['paidAmount'] = this.paidAmount;
    data['ownerEarnings'] = this.ownerEarnings;
    return data;
  }
}

class Images {
  String? url;

  Images({this.url});

  Images.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    return data;
  }
}

class Users {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  Null? bio;
  String? profilePicture;
  int? points;
  String? mobile;
  String? countryCode;
  bool? isVerified;
  bool? isTrusted;

  Users(
      {this.id,
        this.firstName,
        this.lastName,
        this.email,
        this.bio,
        this.profilePicture,
        this.points,
        this.mobile,
        this.countryCode,
        this.isVerified,
        this.isTrusted});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    bio = json['bio'];
    profilePicture = json['profile_picture'];
    points = json['points'];
    mobile = json['mobile'];
    countryCode = json['country_code'];
    isVerified = json['is_verified'];
    isTrusted = json['isTrusted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['bio'] = this.bio;
    data['profile_picture'] = this.profilePicture;
    data['points'] = this.points;
    data['mobile'] = this.mobile;
    data['country_code'] = this.countryCode;
    data['is_verified'] = this.isVerified;
    data['isTrusted'] = this.isTrusted;
    return data;
  }
}

class Community {
  int? id;
  String? title;
  String? image;
  String? bio;
  int? points;
  int? ratingCount;
  int? connectionCount;
  int? eventCount;
  String? profilePicture;
  String? deeplink;
  String? linkExpiry;
  String? state;

  Community(
      {this.id,
        this.title,
        this.image,
        this.bio,
        this.points,
        this.ratingCount,
        this.connectionCount,
        this.eventCount,
        this.profilePicture,
        this.deeplink,
        this.linkExpiry,
        this.state});

  Community.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    bio = json['bio'];
    points = json['points'];
    ratingCount = json['rating_count'];
    connectionCount = json['connection_count'];
    eventCount = json['event_count'];
    profilePicture = json['profile_picture'];
    deeplink = json['deeplink'];
    linkExpiry = json['link_expiry'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['bio'] = this.bio;
    data['points'] = this.points;
    data['rating_count'] = this.ratingCount;
    data['connection_count'] = this.connectionCount;
    data['event_count'] = this.eventCount;
    data['profile_picture'] = this.profilePicture;
    data['deeplink'] = this.deeplink;
    data['link_expiry'] = this.linkExpiry;
    data['state'] = this.state;
    return data;
  }
}

class Tag {
  int? id;
  String? title;
  String? icon;

  Tag({this.id, this.title, this.icon});

  Tag.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['icon'] = this.icon;
    return data;
  }
}
