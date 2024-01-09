// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm/orm.dart' show DateTimeJsonConverter;

part 'prisma_client.g.dart';

enum UserScalarFieldEnum implements _i1.PrismaEnum {
  id,
  fname,
  lname,
  email,
  phone,
  password,
  profile,
  role,
  @JsonValue('created_at')
  createdAt(r'created_at'),
  @JsonValue('updated_at')
  updatedAt(r'updated_at');

  const UserScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum TblPhotoScalarFieldEnum implements _i1.PrismaEnum {
  id,
  albumsid,
  title,
  date,
  url,
  path,
  @JsonValue('created_at')
  createdAt(r'created_at'),
  @JsonValue('updated_at')
  updatedAt(r'updated_at');

  const TblPhotoScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum TblalbumsScalarFieldEnum implements _i1.PrismaEnum {
  id,
  idfolder,
  userid,
  title,
  @JsonValue('created_at')
  createdAt(r'created_at'),
  @JsonValue('updated_at')
  updatedAt(r'updated_at');

  const TblalbumsScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum TblhistoryScalarFieldEnum implements _i1.PrismaEnum {
  id,
  userid,
  photoid,
  date,
  @JsonValue('created_at')
  createdAt(r'created_at'),
  @JsonValue('updated_at')
  updatedAt(r'updated_at');

  const TblhistoryScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

enum NullsOrder implements _i1.PrismaEnum {
  first,
  last;

  @override
  String? get originalName => null;
}

@_i1.jsonSerializable
class UserWhereInput implements _i1.JsonSerializable {
  const UserWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.fname,
    this.lname,
    this.email,
    this.phone,
    this.password,
    this.profile,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  factory UserWhereInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereInputFromJson(json);

  final Iterable<UserWhereInput>? AND;

  final Iterable<UserWhereInput>? OR;

  final Iterable<UserWhereInput>? NOT;

  final IntFilter? id;

  final StringNullableFilter? fname;

  final StringNullableFilter? lname;

  final StringFilter? email;

  final StringNullableFilter? phone;

  final StringNullableFilter? password;

  final StringNullableFilter? profile;

  final StringNullableFilter? role;

  @JsonKey(name: r'created_at')
  final DateTimeNullableFilter? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTimeNullableFilter? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$UserWhereInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithRelationInput implements _i1.JsonSerializable {
  const UserOrderByWithRelationInput({
    this.id,
    this.fname,
    this.lname,
    this.email,
    this.phone,
    this.password,
    this.profile,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  factory UserOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? fname;

  final SortOrder? lname;

  final SortOrder? email;

  final SortOrder? phone;

  final SortOrder? password;

  final SortOrder? profile;

  final SortOrder? role;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$UserOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class UserWhereUniqueInput implements _i1.JsonSerializable {
  const UserWhereUniqueInput({
    this.id,
    this.email,
    this.phone,
  });

  factory UserWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereUniqueInputFromJson(json);

  final int? id;

  final String? email;

  final String? phone;

  @override
  Map<String, dynamic> toJson() => _$UserWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithAggregationInput implements _i1.JsonSerializable {
  const UserOrderByWithAggregationInput({
    this.id,
    this.fname,
    this.lname,
    this.email,
    this.phone,
    this.password,
    this.profile,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory UserOrderByWithAggregationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? fname;

  final SortOrder? lname;

  final SortOrder? email;

  final SortOrder? phone;

  final SortOrder? password;

  final SortOrder? profile;

  final SortOrder? role;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @JsonKey(name: r'_count')
  final UserCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final UserAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final UserMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final UserMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final UserSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$UserOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class UserScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const UserScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.fname,
    this.lname,
    this.email,
    this.phone,
    this.password,
    this.profile,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  factory UserScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<UserScalarWhereWithAggregatesInput>? AND;

  final Iterable<UserScalarWhereWithAggregatesInput>? OR;

  final Iterable<UserScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final StringNullableWithAggregatesFilter? fname;

  final StringNullableWithAggregatesFilter? lname;

  final StringWithAggregatesFilter? email;

  final StringNullableWithAggregatesFilter? phone;

  final StringNullableWithAggregatesFilter? password;

  final StringNullableWithAggregatesFilter? profile;

  final StringNullableWithAggregatesFilter? role;

  @JsonKey(name: r'created_at')
  final DateTimeNullableWithAggregatesFilter? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTimeNullableWithAggregatesFilter? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$UserScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class TblPhotoWhereInput implements _i1.JsonSerializable {
  const TblPhotoWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.albumsid,
    this.title,
    this.date,
    this.url,
    this.path,
    this.createdAt,
    this.updatedAt,
  });

  factory TblPhotoWhereInput.fromJson(Map<String, dynamic> json) =>
      _$TblPhotoWhereInputFromJson(json);

  final Iterable<TblPhotoWhereInput>? AND;

  final Iterable<TblPhotoWhereInput>? OR;

  final Iterable<TblPhotoWhereInput>? NOT;

  final IntFilter? id;

  final IntNullableFilter? albumsid;

  final StringNullableFilter? title;

  final DateTimeNullableFilter? date;

  final StringNullableFilter? url;

  final StringNullableFilter? path;

  @JsonKey(name: r'created_at')
  final DateTimeNullableFilter? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTimeNullableFilter? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblPhotoWhereInputToJson(this);
}

@_i1.jsonSerializable
class TblPhotoOrderByWithRelationInput implements _i1.JsonSerializable {
  const TblPhotoOrderByWithRelationInput({
    this.id,
    this.albumsid,
    this.title,
    this.date,
    this.url,
    this.path,
    this.createdAt,
    this.updatedAt,
  });

  factory TblPhotoOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblPhotoOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? albumsid;

  final SortOrder? title;

  final SortOrder? date;

  final SortOrder? url;

  final SortOrder? path;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblPhotoOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class TblPhotoWhereUniqueInput implements _i1.JsonSerializable {
  const TblPhotoWhereUniqueInput({this.id});

  factory TblPhotoWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$TblPhotoWhereUniqueInputFromJson(json);

  final int? id;

  @override
  Map<String, dynamic> toJson() => _$TblPhotoWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class TblPhotoOrderByWithAggregationInput implements _i1.JsonSerializable {
  const TblPhotoOrderByWithAggregationInput({
    this.id,
    this.albumsid,
    this.title,
    this.date,
    this.url,
    this.path,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory TblPhotoOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblPhotoOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? albumsid;

  final SortOrder? title;

  final SortOrder? date;

  final SortOrder? url;

  final SortOrder? path;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @JsonKey(name: r'_count')
  final TblPhotoCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final TblPhotoAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final TblPhotoMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final TblPhotoMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final TblPhotoSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$TblPhotoOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class TblPhotoScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const TblPhotoScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.albumsid,
    this.title,
    this.date,
    this.url,
    this.path,
    this.createdAt,
    this.updatedAt,
  });

  factory TblPhotoScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblPhotoScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<TblPhotoScalarWhereWithAggregatesInput>? AND;

  final Iterable<TblPhotoScalarWhereWithAggregatesInput>? OR;

  final Iterable<TblPhotoScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final IntNullableWithAggregatesFilter? albumsid;

  final StringNullableWithAggregatesFilter? title;

  final DateTimeNullableWithAggregatesFilter? date;

  final StringNullableWithAggregatesFilter? url;

  final StringNullableWithAggregatesFilter? path;

  @JsonKey(name: r'created_at')
  final DateTimeNullableWithAggregatesFilter? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTimeNullableWithAggregatesFilter? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblPhotoScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class TblalbumsWhereInput implements _i1.JsonSerializable {
  const TblalbumsWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.idfolder,
    this.userid,
    this.title,
    this.createdAt,
    this.updatedAt,
  });

  factory TblalbumsWhereInput.fromJson(Map<String, dynamic> json) =>
      _$TblalbumsWhereInputFromJson(json);

  final Iterable<TblalbumsWhereInput>? AND;

  final Iterable<TblalbumsWhereInput>? OR;

  final Iterable<TblalbumsWhereInput>? NOT;

  final IntFilter? id;

  final StringFilter? idfolder;

  final IntNullableFilter? userid;

  final StringNullableFilter? title;

  @JsonKey(name: r'created_at')
  final DateTimeNullableFilter? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTimeNullableFilter? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblalbumsWhereInputToJson(this);
}

@_i1.jsonSerializable
class TblalbumsOrderByWithRelationInput implements _i1.JsonSerializable {
  const TblalbumsOrderByWithRelationInput({
    this.id,
    this.idfolder,
    this.userid,
    this.title,
    this.createdAt,
    this.updatedAt,
  });

  factory TblalbumsOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblalbumsOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idfolder;

  final SortOrder? userid;

  final SortOrder? title;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblalbumsOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class TblalbumsWhereUniqueInput implements _i1.JsonSerializable {
  const TblalbumsWhereUniqueInput({this.id});

  factory TblalbumsWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$TblalbumsWhereUniqueInputFromJson(json);

  final int? id;

  @override
  Map<String, dynamic> toJson() => _$TblalbumsWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class TblalbumsOrderByWithAggregationInput implements _i1.JsonSerializable {
  const TblalbumsOrderByWithAggregationInput({
    this.id,
    this.idfolder,
    this.userid,
    this.title,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory TblalbumsOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblalbumsOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idfolder;

  final SortOrder? userid;

  final SortOrder? title;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @JsonKey(name: r'_count')
  final TblalbumsCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final TblalbumsAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final TblalbumsMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final TblalbumsMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final TblalbumsSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$TblalbumsOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class TblalbumsScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const TblalbumsScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.idfolder,
    this.userid,
    this.title,
    this.createdAt,
    this.updatedAt,
  });

  factory TblalbumsScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblalbumsScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<TblalbumsScalarWhereWithAggregatesInput>? AND;

  final Iterable<TblalbumsScalarWhereWithAggregatesInput>? OR;

  final Iterable<TblalbumsScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final StringWithAggregatesFilter? idfolder;

  final IntNullableWithAggregatesFilter? userid;

  final StringNullableWithAggregatesFilter? title;

  @JsonKey(name: r'created_at')
  final DateTimeNullableWithAggregatesFilter? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTimeNullableWithAggregatesFilter? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblalbumsScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class TblhistoryWhereInput implements _i1.JsonSerializable {
  const TblhistoryWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.userid,
    this.photoid,
    this.date,
    this.createdAt,
    this.updatedAt,
  });

  factory TblhistoryWhereInput.fromJson(Map<String, dynamic> json) =>
      _$TblhistoryWhereInputFromJson(json);

  final Iterable<TblhistoryWhereInput>? AND;

  final Iterable<TblhistoryWhereInput>? OR;

  final Iterable<TblhistoryWhereInput>? NOT;

  final IntFilter? id;

  final IntNullableFilter? userid;

  final IntNullableFilter? photoid;

  final DateTimeNullableFilter? date;

  @JsonKey(name: r'created_at')
  final DateTimeNullableFilter? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTimeNullableFilter? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblhistoryWhereInputToJson(this);
}

@_i1.jsonSerializable
class TblhistoryOrderByWithRelationInput implements _i1.JsonSerializable {
  const TblhistoryOrderByWithRelationInput({
    this.id,
    this.userid,
    this.photoid,
    this.date,
    this.createdAt,
    this.updatedAt,
  });

  factory TblhistoryOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblhistoryOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? userid;

  final SortOrder? photoid;

  final SortOrder? date;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblhistoryOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class TblhistoryWhereUniqueInput implements _i1.JsonSerializable {
  const TblhistoryWhereUniqueInput({this.id});

  factory TblhistoryWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$TblhistoryWhereUniqueInputFromJson(json);

  final int? id;

  @override
  Map<String, dynamic> toJson() => _$TblhistoryWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class TblhistoryOrderByWithAggregationInput implements _i1.JsonSerializable {
  const TblhistoryOrderByWithAggregationInput({
    this.id,
    this.userid,
    this.photoid,
    this.date,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory TblhistoryOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblhistoryOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? userid;

  final SortOrder? photoid;

  final SortOrder? date;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @JsonKey(name: r'_count')
  final TblhistoryCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final TblhistoryAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final TblhistoryMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final TblhistoryMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final TblhistorySumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$TblhistoryOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class TblhistoryScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const TblhistoryScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.userid,
    this.photoid,
    this.date,
    this.createdAt,
    this.updatedAt,
  });

  factory TblhistoryScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblhistoryScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<TblhistoryScalarWhereWithAggregatesInput>? AND;

  final Iterable<TblhistoryScalarWhereWithAggregatesInput>? OR;

  final Iterable<TblhistoryScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final IntNullableWithAggregatesFilter? userid;

  final IntNullableWithAggregatesFilter? photoid;

  final DateTimeNullableWithAggregatesFilter? date;

  @JsonKey(name: r'created_at')
  final DateTimeNullableWithAggregatesFilter? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTimeNullableWithAggregatesFilter? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblhistoryScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateInput implements _i1.JsonSerializable {
  const UserCreateInput({
    this.fname,
    this.lname,
    required this.email,
    this.phone,
    this.password,
    this.profile,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  factory UserCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateInputFromJson(json);

  final String? fname;

  final String? lname;

  final String email;

  final String? phone;

  final String? password;

  final String? profile;

  final String? role;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$UserCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedCreateInput implements _i1.JsonSerializable {
  const UserUncheckedCreateInput({
    this.id,
    this.fname,
    this.lname,
    required this.email,
    this.phone,
    this.password,
    this.profile,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  factory UserUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedCreateInputFromJson(json);

  final int? id;

  final String? fname;

  final String? lname;

  final String email;

  final String? phone;

  final String? password;

  final String? profile;

  final String? role;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateInput implements _i1.JsonSerializable {
  const UserUpdateInput({
    this.fname,
    this.lname,
    this.email,
    this.phone,
    this.password,
    this.profile,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  factory UserUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateInputFromJson(json);

  final NullableStringFieldUpdateOperationsInput? fname;

  final NullableStringFieldUpdateOperationsInput? lname;

  final StringFieldUpdateOperationsInput? email;

  final NullableStringFieldUpdateOperationsInput? phone;

  final NullableStringFieldUpdateOperationsInput? password;

  final NullableStringFieldUpdateOperationsInput? profile;

  final NullableStringFieldUpdateOperationsInput? role;

  @JsonKey(name: r'created_at')
  final NullableDateTimeFieldUpdateOperationsInput? createdAt;

  @JsonKey(name: r'updated_at')
  final NullableDateTimeFieldUpdateOperationsInput? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateInput({
    this.id,
    this.fname,
    this.lname,
    this.email,
    this.phone,
    this.password,
    this.profile,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  factory UserUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final NullableStringFieldUpdateOperationsInput? fname;

  final NullableStringFieldUpdateOperationsInput? lname;

  final StringFieldUpdateOperationsInput? email;

  final NullableStringFieldUpdateOperationsInput? phone;

  final NullableStringFieldUpdateOperationsInput? password;

  final NullableStringFieldUpdateOperationsInput? profile;

  final NullableStringFieldUpdateOperationsInput? role;

  @JsonKey(name: r'created_at')
  final NullableDateTimeFieldUpdateOperationsInput? createdAt;

  @JsonKey(name: r'updated_at')
  final NullableDateTimeFieldUpdateOperationsInput? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateManyInput implements _i1.JsonSerializable {
  const UserCreateManyInput({
    this.id,
    this.fname,
    this.lname,
    required this.email,
    this.phone,
    this.password,
    this.profile,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  factory UserCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateManyInputFromJson(json);

  final int? id;

  final String? fname;

  final String? lname;

  final String email;

  final String? phone;

  final String? password;

  final String? profile;

  final String? role;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$UserCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateManyMutationInput implements _i1.JsonSerializable {
  const UserUpdateManyMutationInput({
    this.fname,
    this.lname,
    this.email,
    this.phone,
    this.password,
    this.profile,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  factory UserUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateManyMutationInputFromJson(json);

  final NullableStringFieldUpdateOperationsInput? fname;

  final NullableStringFieldUpdateOperationsInput? lname;

  final StringFieldUpdateOperationsInput? email;

  final NullableStringFieldUpdateOperationsInput? phone;

  final NullableStringFieldUpdateOperationsInput? password;

  final NullableStringFieldUpdateOperationsInput? profile;

  final NullableStringFieldUpdateOperationsInput? role;

  @JsonKey(name: r'created_at')
  final NullableDateTimeFieldUpdateOperationsInput? createdAt;

  @JsonKey(name: r'updated_at')
  final NullableDateTimeFieldUpdateOperationsInput? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateManyInput({
    this.id,
    this.fname,
    this.lname,
    this.email,
    this.phone,
    this.password,
    this.profile,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  factory UserUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final NullableStringFieldUpdateOperationsInput? fname;

  final NullableStringFieldUpdateOperationsInput? lname;

  final StringFieldUpdateOperationsInput? email;

  final NullableStringFieldUpdateOperationsInput? phone;

  final NullableStringFieldUpdateOperationsInput? password;

  final NullableStringFieldUpdateOperationsInput? profile;

  final NullableStringFieldUpdateOperationsInput? role;

  @JsonKey(name: r'created_at')
  final NullableDateTimeFieldUpdateOperationsInput? createdAt;

  @JsonKey(name: r'updated_at')
  final NullableDateTimeFieldUpdateOperationsInput? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class TblPhotoCreateInput implements _i1.JsonSerializable {
  const TblPhotoCreateInput({
    this.albumsid,
    this.title,
    this.date,
    this.url,
    this.path,
    this.createdAt,
    this.updatedAt,
  });

  factory TblPhotoCreateInput.fromJson(Map<String, dynamic> json) =>
      _$TblPhotoCreateInputFromJson(json);

  final int? albumsid;

  final String? title;

  final DateTime? date;

  final String? url;

  final String? path;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblPhotoCreateInputToJson(this);
}

@_i1.jsonSerializable
class TblPhotoUncheckedCreateInput implements _i1.JsonSerializable {
  const TblPhotoUncheckedCreateInput({
    this.id,
    this.albumsid,
    this.title,
    this.date,
    this.url,
    this.path,
    this.createdAt,
    this.updatedAt,
  });

  factory TblPhotoUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$TblPhotoUncheckedCreateInputFromJson(json);

  final int? id;

  final int? albumsid;

  final String? title;

  final DateTime? date;

  final String? url;

  final String? path;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblPhotoUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class TblPhotoUpdateInput implements _i1.JsonSerializable {
  const TblPhotoUpdateInput({
    this.albumsid,
    this.title,
    this.date,
    this.url,
    this.path,
    this.createdAt,
    this.updatedAt,
  });

  factory TblPhotoUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$TblPhotoUpdateInputFromJson(json);

  final NullableIntFieldUpdateOperationsInput? albumsid;

  final NullableStringFieldUpdateOperationsInput? title;

  final NullableDateTimeFieldUpdateOperationsInput? date;

  final NullableStringFieldUpdateOperationsInput? url;

  final NullableStringFieldUpdateOperationsInput? path;

  @JsonKey(name: r'created_at')
  final NullableDateTimeFieldUpdateOperationsInput? createdAt;

  @JsonKey(name: r'updated_at')
  final NullableDateTimeFieldUpdateOperationsInput? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblPhotoUpdateInputToJson(this);
}

@_i1.jsonSerializable
class TblPhotoUncheckedUpdateInput implements _i1.JsonSerializable {
  const TblPhotoUncheckedUpdateInput({
    this.id,
    this.albumsid,
    this.title,
    this.date,
    this.url,
    this.path,
    this.createdAt,
    this.updatedAt,
  });

  factory TblPhotoUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$TblPhotoUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final NullableIntFieldUpdateOperationsInput? albumsid;

  final NullableStringFieldUpdateOperationsInput? title;

  final NullableDateTimeFieldUpdateOperationsInput? date;

  final NullableStringFieldUpdateOperationsInput? url;

  final NullableStringFieldUpdateOperationsInput? path;

  @JsonKey(name: r'created_at')
  final NullableDateTimeFieldUpdateOperationsInput? createdAt;

  @JsonKey(name: r'updated_at')
  final NullableDateTimeFieldUpdateOperationsInput? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblPhotoUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class TblPhotoCreateManyInput implements _i1.JsonSerializable {
  const TblPhotoCreateManyInput({
    this.id,
    this.albumsid,
    this.title,
    this.date,
    this.url,
    this.path,
    this.createdAt,
    this.updatedAt,
  });

  factory TblPhotoCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$TblPhotoCreateManyInputFromJson(json);

  final int? id;

  final int? albumsid;

  final String? title;

  final DateTime? date;

  final String? url;

  final String? path;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblPhotoCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class TblPhotoUpdateManyMutationInput implements _i1.JsonSerializable {
  const TblPhotoUpdateManyMutationInput({
    this.albumsid,
    this.title,
    this.date,
    this.url,
    this.path,
    this.createdAt,
    this.updatedAt,
  });

  factory TblPhotoUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$TblPhotoUpdateManyMutationInputFromJson(json);

  final NullableIntFieldUpdateOperationsInput? albumsid;

  final NullableStringFieldUpdateOperationsInput? title;

  final NullableDateTimeFieldUpdateOperationsInput? date;

  final NullableStringFieldUpdateOperationsInput? url;

  final NullableStringFieldUpdateOperationsInput? path;

  @JsonKey(name: r'created_at')
  final NullableDateTimeFieldUpdateOperationsInput? createdAt;

  @JsonKey(name: r'updated_at')
  final NullableDateTimeFieldUpdateOperationsInput? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblPhotoUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class TblPhotoUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const TblPhotoUncheckedUpdateManyInput({
    this.id,
    this.albumsid,
    this.title,
    this.date,
    this.url,
    this.path,
    this.createdAt,
    this.updatedAt,
  });

  factory TblPhotoUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblPhotoUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final NullableIntFieldUpdateOperationsInput? albumsid;

  final NullableStringFieldUpdateOperationsInput? title;

  final NullableDateTimeFieldUpdateOperationsInput? date;

  final NullableStringFieldUpdateOperationsInput? url;

  final NullableStringFieldUpdateOperationsInput? path;

  @JsonKey(name: r'created_at')
  final NullableDateTimeFieldUpdateOperationsInput? createdAt;

  @JsonKey(name: r'updated_at')
  final NullableDateTimeFieldUpdateOperationsInput? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblPhotoUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class TblalbumsCreateInput implements _i1.JsonSerializable {
  const TblalbumsCreateInput({
    required this.idfolder,
    this.userid,
    this.title,
    this.createdAt,
    this.updatedAt,
  });

  factory TblalbumsCreateInput.fromJson(Map<String, dynamic> json) =>
      _$TblalbumsCreateInputFromJson(json);

  final String idfolder;

  final int? userid;

  final String? title;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblalbumsCreateInputToJson(this);
}

@_i1.jsonSerializable
class TblalbumsUncheckedCreateInput implements _i1.JsonSerializable {
  const TblalbumsUncheckedCreateInput({
    this.id,
    required this.idfolder,
    this.userid,
    this.title,
    this.createdAt,
    this.updatedAt,
  });

  factory TblalbumsUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$TblalbumsUncheckedCreateInputFromJson(json);

  final int? id;

  final String idfolder;

  final int? userid;

  final String? title;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblalbumsUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class TblalbumsUpdateInput implements _i1.JsonSerializable {
  const TblalbumsUpdateInput({
    this.idfolder,
    this.userid,
    this.title,
    this.createdAt,
    this.updatedAt,
  });

  factory TblalbumsUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$TblalbumsUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? idfolder;

  final NullableIntFieldUpdateOperationsInput? userid;

  final NullableStringFieldUpdateOperationsInput? title;

  @JsonKey(name: r'created_at')
  final NullableDateTimeFieldUpdateOperationsInput? createdAt;

  @JsonKey(name: r'updated_at')
  final NullableDateTimeFieldUpdateOperationsInput? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblalbumsUpdateInputToJson(this);
}

@_i1.jsonSerializable
class TblalbumsUncheckedUpdateInput implements _i1.JsonSerializable {
  const TblalbumsUncheckedUpdateInput({
    this.id,
    this.idfolder,
    this.userid,
    this.title,
    this.createdAt,
    this.updatedAt,
  });

  factory TblalbumsUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$TblalbumsUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? idfolder;

  final NullableIntFieldUpdateOperationsInput? userid;

  final NullableStringFieldUpdateOperationsInput? title;

  @JsonKey(name: r'created_at')
  final NullableDateTimeFieldUpdateOperationsInput? createdAt;

  @JsonKey(name: r'updated_at')
  final NullableDateTimeFieldUpdateOperationsInput? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblalbumsUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class TblalbumsCreateManyInput implements _i1.JsonSerializable {
  const TblalbumsCreateManyInput({
    this.id,
    required this.idfolder,
    this.userid,
    this.title,
    this.createdAt,
    this.updatedAt,
  });

  factory TblalbumsCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$TblalbumsCreateManyInputFromJson(json);

  final int? id;

  final String idfolder;

  final int? userid;

  final String? title;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblalbumsCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class TblalbumsUpdateManyMutationInput implements _i1.JsonSerializable {
  const TblalbumsUpdateManyMutationInput({
    this.idfolder,
    this.userid,
    this.title,
    this.createdAt,
    this.updatedAt,
  });

  factory TblalbumsUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblalbumsUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? idfolder;

  final NullableIntFieldUpdateOperationsInput? userid;

  final NullableStringFieldUpdateOperationsInput? title;

  @JsonKey(name: r'created_at')
  final NullableDateTimeFieldUpdateOperationsInput? createdAt;

  @JsonKey(name: r'updated_at')
  final NullableDateTimeFieldUpdateOperationsInput? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblalbumsUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class TblalbumsUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const TblalbumsUncheckedUpdateManyInput({
    this.id,
    this.idfolder,
    this.userid,
    this.title,
    this.createdAt,
    this.updatedAt,
  });

  factory TblalbumsUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblalbumsUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? idfolder;

  final NullableIntFieldUpdateOperationsInput? userid;

  final NullableStringFieldUpdateOperationsInput? title;

  @JsonKey(name: r'created_at')
  final NullableDateTimeFieldUpdateOperationsInput? createdAt;

  @JsonKey(name: r'updated_at')
  final NullableDateTimeFieldUpdateOperationsInput? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblalbumsUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class TblhistoryCreateInput implements _i1.JsonSerializable {
  const TblhistoryCreateInput({
    this.userid,
    this.photoid,
    this.date,
    this.createdAt,
    this.updatedAt,
  });

  factory TblhistoryCreateInput.fromJson(Map<String, dynamic> json) =>
      _$TblhistoryCreateInputFromJson(json);

  final int? userid;

  final int? photoid;

  final DateTime? date;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblhistoryCreateInputToJson(this);
}

@_i1.jsonSerializable
class TblhistoryUncheckedCreateInput implements _i1.JsonSerializable {
  const TblhistoryUncheckedCreateInput({
    this.id,
    this.userid,
    this.photoid,
    this.date,
    this.createdAt,
    this.updatedAt,
  });

  factory TblhistoryUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$TblhistoryUncheckedCreateInputFromJson(json);

  final int? id;

  final int? userid;

  final int? photoid;

  final DateTime? date;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblhistoryUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class TblhistoryUpdateInput implements _i1.JsonSerializable {
  const TblhistoryUpdateInput({
    this.userid,
    this.photoid,
    this.date,
    this.createdAt,
    this.updatedAt,
  });

  factory TblhistoryUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$TblhistoryUpdateInputFromJson(json);

  final NullableIntFieldUpdateOperationsInput? userid;

  final NullableIntFieldUpdateOperationsInput? photoid;

  final NullableDateTimeFieldUpdateOperationsInput? date;

  @JsonKey(name: r'created_at')
  final NullableDateTimeFieldUpdateOperationsInput? createdAt;

  @JsonKey(name: r'updated_at')
  final NullableDateTimeFieldUpdateOperationsInput? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblhistoryUpdateInputToJson(this);
}

@_i1.jsonSerializable
class TblhistoryUncheckedUpdateInput implements _i1.JsonSerializable {
  const TblhistoryUncheckedUpdateInput({
    this.id,
    this.userid,
    this.photoid,
    this.date,
    this.createdAt,
    this.updatedAt,
  });

  factory TblhistoryUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$TblhistoryUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final NullableIntFieldUpdateOperationsInput? userid;

  final NullableIntFieldUpdateOperationsInput? photoid;

  final NullableDateTimeFieldUpdateOperationsInput? date;

  @JsonKey(name: r'created_at')
  final NullableDateTimeFieldUpdateOperationsInput? createdAt;

  @JsonKey(name: r'updated_at')
  final NullableDateTimeFieldUpdateOperationsInput? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblhistoryUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class TblhistoryCreateManyInput implements _i1.JsonSerializable {
  const TblhistoryCreateManyInput({
    this.id,
    this.userid,
    this.photoid,
    this.date,
    this.createdAt,
    this.updatedAt,
  });

  factory TblhistoryCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$TblhistoryCreateManyInputFromJson(json);

  final int? id;

  final int? userid;

  final int? photoid;

  final DateTime? date;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblhistoryCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class TblhistoryUpdateManyMutationInput implements _i1.JsonSerializable {
  const TblhistoryUpdateManyMutationInput({
    this.userid,
    this.photoid,
    this.date,
    this.createdAt,
    this.updatedAt,
  });

  factory TblhistoryUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblhistoryUpdateManyMutationInputFromJson(json);

  final NullableIntFieldUpdateOperationsInput? userid;

  final NullableIntFieldUpdateOperationsInput? photoid;

  final NullableDateTimeFieldUpdateOperationsInput? date;

  @JsonKey(name: r'created_at')
  final NullableDateTimeFieldUpdateOperationsInput? createdAt;

  @JsonKey(name: r'updated_at')
  final NullableDateTimeFieldUpdateOperationsInput? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblhistoryUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class TblhistoryUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const TblhistoryUncheckedUpdateManyInput({
    this.id,
    this.userid,
    this.photoid,
    this.date,
    this.createdAt,
    this.updatedAt,
  });

  factory TblhistoryUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblhistoryUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final NullableIntFieldUpdateOperationsInput? userid;

  final NullableIntFieldUpdateOperationsInput? photoid;

  final NullableDateTimeFieldUpdateOperationsInput? date;

  @JsonKey(name: r'created_at')
  final NullableDateTimeFieldUpdateOperationsInput? createdAt;

  @JsonKey(name: r'updated_at')
  final NullableDateTimeFieldUpdateOperationsInput? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblhistoryUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class IntFilter implements _i1.JsonSerializable {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntFilter.fromJson(Map<String, dynamic> json) =>
      _$IntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$IntFilterToJson(this);
}

@_i1.jsonSerializable
class StringNullableFilter implements _i1.JsonSerializable {
  const StringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory StringNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$StringNullableFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringNullableFilterToJson(this);
}

@_i1.jsonSerializable
class StringFilter implements _i1.JsonSerializable {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeNullableFilter implements _i1.JsonSerializable {
  const DateTimeNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory DateTimeNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeNullableFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$DateTimeNullableFilterToJson(this);
}

@_i1.jsonSerializable
class SortOrderInput implements _i1.JsonSerializable {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  factory SortOrderInput.fromJson(Map<String, dynamic> json) =>
      _$SortOrderInputFromJson(json);

  final SortOrder sort;

  final NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => _$SortOrderInputToJson(this);
}

@_i1.jsonSerializable
class UserCountOrderByAggregateInput implements _i1.JsonSerializable {
  const UserCountOrderByAggregateInput({
    this.id,
    this.fname,
    this.lname,
    this.email,
    this.phone,
    this.password,
    this.profile,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  factory UserCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? fname;

  final SortOrder? lname;

  final SortOrder? email;

  final SortOrder? phone;

  final SortOrder? password;

  final SortOrder? profile;

  final SortOrder? role;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$UserCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const UserAvgOrderByAggregateInput({this.id});

  factory UserAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() => _$UserAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMaxOrderByAggregateInput({
    this.id,
    this.fname,
    this.lname,
    this.email,
    this.phone,
    this.password,
    this.profile,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  factory UserMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? fname;

  final SortOrder? lname;

  final SortOrder? email;

  final SortOrder? phone;

  final SortOrder? password;

  final SortOrder? profile;

  final SortOrder? role;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$UserMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMinOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMinOrderByAggregateInput({
    this.id,
    this.fname,
    this.lname,
    this.email,
    this.phone,
    this.password,
    this.profile,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  factory UserMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? fname;

  final SortOrder? lname;

  final SortOrder? email;

  final SortOrder? phone;

  final SortOrder? password;

  final SortOrder? profile;

  final SortOrder? role;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$UserMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserSumOrderByAggregateInput implements _i1.JsonSerializable {
  const UserSumOrderByAggregateInput({this.id});

  factory UserSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() => _$UserSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class IntWithAggregatesFilter implements _i1.JsonSerializable {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory IntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$IntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$IntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const StringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$StringNullableWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$StringNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringWithAggregatesFilter implements _i1.JsonSerializable {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$StringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$StringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const DateTimeNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory DateTimeNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$DateTimeNullableWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$DateTimeNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class IntNullableFilter implements _i1.JsonSerializable {
  const IntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$IntNullableFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$IntNullableFilterToJson(this);
}

@_i1.jsonSerializable
class TblPhotoCountOrderByAggregateInput implements _i1.JsonSerializable {
  const TblPhotoCountOrderByAggregateInput({
    this.id,
    this.albumsid,
    this.title,
    this.date,
    this.url,
    this.path,
    this.createdAt,
    this.updatedAt,
  });

  factory TblPhotoCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblPhotoCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? albumsid;

  final SortOrder? title;

  final SortOrder? date;

  final SortOrder? url;

  final SortOrder? path;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblPhotoCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TblPhotoAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const TblPhotoAvgOrderByAggregateInput({
    this.id,
    this.albumsid,
  });

  factory TblPhotoAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblPhotoAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? albumsid;

  @override
  Map<String, dynamic> toJson() =>
      _$TblPhotoAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TblPhotoMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const TblPhotoMaxOrderByAggregateInput({
    this.id,
    this.albumsid,
    this.title,
    this.date,
    this.url,
    this.path,
    this.createdAt,
    this.updatedAt,
  });

  factory TblPhotoMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblPhotoMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? albumsid;

  final SortOrder? title;

  final SortOrder? date;

  final SortOrder? url;

  final SortOrder? path;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblPhotoMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TblPhotoMinOrderByAggregateInput implements _i1.JsonSerializable {
  const TblPhotoMinOrderByAggregateInput({
    this.id,
    this.albumsid,
    this.title,
    this.date,
    this.url,
    this.path,
    this.createdAt,
    this.updatedAt,
  });

  factory TblPhotoMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblPhotoMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? albumsid;

  final SortOrder? title;

  final SortOrder? date;

  final SortOrder? url;

  final SortOrder? path;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblPhotoMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TblPhotoSumOrderByAggregateInput implements _i1.JsonSerializable {
  const TblPhotoSumOrderByAggregateInput({
    this.id,
    this.albumsid,
  });

  factory TblPhotoSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblPhotoSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? albumsid;

  @override
  Map<String, dynamic> toJson() =>
      _$TblPhotoSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class IntNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const IntNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory IntNullableWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$IntNullableWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatNullableFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntNullableFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$IntNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class TblalbumsCountOrderByAggregateInput implements _i1.JsonSerializable {
  const TblalbumsCountOrderByAggregateInput({
    this.id,
    this.idfolder,
    this.userid,
    this.title,
    this.createdAt,
    this.updatedAt,
  });

  factory TblalbumsCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblalbumsCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idfolder;

  final SortOrder? userid;

  final SortOrder? title;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblalbumsCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TblalbumsAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const TblalbumsAvgOrderByAggregateInput({
    this.id,
    this.userid,
  });

  factory TblalbumsAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblalbumsAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? userid;

  @override
  Map<String, dynamic> toJson() =>
      _$TblalbumsAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TblalbumsMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const TblalbumsMaxOrderByAggregateInput({
    this.id,
    this.idfolder,
    this.userid,
    this.title,
    this.createdAt,
    this.updatedAt,
  });

  factory TblalbumsMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblalbumsMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idfolder;

  final SortOrder? userid;

  final SortOrder? title;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblalbumsMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TblalbumsMinOrderByAggregateInput implements _i1.JsonSerializable {
  const TblalbumsMinOrderByAggregateInput({
    this.id,
    this.idfolder,
    this.userid,
    this.title,
    this.createdAt,
    this.updatedAt,
  });

  factory TblalbumsMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblalbumsMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? idfolder;

  final SortOrder? userid;

  final SortOrder? title;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblalbumsMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TblalbumsSumOrderByAggregateInput implements _i1.JsonSerializable {
  const TblalbumsSumOrderByAggregateInput({
    this.id,
    this.userid,
  });

  factory TblalbumsSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblalbumsSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? userid;

  @override
  Map<String, dynamic> toJson() =>
      _$TblalbumsSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TblhistoryCountOrderByAggregateInput implements _i1.JsonSerializable {
  const TblhistoryCountOrderByAggregateInput({
    this.id,
    this.userid,
    this.photoid,
    this.date,
    this.createdAt,
    this.updatedAt,
  });

  factory TblhistoryCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblhistoryCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? userid;

  final SortOrder? photoid;

  final SortOrder? date;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblhistoryCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TblhistoryAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const TblhistoryAvgOrderByAggregateInput({
    this.id,
    this.userid,
    this.photoid,
  });

  factory TblhistoryAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblhistoryAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? userid;

  final SortOrder? photoid;

  @override
  Map<String, dynamic> toJson() =>
      _$TblhistoryAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TblhistoryMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const TblhistoryMaxOrderByAggregateInput({
    this.id,
    this.userid,
    this.photoid,
    this.date,
    this.createdAt,
    this.updatedAt,
  });

  factory TblhistoryMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblhistoryMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? userid;

  final SortOrder? photoid;

  final SortOrder? date;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblhistoryMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TblhistoryMinOrderByAggregateInput implements _i1.JsonSerializable {
  const TblhistoryMinOrderByAggregateInput({
    this.id,
    this.userid,
    this.photoid,
    this.date,
    this.createdAt,
    this.updatedAt,
  });

  factory TblhistoryMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblhistoryMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? userid;

  final SortOrder? photoid;

  final SortOrder? date;

  @JsonKey(name: r'created_at')
  final SortOrder? createdAt;

  @JsonKey(name: r'updated_at')
  final SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TblhistoryMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TblhistorySumOrderByAggregateInput implements _i1.JsonSerializable {
  const TblhistorySumOrderByAggregateInput({
    this.id,
    this.userid,
    this.photoid,
  });

  factory TblhistorySumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TblhistorySumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? userid;

  final SortOrder? photoid;

  @override
  Map<String, dynamic> toJson() =>
      _$TblhistorySumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class NullableStringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const NullableStringFieldUpdateOperationsInput({this.set});

  factory NullableStringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableStringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableStringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class StringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const StringFieldUpdateOperationsInput({this.set});

  factory StringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$StringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$StringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NullableDateTimeFieldUpdateOperationsInput
    implements _i1.JsonSerializable {
  const NullableDateTimeFieldUpdateOperationsInput({this.set});

  factory NullableDateTimeFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableDateTimeFieldUpdateOperationsInputFromJson(json);

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableDateTimeFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class IntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory IntFieldUpdateOperationsInput.fromJson(Map<String, dynamic> json) =>
      _$IntFieldUpdateOperationsInputFromJson(json);

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => _$IntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NullableIntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const NullableIntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory NullableIntFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableIntFieldUpdateOperationsInputFromJson(json);

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableIntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringNullableFilter implements _i1.JsonSerializable {
  const NestedStringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringNullableFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringFilter implements _i1.JsonSerializable {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeNullableFilter implements _i1.JsonSerializable {
  const NestedDateTimeNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedDateTimeNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedDateTimeNullableFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedDateTimeNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedIntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$NestedIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatFilter implements _i1.JsonSerializable {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringNullableWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntNullableFilter implements _i1.JsonSerializable {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntNullableFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeNullableWithAggregatesFilter
    implements _i1.JsonSerializable {
  const NestedDateTimeNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedDateTimeNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedDateTimeNullableWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedDateTimeNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedIntNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedIntNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedIntNullableWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatNullableFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntNullableFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedIntNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatNullableFilter implements _i1.JsonSerializable {
  const NestedFloatNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatNullableFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatNullableFilterToJson(this);
}

@_i1.jsonSerializable
class User implements _i1.JsonSerializable {
  const User({
    required this.id,
    this.fname,
    this.lname,
    required this.email,
    this.phone,
    this.password,
    this.profile,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  final int id;

  final String? fname;

  final String? lname;

  final String email;

  final String? phone;

  final String? password;

  final String? profile;

  final String? role;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@_i1.jsonSerializable
class TblPhoto implements _i1.JsonSerializable {
  const TblPhoto({
    required this.id,
    this.albumsid,
    this.title,
    this.date,
    this.url,
    this.path,
    this.createdAt,
    this.updatedAt,
  });

  factory TblPhoto.fromJson(Map<String, dynamic> json) =>
      _$TblPhotoFromJson(json);

  final int id;

  final int? albumsid;

  final String? title;

  final DateTime? date;

  final String? url;

  final String? path;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblPhotoToJson(this);
}

@_i1.jsonSerializable
class Tblalbums implements _i1.JsonSerializable {
  const Tblalbums({
    required this.id,
    required this.idfolder,
    this.userid,
    this.title,
    this.createdAt,
    this.updatedAt,
  });

  factory Tblalbums.fromJson(Map<String, dynamic> json) =>
      _$TblalbumsFromJson(json);

  final int id;

  final String idfolder;

  final int? userid;

  final String? title;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblalbumsToJson(this);
}

@_i1.jsonSerializable
class Tblhistory implements _i1.JsonSerializable {
  const Tblhistory({
    required this.id,
    this.userid,
    this.photoid,
    this.date,
    this.createdAt,
    this.updatedAt,
  });

  factory Tblhistory.fromJson(Map<String, dynamic> json) =>
      _$TblhistoryFromJson(json);

  final int id;

  final int? userid;

  final int? photoid;

  final DateTime? date;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblhistoryToJson(this);
}

class UserFluent<T> extends _i1.PrismaFluent<T> {
  const UserFluent(
    super.original,
    super.$query,
  );
}

class TblPhotoFluent<T> extends _i1.PrismaFluent<T> {
  const TblPhotoFluent(
    super.original,
    super.$query,
  );
}

class TblalbumsFluent<T> extends _i1.PrismaFluent<T> {
  const TblalbumsFluent(
    super.original,
    super.$query,
  );
}

class TblhistoryFluent<T> extends _i1.PrismaFluent<T> {
  const TblhistoryFluent(
    super.original,
    super.$query,
  );
}

extension UserModelDelegateExtension on _i1.ModelDelegate<User> {
  UserFluent<User?> findUnique({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueuser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findUniqueOrThrow({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueuserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueuserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: user)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> findFirst({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstuser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findFirstOrThrow({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstuserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstuserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: user)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<Iterable<User>> findMany({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyuser',
    );
    final fields = UserScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyuser) => findManyuser
        .map((Map findManyuser) => User.fromJson(findManyuser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> create({required UserCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneuser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: user)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<UserCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyuser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyuser) =>
        AffectedRowsOutput.fromJson(createManyuser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User?> update({
    required UserUpdateInput data,
    required UserWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneuser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required UserUpdateManyMutationInput data,
    UserWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyuser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyuser) =>
        AffectedRowsOutput.fromJson(updateManyuser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> upsert({
    required UserWhereUniqueInput where,
    required UserCreateInput create,
    required UserUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneuser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: user)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> delete({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneuser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({UserWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyuser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyuser) =>
        AffectedRowsOutput.fromJson(deleteManyuser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateUser aggregate({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateuser',
    );
    return AggregateUser(query);
  }

  Future<Iterable<UserGroupByOutputType>> groupBy({
    UserWhereInput? where,
    Iterable<UserOrderByWithAggregationInput>? orderBy,
    required Iterable<UserScalarFieldEnum> by,
    UserScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByuser',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByuser) => groupByuser.map((Map groupByuser) =>
        UserGroupByOutputType.fromJson(groupByuser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension TblPhotoModelDelegateExtension on _i1.ModelDelegate<TblPhoto> {
  TblPhotoFluent<TblPhoto?> findUnique(
      {required TblPhotoWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquetblPhoto',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquetblPhoto',
    );
    final future = query(TblPhotoScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? TblPhoto.fromJson(json.cast<String, dynamic>())
            : null);
    return TblPhotoFluent<TblPhoto?>(
      future,
      query,
    );
  }

  TblPhotoFluent<TblPhoto> findUniqueOrThrow(
      {required TblPhotoWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquetblPhotoOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquetblPhotoOrThrow',
    );
    final future = query(TblPhotoScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? TblPhoto.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: tblPhoto)'));
    return TblPhotoFluent<TblPhoto>(
      future,
      query,
    );
  }

  TblPhotoFluent<TblPhoto?> findFirst({
    TblPhotoWhereInput? where,
    Iterable<TblPhotoOrderByWithRelationInput>? orderBy,
    TblPhotoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TblPhotoScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirsttblPhoto',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirsttblPhoto',
    );
    final future = query(TblPhotoScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? TblPhoto.fromJson(json.cast<String, dynamic>())
            : null);
    return TblPhotoFluent<TblPhoto?>(
      future,
      query,
    );
  }

  TblPhotoFluent<TblPhoto> findFirstOrThrow({
    TblPhotoWhereInput? where,
    Iterable<TblPhotoOrderByWithRelationInput>? orderBy,
    TblPhotoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TblPhotoScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirsttblPhotoOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirsttblPhotoOrThrow',
    );
    final future = query(TblPhotoScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? TblPhoto.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: tblPhoto)'));
    return TblPhotoFluent<TblPhoto>(
      future,
      query,
    );
  }

  Future<Iterable<TblPhoto>> findMany({
    TblPhotoWhereInput? where,
    Iterable<TblPhotoOrderByWithRelationInput>? orderBy,
    TblPhotoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TblPhotoScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManytblPhoto',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManytblPhoto',
    );
    final fields = TblPhotoScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManytblPhoto) => findManytblPhoto.map(
        (Map findManytblPhoto) => TblPhoto.fromJson(findManytblPhoto.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  TblPhotoFluent<TblPhoto> create({TblPhotoCreateInput? data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOnetblPhoto',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOnetblPhoto',
    );
    final future = query(TblPhotoScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? TblPhoto.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: tblPhoto)'));
    return TblPhotoFluent<TblPhoto>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<TblPhotoCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManytblPhoto',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManytblPhoto',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManytblPhoto) =>
        AffectedRowsOutput.fromJson(createManytblPhoto.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  TblPhotoFluent<TblPhoto?> update({
    required TblPhotoUpdateInput data,
    required TblPhotoWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOnetblPhoto',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOnetblPhoto',
    );
    final future = query(TblPhotoScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? TblPhoto.fromJson(json.cast<String, dynamic>())
            : null);
    return TblPhotoFluent<TblPhoto?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required TblPhotoUpdateManyMutationInput data,
    TblPhotoWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManytblPhoto',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManytblPhoto',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManytblPhoto) =>
        AffectedRowsOutput.fromJson(updateManytblPhoto.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  TblPhotoFluent<TblPhoto> upsert({
    required TblPhotoWhereUniqueInput where,
    required TblPhotoCreateInput create,
    required TblPhotoUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOnetblPhoto',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOnetblPhoto',
    );
    final future = query(TblPhotoScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? TblPhoto.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: tblPhoto)'));
    return TblPhotoFluent<TblPhoto>(
      future,
      query,
    );
  }

  TblPhotoFluent<TblPhoto?> delete({required TblPhotoWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOnetblPhoto',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOnetblPhoto',
    );
    final future = query(TblPhotoScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? TblPhoto.fromJson(json.cast<String, dynamic>())
            : null);
    return TblPhotoFluent<TblPhoto?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({TblPhotoWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManytblPhoto',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManytblPhoto',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManytblPhoto) =>
        AffectedRowsOutput.fromJson(deleteManytblPhoto.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateTblPhoto aggregate({
    TblPhotoWhereInput? where,
    Iterable<TblPhotoOrderByWithRelationInput>? orderBy,
    TblPhotoWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregatetblPhoto',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregatetblPhoto',
    );
    return AggregateTblPhoto(query);
  }

  Future<Iterable<TblPhotoGroupByOutputType>> groupBy({
    TblPhotoWhereInput? where,
    Iterable<TblPhotoOrderByWithAggregationInput>? orderBy,
    required Iterable<TblPhotoScalarFieldEnum> by,
    TblPhotoScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupBytblPhoto',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupBytblPhoto',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupBytblPhoto) =>
        groupBytblPhoto.map((Map groupBytblPhoto) =>
            TblPhotoGroupByOutputType.fromJson(groupBytblPhoto.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension TblalbumsModelDelegateExtension on _i1.ModelDelegate<Tblalbums> {
  TblalbumsFluent<Tblalbums?> findUnique(
      {required TblalbumsWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquetblalbums',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquetblalbums',
    );
    final future = query(TblalbumsScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Tblalbums.fromJson(json.cast<String, dynamic>())
            : null);
    return TblalbumsFluent<Tblalbums?>(
      future,
      query,
    );
  }

  TblalbumsFluent<Tblalbums> findUniqueOrThrow(
      {required TblalbumsWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquetblalbumsOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquetblalbumsOrThrow',
    );
    final future = query(TblalbumsScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Tblalbums.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: tblalbums)'));
    return TblalbumsFluent<Tblalbums>(
      future,
      query,
    );
  }

  TblalbumsFluent<Tblalbums?> findFirst({
    TblalbumsWhereInput? where,
    Iterable<TblalbumsOrderByWithRelationInput>? orderBy,
    TblalbumsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TblalbumsScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirsttblalbums',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirsttblalbums',
    );
    final future = query(TblalbumsScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Tblalbums.fromJson(json.cast<String, dynamic>())
            : null);
    return TblalbumsFluent<Tblalbums?>(
      future,
      query,
    );
  }

  TblalbumsFluent<Tblalbums> findFirstOrThrow({
    TblalbumsWhereInput? where,
    Iterable<TblalbumsOrderByWithRelationInput>? orderBy,
    TblalbumsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TblalbumsScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirsttblalbumsOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirsttblalbumsOrThrow',
    );
    final future = query(TblalbumsScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Tblalbums.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: tblalbums)'));
    return TblalbumsFluent<Tblalbums>(
      future,
      query,
    );
  }

  Future<Iterable<Tblalbums>> findMany({
    TblalbumsWhereInput? where,
    Iterable<TblalbumsOrderByWithRelationInput>? orderBy,
    TblalbumsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TblalbumsScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManytblalbums',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManytblalbums',
    );
    final fields = TblalbumsScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManytblalbums) =>
        findManytblalbums.map((Map findManytblalbums) =>
            Tblalbums.fromJson(findManytblalbums.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  TblalbumsFluent<Tblalbums> create({required TblalbumsCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOnetblalbums',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOnetblalbums',
    );
    final future = query(TblalbumsScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Tblalbums.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: tblalbums)'));
    return TblalbumsFluent<Tblalbums>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<TblalbumsCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManytblalbums',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManytblalbums',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManytblalbums) =>
        AffectedRowsOutput.fromJson(createManytblalbums.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  TblalbumsFluent<Tblalbums?> update({
    required TblalbumsUpdateInput data,
    required TblalbumsWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOnetblalbums',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOnetblalbums',
    );
    final future = query(TblalbumsScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Tblalbums.fromJson(json.cast<String, dynamic>())
            : null);
    return TblalbumsFluent<Tblalbums?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required TblalbumsUpdateManyMutationInput data,
    TblalbumsWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManytblalbums',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManytblalbums',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManytblalbums) =>
        AffectedRowsOutput.fromJson(updateManytblalbums.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  TblalbumsFluent<Tblalbums> upsert({
    required TblalbumsWhereUniqueInput where,
    required TblalbumsCreateInput create,
    required TblalbumsUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOnetblalbums',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOnetblalbums',
    );
    final future = query(TblalbumsScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Tblalbums.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: tblalbums)'));
    return TblalbumsFluent<Tblalbums>(
      future,
      query,
    );
  }

  TblalbumsFluent<Tblalbums?> delete(
      {required TblalbumsWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOnetblalbums',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOnetblalbums',
    );
    final future = query(TblalbumsScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Tblalbums.fromJson(json.cast<String, dynamic>())
            : null);
    return TblalbumsFluent<Tblalbums?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({TblalbumsWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManytblalbums',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManytblalbums',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManytblalbums) =>
        AffectedRowsOutput.fromJson(deleteManytblalbums.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateTblalbums aggregate({
    TblalbumsWhereInput? where,
    Iterable<TblalbumsOrderByWithRelationInput>? orderBy,
    TblalbumsWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregatetblalbums',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregatetblalbums',
    );
    return AggregateTblalbums(query);
  }

  Future<Iterable<TblalbumsGroupByOutputType>> groupBy({
    TblalbumsWhereInput? where,
    Iterable<TblalbumsOrderByWithAggregationInput>? orderBy,
    required Iterable<TblalbumsScalarFieldEnum> by,
    TblalbumsScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupBytblalbums',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupBytblalbums',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupBytblalbums) =>
        groupBytblalbums.map((Map groupBytblalbums) =>
            TblalbumsGroupByOutputType.fromJson(groupBytblalbums.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension TblhistoryModelDelegateExtension on _i1.ModelDelegate<Tblhistory> {
  TblhistoryFluent<Tblhistory?> findUnique(
      {required TblhistoryWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquetblhistory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquetblhistory',
    );
    final future = query(TblhistoryScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Tblhistory.fromJson(json.cast<String, dynamic>())
            : null);
    return TblhistoryFluent<Tblhistory?>(
      future,
      query,
    );
  }

  TblhistoryFluent<Tblhistory> findUniqueOrThrow(
      {required TblhistoryWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquetblhistoryOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquetblhistoryOrThrow',
    );
    final future = query(TblhistoryScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Tblhistory.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: tblhistory)'));
    return TblhistoryFluent<Tblhistory>(
      future,
      query,
    );
  }

  TblhistoryFluent<Tblhistory?> findFirst({
    TblhistoryWhereInput? where,
    Iterable<TblhistoryOrderByWithRelationInput>? orderBy,
    TblhistoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TblhistoryScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirsttblhistory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirsttblhistory',
    );
    final future = query(TblhistoryScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Tblhistory.fromJson(json.cast<String, dynamic>())
            : null);
    return TblhistoryFluent<Tblhistory?>(
      future,
      query,
    );
  }

  TblhistoryFluent<Tblhistory> findFirstOrThrow({
    TblhistoryWhereInput? where,
    Iterable<TblhistoryOrderByWithRelationInput>? orderBy,
    TblhistoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TblhistoryScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirsttblhistoryOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirsttblhistoryOrThrow',
    );
    final future = query(TblhistoryScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Tblhistory.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: tblhistory)'));
    return TblhistoryFluent<Tblhistory>(
      future,
      query,
    );
  }

  Future<Iterable<Tblhistory>> findMany({
    TblhistoryWhereInput? where,
    Iterable<TblhistoryOrderByWithRelationInput>? orderBy,
    TblhistoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TblhistoryScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManytblhistory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManytblhistory',
    );
    final fields = TblhistoryScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManytblhistory) =>
        findManytblhistory.map((Map findManytblhistory) =>
            Tblhistory.fromJson(findManytblhistory.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  TblhistoryFluent<Tblhistory> create({TblhistoryCreateInput? data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOnetblhistory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOnetblhistory',
    );
    final future = query(TblhistoryScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Tblhistory.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: tblhistory)'));
    return TblhistoryFluent<Tblhistory>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<TblhistoryCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManytblhistory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManytblhistory',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManytblhistory) =>
        AffectedRowsOutput.fromJson(createManytblhistory.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  TblhistoryFluent<Tblhistory?> update({
    required TblhistoryUpdateInput data,
    required TblhistoryWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOnetblhistory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOnetblhistory',
    );
    final future = query(TblhistoryScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Tblhistory.fromJson(json.cast<String, dynamic>())
            : null);
    return TblhistoryFluent<Tblhistory?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required TblhistoryUpdateManyMutationInput data,
    TblhistoryWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManytblhistory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManytblhistory',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManytblhistory) =>
        AffectedRowsOutput.fromJson(updateManytblhistory.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  TblhistoryFluent<Tblhistory> upsert({
    required TblhistoryWhereUniqueInput where,
    required TblhistoryCreateInput create,
    required TblhistoryUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOnetblhistory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOnetblhistory',
    );
    final future = query(TblhistoryScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Tblhistory.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: tblhistory)'));
    return TblhistoryFluent<Tblhistory>(
      future,
      query,
    );
  }

  TblhistoryFluent<Tblhistory?> delete(
      {required TblhistoryWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOnetblhistory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOnetblhistory',
    );
    final future = query(TblhistoryScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Tblhistory.fromJson(json.cast<String, dynamic>())
            : null);
    return TblhistoryFluent<Tblhistory?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({TblhistoryWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManytblhistory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManytblhistory',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManytblhistory) =>
        AffectedRowsOutput.fromJson(deleteManytblhistory.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateTblhistory aggregate({
    TblhistoryWhereInput? where,
    Iterable<TblhistoryOrderByWithRelationInput>? orderBy,
    TblhistoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregatetblhistory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregatetblhistory',
    );
    return AggregateTblhistory(query);
  }

  Future<Iterable<TblhistoryGroupByOutputType>> groupBy({
    TblhistoryWhereInput? where,
    Iterable<TblhistoryOrderByWithAggregationInput>? orderBy,
    required Iterable<TblhistoryScalarFieldEnum> by,
    TblhistoryScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupBytblhistory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupBytblhistory',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupBytblhistory) =>
        groupBytblhistory.map((Map groupBytblhistory) =>
            TblhistoryGroupByOutputType.fromJson(groupBytblhistory.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class UserGroupByOutputType implements _i1.JsonSerializable {
  const UserGroupByOutputType({
    this.id,
    this.fname,
    this.lname,
    this.email,
    this.phone,
    this.password,
    this.profile,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  factory UserGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$UserGroupByOutputTypeFromJson(json);

  final int? id;

  final String? fname;

  final String? lname;

  final String? email;

  final String? phone;

  final String? password;

  final String? profile;

  final String? role;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$UserGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class TblPhotoGroupByOutputType implements _i1.JsonSerializable {
  const TblPhotoGroupByOutputType({
    this.id,
    this.albumsid,
    this.title,
    this.date,
    this.url,
    this.path,
    this.createdAt,
    this.updatedAt,
  });

  factory TblPhotoGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$TblPhotoGroupByOutputTypeFromJson(json);

  final int? id;

  final int? albumsid;

  final String? title;

  final DateTime? date;

  final String? url;

  final String? path;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblPhotoGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class TblalbumsGroupByOutputType implements _i1.JsonSerializable {
  const TblalbumsGroupByOutputType({
    this.id,
    this.idfolder,
    this.userid,
    this.title,
    this.createdAt,
    this.updatedAt,
  });

  factory TblalbumsGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$TblalbumsGroupByOutputTypeFromJson(json);

  final int? id;

  final String? idfolder;

  final int? userid;

  final String? title;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblalbumsGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class TblhistoryGroupByOutputType implements _i1.JsonSerializable {
  const TblhistoryGroupByOutputType({
    this.id,
    this.userid,
    this.photoid,
    this.date,
    this.createdAt,
    this.updatedAt,
  });

  factory TblhistoryGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$TblhistoryGroupByOutputTypeFromJson(json);

  final int? id;

  final int? userid;

  final int? photoid;

  final DateTime? date;

  @JsonKey(name: r'created_at')
  final DateTime? createdAt;

  @JsonKey(name: r'updated_at')
  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => _$TblhistoryGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregateUser {
  const AggregateUser(this.$query);

  final _i1.PrismaFluentQuery $query;

  UserCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return UserCountAggregateOutputType(query);
  }

  UserAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return UserAvgAggregateOutputType(query);
  }

  UserSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return UserSumAggregateOutputType(query);
  }

  UserMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return UserMinAggregateOutputType(query);
  }

  UserMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return UserMaxAggregateOutputType(query);
  }
}

class AggregateTblPhoto {
  const AggregateTblPhoto(this.$query);

  final _i1.PrismaFluentQuery $query;

  TblPhotoCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return TblPhotoCountAggregateOutputType(query);
  }

  TblPhotoAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return TblPhotoAvgAggregateOutputType(query);
  }

  TblPhotoSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return TblPhotoSumAggregateOutputType(query);
  }

  TblPhotoMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return TblPhotoMinAggregateOutputType(query);
  }

  TblPhotoMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return TblPhotoMaxAggregateOutputType(query);
  }
}

class AggregateTblalbums {
  const AggregateTblalbums(this.$query);

  final _i1.PrismaFluentQuery $query;

  TblalbumsCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return TblalbumsCountAggregateOutputType(query);
  }

  TblalbumsAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return TblalbumsAvgAggregateOutputType(query);
  }

  TblalbumsSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return TblalbumsSumAggregateOutputType(query);
  }

  TblalbumsMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return TblalbumsMinAggregateOutputType(query);
  }

  TblalbumsMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return TblalbumsMaxAggregateOutputType(query);
  }
}

class AggregateTblhistory {
  const AggregateTblhistory(this.$query);

  final _i1.PrismaFluentQuery $query;

  TblhistoryCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return TblhistoryCountAggregateOutputType(query);
  }

  TblhistoryAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return TblhistoryAvgAggregateOutputType(query);
  }

  TblhistorySumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return TblhistorySumAggregateOutputType(query);
  }

  TblhistoryMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return TblhistoryMinAggregateOutputType(query);
  }

  TblhistoryMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return TblhistoryMaxAggregateOutputType(query);
  }
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> fname() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'fname',
          fields: fields,
        )
      ]),
      key: r'fname',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> lname() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'lname',
          fields: fields,
        )
      ]),
      key: r'lname',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> email() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'email',
          fields: fields,
        )
      ]),
      key: r'email',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> phone() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'phone',
          fields: fields,
        )
      ]),
      key: r'phone',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> profile() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'profile',
          fields: fields,
        )
      ]),
      key: r'profile',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> role() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'role',
          fields: fields,
        )
      ]),
      key: r'role',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created_at',
          fields: fields,
        )
      ]),
      key: r'created_at',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> updatedAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updated_at',
          fields: fields,
        )
      ]),
      key: r'updated_at',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class UserAvgAggregateOutputType {
  const UserAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class UserSumAggregateOutputType {
  const UserSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> fname() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'fname',
          fields: fields,
        )
      ]),
      key: r'fname',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> lname() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'lname',
          fields: fields,
        )
      ]),
      key: r'lname',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> email() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'email',
          fields: fields,
        )
      ]),
      key: r'email',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> phone() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'phone',
          fields: fields,
        )
      ]),
      key: r'phone',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> profile() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'profile',
          fields: fields,
        )
      ]),
      key: r'profile',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> role() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'role',
          fields: fields,
        )
      ]),
      key: r'role',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created_at',
          fields: fields,
        )
      ]),
      key: r'created_at',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<DateTime?> updatedAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updated_at',
          fields: fields,
        )
      ]),
      key: r'updated_at',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> fname() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'fname',
          fields: fields,
        )
      ]),
      key: r'fname',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> lname() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'lname',
          fields: fields,
        )
      ]),
      key: r'lname',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> email() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'email',
          fields: fields,
        )
      ]),
      key: r'email',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> phone() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'phone',
          fields: fields,
        )
      ]),
      key: r'phone',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> profile() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'profile',
          fields: fields,
        )
      ]),
      key: r'profile',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> role() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'role',
          fields: fields,
        )
      ]),
      key: r'role',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created_at',
          fields: fields,
        )
      ]),
      key: r'created_at',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<DateTime?> updatedAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updated_at',
          fields: fields,
        )
      ]),
      key: r'updated_at',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class TblPhotoCountAggregateOutputType {
  const TblPhotoCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> albumsid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'albumsid',
          fields: fields,
        )
      ]),
      key: r'albumsid',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> date() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'date',
          fields: fields,
        )
      ]),
      key: r'date',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> url() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'url',
          fields: fields,
        )
      ]),
      key: r'url',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> path() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'path',
          fields: fields,
        )
      ]),
      key: r'path',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created_at',
          fields: fields,
        )
      ]),
      key: r'created_at',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> updatedAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updated_at',
          fields: fields,
        )
      ]),
      key: r'updated_at',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class TblPhotoAvgAggregateOutputType {
  const TblPhotoAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> albumsid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'albumsid',
          fields: fields,
        )
      ]),
      key: r'albumsid',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class TblPhotoSumAggregateOutputType {
  const TblPhotoSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> albumsid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'albumsid',
          fields: fields,
        )
      ]),
      key: r'albumsid',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class TblPhotoMinAggregateOutputType {
  const TblPhotoMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> albumsid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'albumsid',
          fields: fields,
        )
      ]),
      key: r'albumsid',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> date() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'date',
          fields: fields,
        )
      ]),
      key: r'date',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<String?> url() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'url',
          fields: fields,
        )
      ]),
      key: r'url',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> path() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'path',
          fields: fields,
        )
      ]),
      key: r'path',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created_at',
          fields: fields,
        )
      ]),
      key: r'created_at',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<DateTime?> updatedAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updated_at',
          fields: fields,
        )
      ]),
      key: r'updated_at',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class TblPhotoMaxAggregateOutputType {
  const TblPhotoMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> albumsid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'albumsid',
          fields: fields,
        )
      ]),
      key: r'albumsid',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> date() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'date',
          fields: fields,
        )
      ]),
      key: r'date',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<String?> url() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'url',
          fields: fields,
        )
      ]),
      key: r'url',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> path() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'path',
          fields: fields,
        )
      ]),
      key: r'path',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created_at',
          fields: fields,
        )
      ]),
      key: r'created_at',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<DateTime?> updatedAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updated_at',
          fields: fields,
        )
      ]),
      key: r'updated_at',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class TblalbumsCountAggregateOutputType {
  const TblalbumsCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> idfolder() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idfolder',
          fields: fields,
        )
      ]),
      key: r'idfolder',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> userid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userid',
          fields: fields,
        )
      ]),
      key: r'userid',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created_at',
          fields: fields,
        )
      ]),
      key: r'created_at',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> updatedAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updated_at',
          fields: fields,
        )
      ]),
      key: r'updated_at',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class TblalbumsAvgAggregateOutputType {
  const TblalbumsAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> userid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userid',
          fields: fields,
        )
      ]),
      key: r'userid',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class TblalbumsSumAggregateOutputType {
  const TblalbumsSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> userid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userid',
          fields: fields,
        )
      ]),
      key: r'userid',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class TblalbumsMinAggregateOutputType {
  const TblalbumsMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> idfolder() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idfolder',
          fields: fields,
        )
      ]),
      key: r'idfolder',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> userid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userid',
          fields: fields,
        )
      ]),
      key: r'userid',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created_at',
          fields: fields,
        )
      ]),
      key: r'created_at',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<DateTime?> updatedAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updated_at',
          fields: fields,
        )
      ]),
      key: r'updated_at',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class TblalbumsMaxAggregateOutputType {
  const TblalbumsMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> idfolder() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idfolder',
          fields: fields,
        )
      ]),
      key: r'idfolder',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> userid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userid',
          fields: fields,
        )
      ]),
      key: r'userid',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created_at',
          fields: fields,
        )
      ]),
      key: r'created_at',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<DateTime?> updatedAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updated_at',
          fields: fields,
        )
      ]),
      key: r'updated_at',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class TblhistoryCountAggregateOutputType {
  const TblhistoryCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> userid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userid',
          fields: fields,
        )
      ]),
      key: r'userid',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> photoid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'photoid',
          fields: fields,
        )
      ]),
      key: r'photoid',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> date() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'date',
          fields: fields,
        )
      ]),
      key: r'date',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created_at',
          fields: fields,
        )
      ]),
      key: r'created_at',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> updatedAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updated_at',
          fields: fields,
        )
      ]),
      key: r'updated_at',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class TblhistoryAvgAggregateOutputType {
  const TblhistoryAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> userid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userid',
          fields: fields,
        )
      ]),
      key: r'userid',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> photoid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'photoid',
          fields: fields,
        )
      ]),
      key: r'photoid',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class TblhistorySumAggregateOutputType {
  const TblhistorySumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> userid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userid',
          fields: fields,
        )
      ]),
      key: r'userid',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> photoid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'photoid',
          fields: fields,
        )
      ]),
      key: r'photoid',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class TblhistoryMinAggregateOutputType {
  const TblhistoryMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> userid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userid',
          fields: fields,
        )
      ]),
      key: r'userid',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> photoid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'photoid',
          fields: fields,
        )
      ]),
      key: r'photoid',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<DateTime?> date() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'date',
          fields: fields,
        )
      ]),
      key: r'date',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<DateTime?> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created_at',
          fields: fields,
        )
      ]),
      key: r'created_at',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<DateTime?> updatedAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updated_at',
          fields: fields,
        )
      ]),
      key: r'updated_at',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class TblhistoryMaxAggregateOutputType {
  const TblhistoryMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> userid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userid',
          fields: fields,
        )
      ]),
      key: r'userid',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> photoid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'photoid',
          fields: fields,
        )
      ]),
      key: r'photoid',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<DateTime?> date() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'date',
          fields: fields,
        )
      ]),
      key: r'date',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<DateTime?> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created_at',
          fields: fields,
        )
      ]),
      key: r'created_at',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<DateTime?> updatedAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updated_at',
          fields: fields,
        )
      ]),
      key: r'updated_at',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources({this.db});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Ly8gVGhpcyBpcyB5b3VyIFByaXNtYSBzY2hlbWEgZmlsZSwKLy8gbGVhcm4gbW9yZSBhYm91dCBpdCBpbiB0aGUgZG9jczogaHR0cHM6Ly9wcmlzLmx5L2QvcHJpc21hLXNjaGVtYQoKZ2VuZXJhdG9yIGNsaWVudCB7CiAgcHJvdmlkZXIgPSAiZGFydCBydW4gb3JtIgp9CgpkYXRhc291cmNlIGRiIHsKICBwcm92aWRlciA9ICJteXNxbCIKICB1cmwgICAgICA9IGVudigiREFUQUJBU0VfVVJMIikKfQoKbW9kZWwgdXNlciB7CiAgaWQgSW50IEBpZCBAZGVmYXVsdChhdXRvaW5jcmVtZW50KCkpCiAgZm5hbWUgU3RyaW5nPwogIGxuYW1lIFN0cmluZz8KICBlbWFpbCBTdHJpbmcgQHVuaXF1ZQogIHBob25lIFN0cmluZz8gQHVuaXF1ZQogIHBhc3N3b3JkIFN0cmluZz8KICBwcm9maWxlIFN0cmluZz8KICByb2xlIFN0cmluZz8KICBjcmVhdGVkX2F0IERhdGVUaW1lPwogIHVwZGF0ZWRfYXQgRGF0ZVRpbWU/Cn0KCm1vZGVsIHRibFBob3RvewogIGlkIEludCBAaWQgQGRlZmF1bHQoYXV0b2luY3JlbWVudCgpKQogIGFsYnVtc2lkIEludD8KICB0aXRsZSBTdHJpbmc/CiAgZGF0ZSBEYXRlVGltZT8KICB1cmwgU3RyaW5nPwogIHBhdGggU3RyaW5nPwogIGNyZWF0ZWRfYXQgRGF0ZVRpbWU/CiAgdXBkYXRlZF9hdCBEYXRlVGltZT8KfQoKbW9kZWwgdGJsYWxidW1zewogIGlkIEludCBAaWQgQGRlZmF1bHQoYXV0b2luY3JlbWVudCgpKQogIGlkZm9sZGVyIFN0cmluZwogIHVzZXJpZCBJbnQ/CiAgdGl0bGUgU3RyaW5nPwogIGNyZWF0ZWRfYXQgRGF0ZVRpbWU/CiAgdXBkYXRlZF9hdCBEYXRlVGltZT8KfQoKbW9kZWwgdGJsaGlzdG9yeXsKICBpZCBJbnQgQGlkIEBkZWZhdWx0KGF1dG9pbmNyZW1lbnQoKSkKICB1c2VyaWQgSW50PwogIHBob3RvaWQgSW50PwogIGRhdGUgRGF0ZVRpbWU/CiAgY3JlYXRlZF9hdCBEYXRlVGltZT8KICB1cGRhdGVkX2F0IERhdGVUaW1lPwp9CgoK',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'D:\Dart server\photo_api\node_modules\prisma\query-engine-windows.exe',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );

  _i1.ModelDelegate<User> get user => _i1.ModelDelegate<User>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<TblPhoto> get tblPhoto => _i1.ModelDelegate<TblPhoto>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Tblalbums> get tblalbums => _i1.ModelDelegate<Tblalbums>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Tblhistory> get tblhistory => _i1.ModelDelegate<Tblhistory>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  int? fetchUserFromToken(String token) {
    try {
      final jwt = JWT.verify(token, SecretKey("photoapitest"));
      return jwt.payload as int;
    } on JWTException catch (e) {
      return null;
    }
  }
}
