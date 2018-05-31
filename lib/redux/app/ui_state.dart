import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:invoiceninja/data/models/models.dart';
import 'package:invoiceninja/redux/app/entity_ui_state.dart';

part 'ui_state.g.dart';

abstract class UIState implements Built<UIState, UIStateBuilder> {

  EntityUIState get productUIState;

  factory UIState() {
    return _$UIState._(
      productUIState: EntityUIState(ProductFields.productKey),
    );
  }

  UIState._();
  //factory UIState([updates(UIStateBuilder b)]) = _$UIState;
  static Serializer<UIState> get serializer => _$uIStateSerializer;
}
