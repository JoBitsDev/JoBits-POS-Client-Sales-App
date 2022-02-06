// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:objectbox/flatbuffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'core/location/app/models/location_model.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 2514154007042206211),
      name: 'location_model',
      lastPropertyId: const IdUid(7, 2896446557707775805),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 5972559222869406510),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 1711972734359244098),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 7889850785868060960),
            name: 'url',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 1302168761166870525),
            name: 'data_base_id',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 4859233712199725770),
            name: 'user_id',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 2000389707822982123),
            name: 'user_name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 2896446557707775805),
            name: 'user_password',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(1, 2514154007042206211),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    location_model: EntityDefinition<location_model>(
        model: _entities[0],
        toOneRelations: (location_model object) => [],
        toManyRelations: (location_model object) => {},
        getId: (location_model object) => object.id,
        setId: (location_model object, int id) {
          object.id = id;
        },
        objectToFB: (location_model object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          final urlOffset = fbb.writeString(object.url);
          final user_nameOffset = fbb.writeString(object.user_name);
          final user_passwordOffset = fbb.writeString(object.user_password);
          fbb.startTable(8);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addOffset(2, urlOffset);
          fbb.addInt64(3, object.data_base_id);
          fbb.addInt64(4, object.user_id);
          fbb.addOffset(5, user_nameOffset);
          fbb.addOffset(6, user_passwordOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = location_model(
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              const fb.StringReader().vTableGet(buffer, rootOffset, 6, ''),
              const fb.StringReader().vTableGet(buffer, rootOffset, 8, ''),
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0),
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 12, 0),
              const fb.StringReader().vTableGet(buffer, rootOffset, 14, ''),
              const fb.StringReader().vTableGet(buffer, rootOffset, 16, ''));

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [location_model] entity fields to define ObjectBox queries.
class location_model_ {
  /// see [location_model.id]
  static final id =
      QueryIntegerProperty<location_model>(_entities[0].properties[0]);

  /// see [location_model.name]
  static final name =
      QueryStringProperty<location_model>(_entities[0].properties[1]);

  /// see [location_model.url]
  static final url =
      QueryStringProperty<location_model>(_entities[0].properties[2]);

  /// see [location_model.data_base_id]
  static final data_base_id =
      QueryIntegerProperty<location_model>(_entities[0].properties[3]);

  /// see [location_model.user_id]
  static final user_id =
      QueryIntegerProperty<location_model>(_entities[0].properties[4]);

  /// see [location_model.user_name]
  static final user_name =
      QueryStringProperty<location_model>(_entities[0].properties[5]);

  /// see [location_model.user_password]
  static final user_password =
      QueryStringProperty<location_model>(_entities[0].properties[6]);
}
