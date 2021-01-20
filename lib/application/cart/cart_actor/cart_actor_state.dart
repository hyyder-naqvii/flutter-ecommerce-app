part of 'cart_actor_bloc.dart';

@freezed
abstract class CartActorState with _$CartActorState {
  const factory CartActorState.initial() =_Initial;
  const factory CartActorState.actionPerformed() =_ActionPerformed;
  const factory CartActorState.totalRequested(CheckOutData checkOutData) =_TotalRequested;
  const factory CartActorState.actionSuccess() =_ActionSuccess;
  const factory CartActorState.actionFailure() =_ActionFailure;

}