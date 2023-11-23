// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserWhereInput _$UserWhereInputFromJson(Map<String, dynamic> json) =>
    UserWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['username'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFilter.fromJson(json['email'] as Map<String, dynamic>),
      phone: json['phone'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['phone'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['password'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : StringNullableFilter.fromJson(json['role'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserWhereInputToJson(UserWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('phone', instance.phone?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

UserOrderByWithRelationInput _$UserOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    UserOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      phone: $enumDecodeNullable(_$SortOrderEnumMap, json['phone']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      role: $enumDecodeNullable(_$SortOrderEnumMap, json['role']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
    );

Map<String, dynamic> _$UserOrderByWithRelationInputToJson(
    UserOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('phone', _$SortOrderEnumMap[instance.phone]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('role', _$SortOrderEnumMap[instance.role]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  return val;
}

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};

UserWhereUniqueInput _$UserWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    UserWhereUniqueInput(
      id: json['id'] as int?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$UserWhereUniqueInputToJson(
    UserWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  return val;
}

UserOrderByWithAggregationInput _$UserOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    UserOrderByWithAggregationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      phone: $enumDecodeNullable(_$SortOrderEnumMap, json['phone']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      role: $enumDecodeNullable(_$SortOrderEnumMap, json['role']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
      $count: json['_count'] == null
          ? null
          : UserCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : UserAvgOrderByAggregateInput.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UserMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UserMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : UserSumOrderByAggregateInput.fromJson(
              json['_sum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserOrderByWithAggregationInputToJson(
    UserOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('phone', _$SortOrderEnumMap[instance.phone]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('role', _$SortOrderEnumMap[instance.role]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

UserScalarWhereWithAggregatesInput _$UserScalarWhereWithAggregatesInputFromJson(
        Map<String, dynamic> json) =>
    UserScalarWhereWithAggregatesInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntWithAggregatesFilter.fromJson(
              json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringNullableWithAggregatesFilter.fromJson(
              json['username'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['email'] as Map<String, dynamic>),
      phone: json['phone'] == null
          ? null
          : StringNullableWithAggregatesFilter.fromJson(
              json['phone'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringNullableWithAggregatesFilter.fromJson(
              json['password'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : StringNullableWithAggregatesFilter.fromJson(
              json['role'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTimeNullableWithAggregatesFilter.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTimeNullableWithAggregatesFilter.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserScalarWhereWithAggregatesInputToJson(
    UserScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('phone', instance.phone?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

TblPhotoWhereInput _$TblPhotoWhereInputFromJson(Map<String, dynamic> json) =>
    TblPhotoWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => TblPhotoWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => TblPhotoWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => TblPhotoWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      albumsid: json['albumsid'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['albumsid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['title'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['date'] as Map<String, dynamic>),
      url: json['url'] == null
          ? null
          : StringNullableFilter.fromJson(json['url'] as Map<String, dynamic>),
      path: json['path'] == null
          ? null
          : StringNullableFilter.fromJson(json['path'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TblPhotoWhereInputToJson(TblPhotoWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('albumsid', instance.albumsid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('url', instance.url?.toJson());
  writeNotNull('path', instance.path?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

TblPhotoOrderByWithRelationInput _$TblPhotoOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    TblPhotoOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      albumsid: $enumDecodeNullable(_$SortOrderEnumMap, json['albumsid']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      date: $enumDecodeNullable(_$SortOrderEnumMap, json['date']),
      url: $enumDecodeNullable(_$SortOrderEnumMap, json['url']),
      path: $enumDecodeNullable(_$SortOrderEnumMap, json['path']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
    );

Map<String, dynamic> _$TblPhotoOrderByWithRelationInputToJson(
    TblPhotoOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('albumsid', _$SortOrderEnumMap[instance.albumsid]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('date', _$SortOrderEnumMap[instance.date]);
  writeNotNull('url', _$SortOrderEnumMap[instance.url]);
  writeNotNull('path', _$SortOrderEnumMap[instance.path]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  return val;
}

TblPhotoWhereUniqueInput _$TblPhotoWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    TblPhotoWhereUniqueInput(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$TblPhotoWhereUniqueInputToJson(
    TblPhotoWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

TblPhotoOrderByWithAggregationInput
    _$TblPhotoOrderByWithAggregationInputFromJson(Map<String, dynamic> json) =>
        TblPhotoOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          albumsid: $enumDecodeNullable(_$SortOrderEnumMap, json['albumsid']),
          title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
          date: $enumDecodeNullable(_$SortOrderEnumMap, json['date']),
          url: $enumDecodeNullable(_$SortOrderEnumMap, json['url']),
          path: $enumDecodeNullable(_$SortOrderEnumMap, json['path']),
          createdAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
          updatedAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
          $count: json['_count'] == null
              ? null
              : TblPhotoCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : TblPhotoAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : TblPhotoMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : TblPhotoMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : TblPhotoSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TblPhotoOrderByWithAggregationInputToJson(
    TblPhotoOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('albumsid', _$SortOrderEnumMap[instance.albumsid]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('date', _$SortOrderEnumMap[instance.date]);
  writeNotNull('url', _$SortOrderEnumMap[instance.url]);
  writeNotNull('path', _$SortOrderEnumMap[instance.path]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

TblPhotoScalarWhereWithAggregatesInput
    _$TblPhotoScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        TblPhotoScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              TblPhotoScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              TblPhotoScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              TblPhotoScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          albumsid: json['albumsid'] == null
              ? null
              : IntNullableWithAggregatesFilter.fromJson(
                  json['albumsid'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['title'] as Map<String, dynamic>),
          date: json['date'] == null
              ? null
              : DateTimeNullableWithAggregatesFilter.fromJson(
                  json['date'] as Map<String, dynamic>),
          url: json['url'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['url'] as Map<String, dynamic>),
          path: json['path'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['path'] as Map<String, dynamic>),
          createdAt: json['created_at'] == null
              ? null
              : DateTimeNullableWithAggregatesFilter.fromJson(
                  json['created_at'] as Map<String, dynamic>),
          updatedAt: json['updated_at'] == null
              ? null
              : DateTimeNullableWithAggregatesFilter.fromJson(
                  json['updated_at'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TblPhotoScalarWhereWithAggregatesInputToJson(
    TblPhotoScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('albumsid', instance.albumsid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('url', instance.url?.toJson());
  writeNotNull('path', instance.path?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

TblalbumsWhereInput _$TblalbumsWhereInputFromJson(Map<String, dynamic> json) =>
    TblalbumsWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => TblalbumsWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => TblalbumsWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => TblalbumsWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      userid: json['userid'] == null
          ? null
          : IntNullableFilter.fromJson(json['userid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['title'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TblalbumsWhereInputToJson(TblalbumsWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('userid', instance.userid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

TblalbumsOrderByWithRelationInput _$TblalbumsOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    TblalbumsOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      userid: $enumDecodeNullable(_$SortOrderEnumMap, json['userid']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
    );

Map<String, dynamic> _$TblalbumsOrderByWithRelationInputToJson(
    TblalbumsOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('userid', _$SortOrderEnumMap[instance.userid]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  return val;
}

TblalbumsWhereUniqueInput _$TblalbumsWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    TblalbumsWhereUniqueInput(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$TblalbumsWhereUniqueInputToJson(
    TblalbumsWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

TblalbumsOrderByWithAggregationInput
    _$TblalbumsOrderByWithAggregationInputFromJson(Map<String, dynamic> json) =>
        TblalbumsOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          userid: $enumDecodeNullable(_$SortOrderEnumMap, json['userid']),
          title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
          createdAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
          updatedAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
          $count: json['_count'] == null
              ? null
              : TblalbumsCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : TblalbumsAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : TblalbumsMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : TblalbumsMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : TblalbumsSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TblalbumsOrderByWithAggregationInputToJson(
    TblalbumsOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('userid', _$SortOrderEnumMap[instance.userid]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

TblalbumsScalarWhereWithAggregatesInput
    _$TblalbumsScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        TblalbumsScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              TblalbumsScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              TblalbumsScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              TblalbumsScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          userid: json['userid'] == null
              ? null
              : IntNullableWithAggregatesFilter.fromJson(
                  json['userid'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['title'] as Map<String, dynamic>),
          createdAt: json['created_at'] == null
              ? null
              : DateTimeNullableWithAggregatesFilter.fromJson(
                  json['created_at'] as Map<String, dynamic>),
          updatedAt: json['updated_at'] == null
              ? null
              : DateTimeNullableWithAggregatesFilter.fromJson(
                  json['updated_at'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TblalbumsScalarWhereWithAggregatesInputToJson(
    TblalbumsScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('userid', instance.userid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

TblhistoryWhereInput _$TblhistoryWhereInputFromJson(
        Map<String, dynamic> json) =>
    TblhistoryWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => TblhistoryWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => TblhistoryWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => TblhistoryWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      userid: json['userid'] == null
          ? null
          : IntNullableFilter.fromJson(json['userid'] as Map<String, dynamic>),
      photoid: json['photoid'] == null
          ? null
          : IntNullableFilter.fromJson(json['photoid'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['date'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TblhistoryWhereInputToJson(
    TblhistoryWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('userid', instance.userid?.toJson());
  writeNotNull('photoid', instance.photoid?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

TblhistoryOrderByWithRelationInput _$TblhistoryOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    TblhistoryOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      userid: $enumDecodeNullable(_$SortOrderEnumMap, json['userid']),
      photoid: $enumDecodeNullable(_$SortOrderEnumMap, json['photoid']),
      date: $enumDecodeNullable(_$SortOrderEnumMap, json['date']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
    );

Map<String, dynamic> _$TblhistoryOrderByWithRelationInputToJson(
    TblhistoryOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('userid', _$SortOrderEnumMap[instance.userid]);
  writeNotNull('photoid', _$SortOrderEnumMap[instance.photoid]);
  writeNotNull('date', _$SortOrderEnumMap[instance.date]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  return val;
}

TblhistoryWhereUniqueInput _$TblhistoryWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    TblhistoryWhereUniqueInput(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$TblhistoryWhereUniqueInputToJson(
    TblhistoryWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

TblhistoryOrderByWithAggregationInput
    _$TblhistoryOrderByWithAggregationInputFromJson(
            Map<String, dynamic> json) =>
        TblhistoryOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          userid: $enumDecodeNullable(_$SortOrderEnumMap, json['userid']),
          photoid: $enumDecodeNullable(_$SortOrderEnumMap, json['photoid']),
          date: $enumDecodeNullable(_$SortOrderEnumMap, json['date']),
          createdAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
          updatedAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
          $count: json['_count'] == null
              ? null
              : TblhistoryCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : TblhistoryAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : TblhistoryMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : TblhistoryMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : TblhistorySumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TblhistoryOrderByWithAggregationInputToJson(
    TblhistoryOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('userid', _$SortOrderEnumMap[instance.userid]);
  writeNotNull('photoid', _$SortOrderEnumMap[instance.photoid]);
  writeNotNull('date', _$SortOrderEnumMap[instance.date]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

TblhistoryScalarWhereWithAggregatesInput
    _$TblhistoryScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        TblhistoryScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              TblhistoryScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              TblhistoryScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              TblhistoryScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          userid: json['userid'] == null
              ? null
              : IntNullableWithAggregatesFilter.fromJson(
                  json['userid'] as Map<String, dynamic>),
          photoid: json['photoid'] == null
              ? null
              : IntNullableWithAggregatesFilter.fromJson(
                  json['photoid'] as Map<String, dynamic>),
          date: json['date'] == null
              ? null
              : DateTimeNullableWithAggregatesFilter.fromJson(
                  json['date'] as Map<String, dynamic>),
          createdAt: json['created_at'] == null
              ? null
              : DateTimeNullableWithAggregatesFilter.fromJson(
                  json['created_at'] as Map<String, dynamic>),
          updatedAt: json['updated_at'] == null
              ? null
              : DateTimeNullableWithAggregatesFilter.fromJson(
                  json['updated_at'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TblhistoryScalarWhereWithAggregatesInputToJson(
    TblhistoryScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('userid', instance.userid?.toJson());
  writeNotNull('photoid', instance.photoid?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

UserCreateInput _$UserCreateInputFromJson(Map<String, dynamic> json) =>
    UserCreateInput(
      username: json['username'] as String?,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String?,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$UserCreateInputToJson(UserCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  val['email'] = instance.email;
  writeNotNull('phone', instance.phone);
  writeNotNull('password', instance.password);
  writeNotNull('role', instance.role);
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

UserUncheckedCreateInput _$UserUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedCreateInput(
      id: json['id'] as int?,
      username: json['username'] as String?,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String?,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$UserUncheckedCreateInputToJson(
    UserUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('username', instance.username);
  val['email'] = instance.email;
  writeNotNull('phone', instance.phone);
  writeNotNull('password', instance.password);
  writeNotNull('role', instance.role);
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

UserUpdateInput _$UserUpdateInputFromJson(Map<String, dynamic> json) =>
    UserUpdateInput(
      username: json['username'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      phone: json['phone'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['phone'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['role'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateInputToJson(UserUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('phone', instance.phone?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

UserUncheckedUpdateInput _$UserUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      phone: json['phone'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['phone'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['role'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUncheckedUpdateInputToJson(
    UserUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('phone', instance.phone?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

UserCreateManyInput _$UserCreateManyInputFromJson(Map<String, dynamic> json) =>
    UserCreateManyInput(
      id: json['id'] as int?,
      username: json['username'] as String?,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String?,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$UserCreateManyInputToJson(UserCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('username', instance.username);
  val['email'] = instance.email;
  writeNotNull('phone', instance.phone);
  writeNotNull('password', instance.password);
  writeNotNull('role', instance.role);
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

UserUpdateManyMutationInput _$UserUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    UserUpdateManyMutationInput(
      username: json['username'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      phone: json['phone'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['phone'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['role'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateManyMutationInputToJson(
    UserUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('phone', instance.phone?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

UserUncheckedUpdateManyInput _$UserUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      phone: json['phone'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['phone'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['role'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUncheckedUpdateManyInputToJson(
    UserUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('phone', instance.phone?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

TblPhotoCreateInput _$TblPhotoCreateInputFromJson(Map<String, dynamic> json) =>
    TblPhotoCreateInput(
      albumsid: json['albumsid'] as int?,
      title: json['title'] as String?,
      date: _$JsonConverterFromJson<String, DateTime>(
          json['date'], const DateTimeJsonConverter().fromJson),
      url: json['url'] as String?,
      path: json['path'] as String?,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$TblPhotoCreateInputToJson(TblPhotoCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('albumsid', instance.albumsid);
  writeNotNull('title', instance.title);
  writeNotNull(
      'date',
      _$JsonConverterToJson<String, DateTime>(
          instance.date, const DateTimeJsonConverter().toJson));
  writeNotNull('url', instance.url);
  writeNotNull('path', instance.path);
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

TblPhotoUncheckedCreateInput _$TblPhotoUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    TblPhotoUncheckedCreateInput(
      id: json['id'] as int?,
      albumsid: json['albumsid'] as int?,
      title: json['title'] as String?,
      date: _$JsonConverterFromJson<String, DateTime>(
          json['date'], const DateTimeJsonConverter().fromJson),
      url: json['url'] as String?,
      path: json['path'] as String?,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$TblPhotoUncheckedCreateInputToJson(
    TblPhotoUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('albumsid', instance.albumsid);
  writeNotNull('title', instance.title);
  writeNotNull(
      'date',
      _$JsonConverterToJson<String, DateTime>(
          instance.date, const DateTimeJsonConverter().toJson));
  writeNotNull('url', instance.url);
  writeNotNull('path', instance.path);
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

TblPhotoUpdateInput _$TblPhotoUpdateInputFromJson(Map<String, dynamic> json) =>
    TblPhotoUpdateInput(
      albumsid: json['albumsid'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['albumsid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['date'] as Map<String, dynamic>),
      url: json['url'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['url'] as Map<String, dynamic>),
      path: json['path'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['path'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TblPhotoUpdateInputToJson(TblPhotoUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('albumsid', instance.albumsid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('url', instance.url?.toJson());
  writeNotNull('path', instance.path?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

TblPhotoUncheckedUpdateInput _$TblPhotoUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    TblPhotoUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      albumsid: json['albumsid'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['albumsid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['date'] as Map<String, dynamic>),
      url: json['url'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['url'] as Map<String, dynamic>),
      path: json['path'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['path'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TblPhotoUncheckedUpdateInputToJson(
    TblPhotoUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('albumsid', instance.albumsid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('url', instance.url?.toJson());
  writeNotNull('path', instance.path?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

TblPhotoCreateManyInput _$TblPhotoCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    TblPhotoCreateManyInput(
      id: json['id'] as int?,
      albumsid: json['albumsid'] as int?,
      title: json['title'] as String?,
      date: _$JsonConverterFromJson<String, DateTime>(
          json['date'], const DateTimeJsonConverter().fromJson),
      url: json['url'] as String?,
      path: json['path'] as String?,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$TblPhotoCreateManyInputToJson(
    TblPhotoCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('albumsid', instance.albumsid);
  writeNotNull('title', instance.title);
  writeNotNull(
      'date',
      _$JsonConverterToJson<String, DateTime>(
          instance.date, const DateTimeJsonConverter().toJson));
  writeNotNull('url', instance.url);
  writeNotNull('path', instance.path);
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

TblPhotoUpdateManyMutationInput _$TblPhotoUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    TblPhotoUpdateManyMutationInput(
      albumsid: json['albumsid'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['albumsid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['date'] as Map<String, dynamic>),
      url: json['url'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['url'] as Map<String, dynamic>),
      path: json['path'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['path'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TblPhotoUpdateManyMutationInputToJson(
    TblPhotoUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('albumsid', instance.albumsid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('url', instance.url?.toJson());
  writeNotNull('path', instance.path?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

TblPhotoUncheckedUpdateManyInput _$TblPhotoUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    TblPhotoUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      albumsid: json['albumsid'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['albumsid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['date'] as Map<String, dynamic>),
      url: json['url'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['url'] as Map<String, dynamic>),
      path: json['path'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['path'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TblPhotoUncheckedUpdateManyInputToJson(
    TblPhotoUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('albumsid', instance.albumsid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('url', instance.url?.toJson());
  writeNotNull('path', instance.path?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

TblalbumsCreateInput _$TblalbumsCreateInputFromJson(
        Map<String, dynamic> json) =>
    TblalbumsCreateInput(
      userid: json['userid'] as int?,
      title: json['title'] as String?,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$TblalbumsCreateInputToJson(
    TblalbumsCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userid', instance.userid);
  writeNotNull('title', instance.title);
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

TblalbumsUncheckedCreateInput _$TblalbumsUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    TblalbumsUncheckedCreateInput(
      id: json['id'] as int?,
      userid: json['userid'] as int?,
      title: json['title'] as String?,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$TblalbumsUncheckedCreateInputToJson(
    TblalbumsUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('userid', instance.userid);
  writeNotNull('title', instance.title);
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

TblalbumsUpdateInput _$TblalbumsUpdateInputFromJson(
        Map<String, dynamic> json) =>
    TblalbumsUpdateInput(
      userid: json['userid'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['userid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TblalbumsUpdateInputToJson(
    TblalbumsUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userid', instance.userid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

TblalbumsUncheckedUpdateInput _$TblalbumsUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    TblalbumsUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      userid: json['userid'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['userid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TblalbumsUncheckedUpdateInputToJson(
    TblalbumsUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('userid', instance.userid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

TblalbumsCreateManyInput _$TblalbumsCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    TblalbumsCreateManyInput(
      id: json['id'] as int?,
      userid: json['userid'] as int?,
      title: json['title'] as String?,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$TblalbumsCreateManyInputToJson(
    TblalbumsCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('userid', instance.userid);
  writeNotNull('title', instance.title);
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

TblalbumsUpdateManyMutationInput _$TblalbumsUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    TblalbumsUpdateManyMutationInput(
      userid: json['userid'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['userid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TblalbumsUpdateManyMutationInputToJson(
    TblalbumsUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userid', instance.userid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

TblalbumsUncheckedUpdateManyInput _$TblalbumsUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    TblalbumsUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      userid: json['userid'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['userid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TblalbumsUncheckedUpdateManyInputToJson(
    TblalbumsUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('userid', instance.userid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

TblhistoryCreateInput _$TblhistoryCreateInputFromJson(
        Map<String, dynamic> json) =>
    TblhistoryCreateInput(
      userid: json['userid'] as int?,
      photoid: json['photoid'] as int?,
      date: _$JsonConverterFromJson<String, DateTime>(
          json['date'], const DateTimeJsonConverter().fromJson),
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$TblhistoryCreateInputToJson(
    TblhistoryCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userid', instance.userid);
  writeNotNull('photoid', instance.photoid);
  writeNotNull(
      'date',
      _$JsonConverterToJson<String, DateTime>(
          instance.date, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

TblhistoryUncheckedCreateInput _$TblhistoryUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    TblhistoryUncheckedCreateInput(
      id: json['id'] as int?,
      userid: json['userid'] as int?,
      photoid: json['photoid'] as int?,
      date: _$JsonConverterFromJson<String, DateTime>(
          json['date'], const DateTimeJsonConverter().fromJson),
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$TblhistoryUncheckedCreateInputToJson(
    TblhistoryUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('userid', instance.userid);
  writeNotNull('photoid', instance.photoid);
  writeNotNull(
      'date',
      _$JsonConverterToJson<String, DateTime>(
          instance.date, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

TblhistoryUpdateInput _$TblhistoryUpdateInputFromJson(
        Map<String, dynamic> json) =>
    TblhistoryUpdateInput(
      userid: json['userid'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['userid'] as Map<String, dynamic>),
      photoid: json['photoid'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['photoid'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['date'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TblhistoryUpdateInputToJson(
    TblhistoryUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userid', instance.userid?.toJson());
  writeNotNull('photoid', instance.photoid?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

TblhistoryUncheckedUpdateInput _$TblhistoryUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    TblhistoryUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      userid: json['userid'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['userid'] as Map<String, dynamic>),
      photoid: json['photoid'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['photoid'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['date'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TblhistoryUncheckedUpdateInputToJson(
    TblhistoryUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('userid', instance.userid?.toJson());
  writeNotNull('photoid', instance.photoid?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

TblhistoryCreateManyInput _$TblhistoryCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    TblhistoryCreateManyInput(
      id: json['id'] as int?,
      userid: json['userid'] as int?,
      photoid: json['photoid'] as int?,
      date: _$JsonConverterFromJson<String, DateTime>(
          json['date'], const DateTimeJsonConverter().fromJson),
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$TblhistoryCreateManyInputToJson(
    TblhistoryCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('userid', instance.userid);
  writeNotNull('photoid', instance.photoid);
  writeNotNull(
      'date',
      _$JsonConverterToJson<String, DateTime>(
          instance.date, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

TblhistoryUpdateManyMutationInput _$TblhistoryUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    TblhistoryUpdateManyMutationInput(
      userid: json['userid'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['userid'] as Map<String, dynamic>),
      photoid: json['photoid'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['photoid'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['date'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TblhistoryUpdateManyMutationInputToJson(
    TblhistoryUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userid', instance.userid?.toJson());
  writeNotNull('photoid', instance.photoid?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

TblhistoryUncheckedUpdateManyInput _$TblhistoryUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    TblhistoryUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      userid: json['userid'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['userid'] as Map<String, dynamic>),
      photoid: json['photoid'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['photoid'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['date'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TblhistoryUncheckedUpdateManyInputToJson(
    TblhistoryUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('userid', instance.userid?.toJson());
  writeNotNull('photoid', instance.photoid?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}

IntFilter _$IntFilterFromJson(Map<String, dynamic> json) => IntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntFilterToJson(IntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

StringNullableFilter _$StringNullableFilterFromJson(
        Map<String, dynamic> json) =>
    StringNullableFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringNullableFilterToJson(
    StringNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

StringFilter _$StringFilterFromJson(Map<String, dynamic> json) => StringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringFilterToJson(StringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

DateTimeNullableFilter _$DateTimeNullableFilterFromJson(
        Map<String, dynamic> json) =>
    DateTimeNullableFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateTimeNullableFilterToJson(
    DateTimeNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  return val;
}

SortOrderInput _$SortOrderInputFromJson(Map<String, dynamic> json) =>
    SortOrderInput(
      sort: $enumDecode(_$SortOrderEnumMap, json['sort']),
      nulls: $enumDecodeNullable(_$NullsOrderEnumMap, json['nulls']),
    );

Map<String, dynamic> _$SortOrderInputToJson(SortOrderInput instance) {
  final val = <String, dynamic>{
    'sort': _$SortOrderEnumMap[instance.sort]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nulls', _$NullsOrderEnumMap[instance.nulls]);
  return val;
}

const _$NullsOrderEnumMap = {
  NullsOrder.first: 'first',
  NullsOrder.last: 'last',
};

UserCountOrderByAggregateInput _$UserCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      phone: $enumDecodeNullable(_$SortOrderEnumMap, json['phone']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      role: $enumDecodeNullable(_$SortOrderEnumMap, json['role']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
    );

Map<String, dynamic> _$UserCountOrderByAggregateInputToJson(
    UserCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('phone', _$SortOrderEnumMap[instance.phone]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('role', _$SortOrderEnumMap[instance.role]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  return val;
}

UserAvgOrderByAggregateInput _$UserAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserAvgOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
    );

Map<String, dynamic> _$UserAvgOrderByAggregateInputToJson(
    UserAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  return val;
}

UserMaxOrderByAggregateInput _$UserMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      phone: $enumDecodeNullable(_$SortOrderEnumMap, json['phone']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      role: $enumDecodeNullable(_$SortOrderEnumMap, json['role']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
    );

Map<String, dynamic> _$UserMaxOrderByAggregateInputToJson(
    UserMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('phone', _$SortOrderEnumMap[instance.phone]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('role', _$SortOrderEnumMap[instance.role]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  return val;
}

UserMinOrderByAggregateInput _$UserMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      phone: $enumDecodeNullable(_$SortOrderEnumMap, json['phone']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      role: $enumDecodeNullable(_$SortOrderEnumMap, json['role']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
    );

Map<String, dynamic> _$UserMinOrderByAggregateInputToJson(
    UserMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('phone', _$SortOrderEnumMap[instance.phone]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('role', _$SortOrderEnumMap[instance.role]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  return val;
}

UserSumOrderByAggregateInput _$UserSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserSumOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
    );

Map<String, dynamic> _$UserSumOrderByAggregateInputToJson(
    UserSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  return val;
}

IntWithAggregatesFilter _$IntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    IntWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntWithAggregatesFilterToJson(
    IntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

StringNullableWithAggregatesFilter _$StringNullableWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringNullableWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringNullableWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringNullableWithAggregatesFilterToJson(
    StringNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

StringWithAggregatesFilter _$StringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringWithAggregatesFilterToJson(
    StringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

DateTimeNullableWithAggregatesFilter
    _$DateTimeNullableWithAggregatesFilterFromJson(Map<String, dynamic> json) =>
        DateTimeNullableWithAggregatesFilter(
          equals: _$JsonConverterFromJson<String, DateTime>(
              json['equals'], const DateTimeJsonConverter().fromJson),
          $in: (json['in'] as List<dynamic>?)
              ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
          notIn: (json['notIn'] as List<dynamic>?)
              ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
          lt: _$JsonConverterFromJson<String, DateTime>(
              json['lt'], const DateTimeJsonConverter().fromJson),
          lte: _$JsonConverterFromJson<String, DateTime>(
              json['lte'], const DateTimeJsonConverter().fromJson),
          gt: _$JsonConverterFromJson<String, DateTime>(
              json['gt'], const DateTimeJsonConverter().fromJson),
          gte: _$JsonConverterFromJson<String, DateTime>(
              json['gte'], const DateTimeJsonConverter().fromJson),
          not: json['not'] == null
              ? null
              : NestedDateTimeNullableWithAggregatesFilter.fromJson(
                  json['not'] as Map<String, dynamic>),
          $count: json['_count'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : NestedDateTimeNullableFilter.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : NestedDateTimeNullableFilter.fromJson(
                  json['_max'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DateTimeNullableWithAggregatesFilterToJson(
    DateTimeNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

IntNullableFilter _$IntNullableFilterFromJson(Map<String, dynamic> json) =>
    IntNullableFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntNullableFilterToJson(IntNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

TblPhotoCountOrderByAggregateInput _$TblPhotoCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TblPhotoCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      albumsid: $enumDecodeNullable(_$SortOrderEnumMap, json['albumsid']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      date: $enumDecodeNullable(_$SortOrderEnumMap, json['date']),
      url: $enumDecodeNullable(_$SortOrderEnumMap, json['url']),
      path: $enumDecodeNullable(_$SortOrderEnumMap, json['path']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
    );

Map<String, dynamic> _$TblPhotoCountOrderByAggregateInputToJson(
    TblPhotoCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('albumsid', _$SortOrderEnumMap[instance.albumsid]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('date', _$SortOrderEnumMap[instance.date]);
  writeNotNull('url', _$SortOrderEnumMap[instance.url]);
  writeNotNull('path', _$SortOrderEnumMap[instance.path]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  return val;
}

TblPhotoAvgOrderByAggregateInput _$TblPhotoAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TblPhotoAvgOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      albumsid: $enumDecodeNullable(_$SortOrderEnumMap, json['albumsid']),
    );

Map<String, dynamic> _$TblPhotoAvgOrderByAggregateInputToJson(
    TblPhotoAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('albumsid', _$SortOrderEnumMap[instance.albumsid]);
  return val;
}

TblPhotoMaxOrderByAggregateInput _$TblPhotoMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TblPhotoMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      albumsid: $enumDecodeNullable(_$SortOrderEnumMap, json['albumsid']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      date: $enumDecodeNullable(_$SortOrderEnumMap, json['date']),
      url: $enumDecodeNullable(_$SortOrderEnumMap, json['url']),
      path: $enumDecodeNullable(_$SortOrderEnumMap, json['path']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
    );

Map<String, dynamic> _$TblPhotoMaxOrderByAggregateInputToJson(
    TblPhotoMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('albumsid', _$SortOrderEnumMap[instance.albumsid]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('date', _$SortOrderEnumMap[instance.date]);
  writeNotNull('url', _$SortOrderEnumMap[instance.url]);
  writeNotNull('path', _$SortOrderEnumMap[instance.path]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  return val;
}

TblPhotoMinOrderByAggregateInput _$TblPhotoMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TblPhotoMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      albumsid: $enumDecodeNullable(_$SortOrderEnumMap, json['albumsid']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      date: $enumDecodeNullable(_$SortOrderEnumMap, json['date']),
      url: $enumDecodeNullable(_$SortOrderEnumMap, json['url']),
      path: $enumDecodeNullable(_$SortOrderEnumMap, json['path']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
    );

Map<String, dynamic> _$TblPhotoMinOrderByAggregateInputToJson(
    TblPhotoMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('albumsid', _$SortOrderEnumMap[instance.albumsid]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('date', _$SortOrderEnumMap[instance.date]);
  writeNotNull('url', _$SortOrderEnumMap[instance.url]);
  writeNotNull('path', _$SortOrderEnumMap[instance.path]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  return val;
}

TblPhotoSumOrderByAggregateInput _$TblPhotoSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TblPhotoSumOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      albumsid: $enumDecodeNullable(_$SortOrderEnumMap, json['albumsid']),
    );

Map<String, dynamic> _$TblPhotoSumOrderByAggregateInputToJson(
    TblPhotoSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('albumsid', _$SortOrderEnumMap[instance.albumsid]);
  return val;
}

IntNullableWithAggregatesFilter _$IntNullableWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    IntNullableWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntNullableWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatNullableFilter.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntNullableWithAggregatesFilterToJson(
    IntNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

TblalbumsCountOrderByAggregateInput
    _$TblalbumsCountOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        TblalbumsCountOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          userid: $enumDecodeNullable(_$SortOrderEnumMap, json['userid']),
          title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
          createdAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
          updatedAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
        );

Map<String, dynamic> _$TblalbumsCountOrderByAggregateInputToJson(
    TblalbumsCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('userid', _$SortOrderEnumMap[instance.userid]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  return val;
}

TblalbumsAvgOrderByAggregateInput _$TblalbumsAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TblalbumsAvgOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      userid: $enumDecodeNullable(_$SortOrderEnumMap, json['userid']),
    );

Map<String, dynamic> _$TblalbumsAvgOrderByAggregateInputToJson(
    TblalbumsAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('userid', _$SortOrderEnumMap[instance.userid]);
  return val;
}

TblalbumsMaxOrderByAggregateInput _$TblalbumsMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TblalbumsMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      userid: $enumDecodeNullable(_$SortOrderEnumMap, json['userid']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
    );

Map<String, dynamic> _$TblalbumsMaxOrderByAggregateInputToJson(
    TblalbumsMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('userid', _$SortOrderEnumMap[instance.userid]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  return val;
}

TblalbumsMinOrderByAggregateInput _$TblalbumsMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TblalbumsMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      userid: $enumDecodeNullable(_$SortOrderEnumMap, json['userid']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
    );

Map<String, dynamic> _$TblalbumsMinOrderByAggregateInputToJson(
    TblalbumsMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('userid', _$SortOrderEnumMap[instance.userid]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  return val;
}

TblalbumsSumOrderByAggregateInput _$TblalbumsSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TblalbumsSumOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      userid: $enumDecodeNullable(_$SortOrderEnumMap, json['userid']),
    );

Map<String, dynamic> _$TblalbumsSumOrderByAggregateInputToJson(
    TblalbumsSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('userid', _$SortOrderEnumMap[instance.userid]);
  return val;
}

TblhistoryCountOrderByAggregateInput
    _$TblhistoryCountOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        TblhistoryCountOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          userid: $enumDecodeNullable(_$SortOrderEnumMap, json['userid']),
          photoid: $enumDecodeNullable(_$SortOrderEnumMap, json['photoid']),
          date: $enumDecodeNullable(_$SortOrderEnumMap, json['date']),
          createdAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
          updatedAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
        );

Map<String, dynamic> _$TblhistoryCountOrderByAggregateInputToJson(
    TblhistoryCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('userid', _$SortOrderEnumMap[instance.userid]);
  writeNotNull('photoid', _$SortOrderEnumMap[instance.photoid]);
  writeNotNull('date', _$SortOrderEnumMap[instance.date]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  return val;
}

TblhistoryAvgOrderByAggregateInput _$TblhistoryAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TblhistoryAvgOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      userid: $enumDecodeNullable(_$SortOrderEnumMap, json['userid']),
      photoid: $enumDecodeNullable(_$SortOrderEnumMap, json['photoid']),
    );

Map<String, dynamic> _$TblhistoryAvgOrderByAggregateInputToJson(
    TblhistoryAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('userid', _$SortOrderEnumMap[instance.userid]);
  writeNotNull('photoid', _$SortOrderEnumMap[instance.photoid]);
  return val;
}

TblhistoryMaxOrderByAggregateInput _$TblhistoryMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TblhistoryMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      userid: $enumDecodeNullable(_$SortOrderEnumMap, json['userid']),
      photoid: $enumDecodeNullable(_$SortOrderEnumMap, json['photoid']),
      date: $enumDecodeNullable(_$SortOrderEnumMap, json['date']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
    );

Map<String, dynamic> _$TblhistoryMaxOrderByAggregateInputToJson(
    TblhistoryMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('userid', _$SortOrderEnumMap[instance.userid]);
  writeNotNull('photoid', _$SortOrderEnumMap[instance.photoid]);
  writeNotNull('date', _$SortOrderEnumMap[instance.date]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  return val;
}

TblhistoryMinOrderByAggregateInput _$TblhistoryMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TblhistoryMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      userid: $enumDecodeNullable(_$SortOrderEnumMap, json['userid']),
      photoid: $enumDecodeNullable(_$SortOrderEnumMap, json['photoid']),
      date: $enumDecodeNullable(_$SortOrderEnumMap, json['date']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['created_at']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at']),
    );

Map<String, dynamic> _$TblhistoryMinOrderByAggregateInputToJson(
    TblhistoryMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('userid', _$SortOrderEnumMap[instance.userid]);
  writeNotNull('photoid', _$SortOrderEnumMap[instance.photoid]);
  writeNotNull('date', _$SortOrderEnumMap[instance.date]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('updated_at', _$SortOrderEnumMap[instance.updatedAt]);
  return val;
}

TblhistorySumOrderByAggregateInput _$TblhistorySumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TblhistorySumOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      userid: $enumDecodeNullable(_$SortOrderEnumMap, json['userid']),
      photoid: $enumDecodeNullable(_$SortOrderEnumMap, json['photoid']),
    );

Map<String, dynamic> _$TblhistorySumOrderByAggregateInputToJson(
    TblhistorySumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('userid', _$SortOrderEnumMap[instance.userid]);
  writeNotNull('photoid', _$SortOrderEnumMap[instance.photoid]);
  return val;
}

NullableStringFieldUpdateOperationsInput
    _$NullableStringFieldUpdateOperationsInputFromJson(
            Map<String, dynamic> json) =>
        NullableStringFieldUpdateOperationsInput(
          set: json['set'] as String?,
        );

Map<String, dynamic> _$NullableStringFieldUpdateOperationsInputToJson(
    NullableStringFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

StringFieldUpdateOperationsInput _$StringFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    StringFieldUpdateOperationsInput(
      set: json['set'] as String?,
    );

Map<String, dynamic> _$StringFieldUpdateOperationsInputToJson(
    StringFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

NullableDateTimeFieldUpdateOperationsInput
    _$NullableDateTimeFieldUpdateOperationsInputFromJson(
            Map<String, dynamic> json) =>
        NullableDateTimeFieldUpdateOperationsInput(
          set: _$JsonConverterFromJson<String, DateTime>(
              json['set'], const DateTimeJsonConverter().fromJson),
        );

Map<String, dynamic> _$NullableDateTimeFieldUpdateOperationsInputToJson(
    NullableDateTimeFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'set',
      _$JsonConverterToJson<String, DateTime>(
          instance.set, const DateTimeJsonConverter().toJson));
  return val;
}

IntFieldUpdateOperationsInput _$IntFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    IntFieldUpdateOperationsInput(
      set: json['set'] as int?,
      increment: json['increment'] as int?,
      decrement: json['decrement'] as int?,
      multiply: json['multiply'] as int?,
      divide: json['divide'] as int?,
    );

Map<String, dynamic> _$IntFieldUpdateOperationsInputToJson(
    IntFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  writeNotNull('increment', instance.increment);
  writeNotNull('decrement', instance.decrement);
  writeNotNull('multiply', instance.multiply);
  writeNotNull('divide', instance.divide);
  return val;
}

NullableIntFieldUpdateOperationsInput
    _$NullableIntFieldUpdateOperationsInputFromJson(
            Map<String, dynamic> json) =>
        NullableIntFieldUpdateOperationsInput(
          set: json['set'] as int?,
          increment: json['increment'] as int?,
          decrement: json['decrement'] as int?,
          multiply: json['multiply'] as int?,
          divide: json['divide'] as int?,
        );

Map<String, dynamic> _$NullableIntFieldUpdateOperationsInputToJson(
    NullableIntFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  writeNotNull('increment', instance.increment);
  writeNotNull('decrement', instance.decrement);
  writeNotNull('multiply', instance.multiply);
  writeNotNull('divide', instance.divide);
  return val;
}

NestedIntFilter _$NestedIntFilterFromJson(Map<String, dynamic> json) =>
    NestedIntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntFilterToJson(NestedIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringNullableFilter _$NestedStringNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringNullableFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringNullableFilterToJson(
    NestedStringNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringFilter _$NestedStringFilterFromJson(Map<String, dynamic> json) =>
    NestedStringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringFilterToJson(NestedStringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedDateTimeNullableFilter _$NestedDateTimeNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedDateTimeNullableFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedDateTimeNullableFilterToJson(
    NestedDateTimeNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedIntWithAggregatesFilter _$NestedIntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntWithAggregatesFilterToJson(
    NestedIntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedFloatFilter _$NestedFloatFilterFromJson(Map<String, dynamic> json) =>
    NestedFloatFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatFilterToJson(NestedFloatFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringNullableWithAggregatesFilter
    _$NestedStringNullableWithAggregatesFilterFromJson(
            Map<String, dynamic> json) =>
        NestedStringNullableWithAggregatesFilter(
          equals: json['equals'] as String?,
          $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
          notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
          lt: json['lt'] as String?,
          lte: json['lte'] as String?,
          gt: json['gt'] as String?,
          gte: json['gte'] as String?,
          contains: json['contains'] as String?,
          startsWith: json['startsWith'] as String?,
          endsWith: json['endsWith'] as String?,
          not: json['not'] == null
              ? null
              : NestedStringNullableWithAggregatesFilter.fromJson(
                  json['not'] as Map<String, dynamic>),
          $count: json['_count'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : NestedStringNullableFilter.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : NestedStringNullableFilter.fromJson(
                  json['_max'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NestedStringNullableWithAggregatesFilterToJson(
    NestedStringNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedIntNullableFilter _$NestedIntNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntNullableFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntNullableFilterToJson(
    NestedIntNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringWithAggregatesFilter _$NestedStringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringWithAggregatesFilterToJson(
    NestedStringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedDateTimeNullableWithAggregatesFilter
    _$NestedDateTimeNullableWithAggregatesFilterFromJson(
            Map<String, dynamic> json) =>
        NestedDateTimeNullableWithAggregatesFilter(
          equals: _$JsonConverterFromJson<String, DateTime>(
              json['equals'], const DateTimeJsonConverter().fromJson),
          $in: (json['in'] as List<dynamic>?)
              ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
          notIn: (json['notIn'] as List<dynamic>?)
              ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
          lt: _$JsonConverterFromJson<String, DateTime>(
              json['lt'], const DateTimeJsonConverter().fromJson),
          lte: _$JsonConverterFromJson<String, DateTime>(
              json['lte'], const DateTimeJsonConverter().fromJson),
          gt: _$JsonConverterFromJson<String, DateTime>(
              json['gt'], const DateTimeJsonConverter().fromJson),
          gte: _$JsonConverterFromJson<String, DateTime>(
              json['gte'], const DateTimeJsonConverter().fromJson),
          not: json['not'] == null
              ? null
              : NestedDateTimeNullableWithAggregatesFilter.fromJson(
                  json['not'] as Map<String, dynamic>),
          $count: json['_count'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : NestedDateTimeNullableFilter.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : NestedDateTimeNullableFilter.fromJson(
                  json['_max'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NestedDateTimeNullableWithAggregatesFilterToJson(
    NestedDateTimeNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedIntNullableWithAggregatesFilter
    _$NestedIntNullableWithAggregatesFilterFromJson(
            Map<String, dynamic> json) =>
        NestedIntNullableWithAggregatesFilter(
          equals: json['equals'] as int?,
          $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
          notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
          lt: json['lt'] as int?,
          lte: json['lte'] as int?,
          gt: json['gt'] as int?,
          gte: json['gte'] as int?,
          not: json['not'] == null
              ? null
              : NestedIntNullableWithAggregatesFilter.fromJson(
                  json['not'] as Map<String, dynamic>),
          $count: json['_count'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : NestedFloatNullableFilter.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_sum'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_max'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NestedIntNullableWithAggregatesFilterToJson(
    NestedIntNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedFloatNullableFilter _$NestedFloatNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedFloatNullableFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatNullableFilterToJson(
    NestedFloatNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int,
      username: json['username'] as String?,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String?,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  val['email'] = instance.email;
  writeNotNull('phone', instance.phone);
  writeNotNull('password', instance.password);
  writeNotNull('role', instance.role);
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

TblPhoto _$TblPhotoFromJson(Map<String, dynamic> json) => TblPhoto(
      id: json['id'] as int,
      albumsid: json['albumsid'] as int?,
      title: json['title'] as String?,
      date: _$JsonConverterFromJson<String, DateTime>(
          json['date'], const DateTimeJsonConverter().fromJson),
      url: json['url'] as String?,
      path: json['path'] as String?,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$TblPhotoToJson(TblPhoto instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('albumsid', instance.albumsid);
  writeNotNull('title', instance.title);
  writeNotNull(
      'date',
      _$JsonConverterToJson<String, DateTime>(
          instance.date, const DateTimeJsonConverter().toJson));
  writeNotNull('url', instance.url);
  writeNotNull('path', instance.path);
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

Tblalbums _$TblalbumsFromJson(Map<String, dynamic> json) => Tblalbums(
      id: json['id'] as int,
      userid: json['userid'] as int?,
      title: json['title'] as String?,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$TblalbumsToJson(Tblalbums instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userid', instance.userid);
  writeNotNull('title', instance.title);
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

Tblhistory _$TblhistoryFromJson(Map<String, dynamic> json) => Tblhistory(
      id: json['id'] as int,
      userid: json['userid'] as int?,
      photoid: json['photoid'] as int?,
      date: _$JsonConverterFromJson<String, DateTime>(
          json['date'], const DateTimeJsonConverter().fromJson),
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$TblhistoryToJson(Tblhistory instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userid', instance.userid);
  writeNotNull('photoid', instance.photoid);
  writeNotNull(
      'date',
      _$JsonConverterToJson<String, DateTime>(
          instance.date, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

UserGroupByOutputType _$UserGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserGroupByOutputType(
      id: json['id'] as int?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String?,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$UserGroupByOutputTypeToJson(
    UserGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('username', instance.username);
  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  writeNotNull('password', instance.password);
  writeNotNull('role', instance.role);
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

TblPhotoGroupByOutputType _$TblPhotoGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    TblPhotoGroupByOutputType(
      id: json['id'] as int?,
      albumsid: json['albumsid'] as int?,
      title: json['title'] as String?,
      date: _$JsonConverterFromJson<String, DateTime>(
          json['date'], const DateTimeJsonConverter().fromJson),
      url: json['url'] as String?,
      path: json['path'] as String?,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$TblPhotoGroupByOutputTypeToJson(
    TblPhotoGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('albumsid', instance.albumsid);
  writeNotNull('title', instance.title);
  writeNotNull(
      'date',
      _$JsonConverterToJson<String, DateTime>(
          instance.date, const DateTimeJsonConverter().toJson));
  writeNotNull('url', instance.url);
  writeNotNull('path', instance.path);
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

TblalbumsGroupByOutputType _$TblalbumsGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    TblalbumsGroupByOutputType(
      id: json['id'] as int?,
      userid: json['userid'] as int?,
      title: json['title'] as String?,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$TblalbumsGroupByOutputTypeToJson(
    TblalbumsGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('userid', instance.userid);
  writeNotNull('title', instance.title);
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

TblhistoryGroupByOutputType _$TblhistoryGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    TblhistoryGroupByOutputType(
      id: json['id'] as int?,
      userid: json['userid'] as int?,
      photoid: json['photoid'] as int?,
      date: _$JsonConverterFromJson<String, DateTime>(
          json['date'], const DateTimeJsonConverter().fromJson),
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const DateTimeJsonConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$TblhistoryGroupByOutputTypeToJson(
    TblhistoryGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('userid', instance.userid);
  writeNotNull('photoid', instance.photoid);
  writeNotNull(
      'date',
      _$JsonConverterToJson<String, DateTime>(
          instance.date, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'updated_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeJsonConverter().toJson));
  return val;
}

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

Map<String, dynamic> _$DatasourcesToJson(Datasources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('db', instance.db);
  return val;
}
