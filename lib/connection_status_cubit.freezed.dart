// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_status_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ConnectionStatusState {
  List<bool> get statuses => throw _privateConstructorUsedError;

  /// Create a copy of ConnectionStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConnectionStatusStateCopyWith<ConnectionStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionStatusStateCopyWith<$Res> {
  factory $ConnectionStatusStateCopyWith(
    ConnectionStatusState value,
    $Res Function(ConnectionStatusState) then,
  ) = _$ConnectionStatusStateCopyWithImpl<$Res, ConnectionStatusState>;
  @useResult
  $Res call({List<bool> statuses});
}

/// @nodoc
class _$ConnectionStatusStateCopyWithImpl<
  $Res,
  $Val extends ConnectionStatusState
>
    implements $ConnectionStatusStateCopyWith<$Res> {
  _$ConnectionStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConnectionStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? statuses = null}) {
    return _then(
      _value.copyWith(
            statuses: null == statuses
                ? _value.statuses
                : statuses // ignore: cast_nullable_to_non_nullable
                      as List<bool>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ConnectionStatusStateImplCopyWith<$Res>
    implements $ConnectionStatusStateCopyWith<$Res> {
  factory _$$ConnectionStatusStateImplCopyWith(
    _$ConnectionStatusStateImpl value,
    $Res Function(_$ConnectionStatusStateImpl) then,
  ) = __$$ConnectionStatusStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<bool> statuses});
}

/// @nodoc
class __$$ConnectionStatusStateImplCopyWithImpl<$Res>
    extends
        _$ConnectionStatusStateCopyWithImpl<$Res, _$ConnectionStatusStateImpl>
    implements _$$ConnectionStatusStateImplCopyWith<$Res> {
  __$$ConnectionStatusStateImplCopyWithImpl(
    _$ConnectionStatusStateImpl _value,
    $Res Function(_$ConnectionStatusStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConnectionStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? statuses = null}) {
    return _then(
      _$ConnectionStatusStateImpl(
        statuses: null == statuses
            ? _value._statuses
            : statuses // ignore: cast_nullable_to_non_nullable
                  as List<bool>,
      ),
    );
  }
}

/// @nodoc

class _$ConnectionStatusStateImpl implements _ConnectionStatusState {
  const _$ConnectionStatusStateImpl({required final List<bool> statuses})
    : _statuses = statuses;

  final List<bool> _statuses;
  @override
  List<bool> get statuses {
    if (_statuses is EqualUnmodifiableListView) return _statuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statuses);
  }

  @override
  String toString() {
    return 'ConnectionStatusState(statuses: $statuses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionStatusStateImpl &&
            const DeepCollectionEquality().equals(other._statuses, _statuses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_statuses));

  /// Create a copy of ConnectionStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionStatusStateImplCopyWith<_$ConnectionStatusStateImpl>
  get copyWith =>
      __$$ConnectionStatusStateImplCopyWithImpl<_$ConnectionStatusStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ConnectionStatusState implements ConnectionStatusState {
  const factory _ConnectionStatusState({required final List<bool> statuses}) =
      _$ConnectionStatusStateImpl;

  @override
  List<bool> get statuses;

  /// Create a copy of ConnectionStatusState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionStatusStateImplCopyWith<_$ConnectionStatusStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
