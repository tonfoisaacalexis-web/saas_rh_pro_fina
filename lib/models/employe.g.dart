// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employe.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEmployeCollection on Isar {
  IsarCollection<Employe> get employes => this.collection();
}

const EmployeSchema = CollectionSchema(
  name: r'Employe',
  id: -1765809453817061081,
  properties: {
    r'acteMariagePath': PropertySchema(
      id: 0,
      name: r'acteMariagePath',
      type: IsarType.string,
    ),
    r'acteNaissancePath': PropertySchema(
      id: 1,
      name: r'acteNaissancePath',
      type: IsarType.string,
    ),
    r'adresseComplete': PropertySchema(
      id: 2,
      name: r'adresseComplete',
      type: IsarType.string,
    ),
    r'arrondissement': PropertySchema(
      id: 3,
      name: r'arrondissement',
      type: IsarType.string,
    ),
    r'cniPath': PropertySchema(
      id: 4,
      name: r'cniPath',
      type: IsarType.string,
    ),
    r'dateEnregistrement': PropertySchema(
      id: 5,
      name: r'dateEnregistrement',
      type: IsarType.dateTime,
    ),
    r'delegation': PropertySchema(
      id: 6,
      name: r'delegation',
      type: IsarType.string,
    ),
    r'departement': PropertySchema(
      id: 7,
      name: r'departement',
      type: IsarType.string,
    ),
    r'diplomePath': PropertySchema(
      id: 8,
      name: r'diplomePath',
      type: IsarType.string,
    ),
    r'matricule': PropertySchema(
      id: 9,
      name: r'matricule',
      type: IsarType.string,
    ),
    r'motDePasse': PropertySchema(
      id: 10,
      name: r'motDePasse',
      type: IsarType.string,
    ),
    r'nom': PropertySchema(
      id: 11,
      name: r'nom',
      type: IsarType.string,
    ),
    r'photoPath': PropertySchema(
      id: 12,
      name: r'photoPath',
      type: IsarType.string,
    ),
    r'poste': PropertySchema(
      id: 13,
      name: r'poste',
      type: IsarType.string,
    ),
    r'prenom': PropertySchema(
      id: 14,
      name: r'prenom',
      type: IsarType.string,
    ),
    r'ribPath': PropertySchema(
      id: 15,
      name: r'ribPath',
      type: IsarType.string,
    ),
    r'structureEmploye': PropertySchema(
      id: 16,
      name: r'structureEmploye',
      type: IsarType.string,
    ),
    r'telephone': PropertySchema(
      id: 17,
      name: r'telephone',
      type: IsarType.string,
    )
  },
  estimateSize: _employeEstimateSize,
  serialize: _employeSerialize,
  deserialize: _employeDeserialize,
  deserializeProp: _employeDeserializeProp,
  idName: r'id',
  indexes: {
    r'matricule': IndexSchema(
      id: -2931968585082441240,
      name: r'matricule',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'matricule',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _employeGetId,
  getLinks: _employeGetLinks,
  attach: _employeAttach,
  version: '3.1.0+1',
);

int _employeEstimateSize(
  Employe object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.acteMariagePath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.acteNaissancePath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.adresseComplete;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.arrondissement;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.cniPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.delegation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.departement;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.diplomePath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.matricule;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.motDePasse;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.nom;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.photoPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.poste;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.prenom;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ribPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.structureEmploye;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.telephone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _employeSerialize(
  Employe object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.acteMariagePath);
  writer.writeString(offsets[1], object.acteNaissancePath);
  writer.writeString(offsets[2], object.adresseComplete);
  writer.writeString(offsets[3], object.arrondissement);
  writer.writeString(offsets[4], object.cniPath);
  writer.writeDateTime(offsets[5], object.dateEnregistrement);
  writer.writeString(offsets[6], object.delegation);
  writer.writeString(offsets[7], object.departement);
  writer.writeString(offsets[8], object.diplomePath);
  writer.writeString(offsets[9], object.matricule);
  writer.writeString(offsets[10], object.motDePasse);
  writer.writeString(offsets[11], object.nom);
  writer.writeString(offsets[12], object.photoPath);
  writer.writeString(offsets[13], object.poste);
  writer.writeString(offsets[14], object.prenom);
  writer.writeString(offsets[15], object.ribPath);
  writer.writeString(offsets[16], object.structureEmploye);
  writer.writeString(offsets[17], object.telephone);
}

Employe _employeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Employe();
  object.acteMariagePath = reader.readStringOrNull(offsets[0]);
  object.acteNaissancePath = reader.readStringOrNull(offsets[1]);
  object.adresseComplete = reader.readStringOrNull(offsets[2]);
  object.arrondissement = reader.readStringOrNull(offsets[3]);
  object.cniPath = reader.readStringOrNull(offsets[4]);
  object.dateEnregistrement = reader.readDateTimeOrNull(offsets[5]);
  object.delegation = reader.readStringOrNull(offsets[6]);
  object.departement = reader.readStringOrNull(offsets[7]);
  object.diplomePath = reader.readStringOrNull(offsets[8]);
  object.id = id;
  object.matricule = reader.readStringOrNull(offsets[9]);
  object.motDePasse = reader.readStringOrNull(offsets[10]);
  object.nom = reader.readStringOrNull(offsets[11]);
  object.photoPath = reader.readStringOrNull(offsets[12]);
  object.poste = reader.readStringOrNull(offsets[13]);
  object.prenom = reader.readStringOrNull(offsets[14]);
  object.ribPath = reader.readStringOrNull(offsets[15]);
  object.structureEmploye = reader.readStringOrNull(offsets[16]);
  object.telephone = reader.readStringOrNull(offsets[17]);
  return object;
}

P _employeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _employeGetId(Employe object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _employeGetLinks(Employe object) {
  return [];
}

void _employeAttach(IsarCollection<dynamic> col, Id id, Employe object) {
  object.id = id;
}

extension EmployeByIndex on IsarCollection<Employe> {
  Future<Employe?> getByMatricule(String? matricule) {
    return getByIndex(r'matricule', [matricule]);
  }

  Employe? getByMatriculeSync(String? matricule) {
    return getByIndexSync(r'matricule', [matricule]);
  }

  Future<bool> deleteByMatricule(String? matricule) {
    return deleteByIndex(r'matricule', [matricule]);
  }

  bool deleteByMatriculeSync(String? matricule) {
    return deleteByIndexSync(r'matricule', [matricule]);
  }

  Future<List<Employe?>> getAllByMatricule(List<String?> matriculeValues) {
    final values = matriculeValues.map((e) => [e]).toList();
    return getAllByIndex(r'matricule', values);
  }

  List<Employe?> getAllByMatriculeSync(List<String?> matriculeValues) {
    final values = matriculeValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'matricule', values);
  }

  Future<int> deleteAllByMatricule(List<String?> matriculeValues) {
    final values = matriculeValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'matricule', values);
  }

  int deleteAllByMatriculeSync(List<String?> matriculeValues) {
    final values = matriculeValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'matricule', values);
  }

  Future<Id> putByMatricule(Employe object) {
    return putByIndex(r'matricule', object);
  }

  Id putByMatriculeSync(Employe object, {bool saveLinks = true}) {
    return putByIndexSync(r'matricule', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByMatricule(List<Employe> objects) {
    return putAllByIndex(r'matricule', objects);
  }

  List<Id> putAllByMatriculeSync(List<Employe> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'matricule', objects, saveLinks: saveLinks);
  }
}

extension EmployeQueryWhereSort on QueryBuilder<Employe, Employe, QWhere> {
  QueryBuilder<Employe, Employe, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EmployeQueryWhere on QueryBuilder<Employe, Employe, QWhereClause> {
  QueryBuilder<Employe, Employe, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Employe, Employe, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Employe, Employe, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Employe, Employe, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterWhereClause> matriculeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'matricule',
        value: [null],
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterWhereClause> matriculeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'matricule',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterWhereClause> matriculeEqualTo(
      String? matricule) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'matricule',
        value: [matricule],
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterWhereClause> matriculeNotEqualTo(
      String? matricule) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'matricule',
              lower: [],
              upper: [matricule],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'matricule',
              lower: [matricule],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'matricule',
              lower: [matricule],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'matricule',
              lower: [],
              upper: [matricule],
              includeUpper: false,
            ));
      }
    });
  }
}

extension EmployeQueryFilter
    on QueryBuilder<Employe, Employe, QFilterCondition> {
  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      acteMariagePathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'acteMariagePath',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      acteMariagePathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'acteMariagePath',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> acteMariagePathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acteMariagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      acteMariagePathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'acteMariagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> acteMariagePathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'acteMariagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> acteMariagePathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'acteMariagePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      acteMariagePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'acteMariagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> acteMariagePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'acteMariagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> acteMariagePathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'acteMariagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> acteMariagePathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'acteMariagePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      acteMariagePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acteMariagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      acteMariagePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'acteMariagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      acteNaissancePathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'acteNaissancePath',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      acteNaissancePathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'acteNaissancePath',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      acteNaissancePathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acteNaissancePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      acteNaissancePathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'acteNaissancePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      acteNaissancePathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'acteNaissancePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      acteNaissancePathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'acteNaissancePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      acteNaissancePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'acteNaissancePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      acteNaissancePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'acteNaissancePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      acteNaissancePathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'acteNaissancePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      acteNaissancePathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'acteNaissancePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      acteNaissancePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acteNaissancePath',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      acteNaissancePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'acteNaissancePath',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      adresseCompleteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'adresseComplete',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      adresseCompleteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'adresseComplete',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> adresseCompleteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adresseComplete',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      adresseCompleteGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'adresseComplete',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> adresseCompleteLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'adresseComplete',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> adresseCompleteBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'adresseComplete',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      adresseCompleteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'adresseComplete',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> adresseCompleteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'adresseComplete',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> adresseCompleteContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'adresseComplete',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> adresseCompleteMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'adresseComplete',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      adresseCompleteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adresseComplete',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      adresseCompleteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'adresseComplete',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> arrondissementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'arrondissement',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      arrondissementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'arrondissement',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> arrondissementEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'arrondissement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      arrondissementGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'arrondissement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> arrondissementLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'arrondissement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> arrondissementBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'arrondissement',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      arrondissementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'arrondissement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> arrondissementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'arrondissement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> arrondissementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'arrondissement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> arrondissementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'arrondissement',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      arrondissementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'arrondissement',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      arrondissementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'arrondissement',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> cniPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cniPath',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> cniPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cniPath',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> cniPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cniPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> cniPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cniPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> cniPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cniPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> cniPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cniPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> cniPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cniPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> cniPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cniPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> cniPathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cniPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> cniPathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cniPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> cniPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cniPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> cniPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cniPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      dateEnregistrementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateEnregistrement',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      dateEnregistrementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateEnregistrement',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      dateEnregistrementEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateEnregistrement',
        value: value,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      dateEnregistrementGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateEnregistrement',
        value: value,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      dateEnregistrementLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateEnregistrement',
        value: value,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      dateEnregistrementBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateEnregistrement',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> delegationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'delegation',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> delegationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'delegation',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> delegationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'delegation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> delegationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'delegation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> delegationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'delegation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> delegationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'delegation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> delegationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'delegation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> delegationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'delegation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> delegationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'delegation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> delegationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'delegation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> delegationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'delegation',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> delegationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'delegation',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> departementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'departement',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> departementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'departement',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> departementEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'departement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> departementGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'departement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> departementLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'departement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> departementBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'departement',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> departementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'departement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> departementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'departement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> departementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'departement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> departementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'departement',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> departementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'departement',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      departementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'departement',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> diplomePathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'diplomePath',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> diplomePathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'diplomePath',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> diplomePathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diplomePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> diplomePathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'diplomePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> diplomePathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'diplomePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> diplomePathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'diplomePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> diplomePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'diplomePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> diplomePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'diplomePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> diplomePathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'diplomePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> diplomePathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'diplomePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> diplomePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diplomePath',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      diplomePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'diplomePath',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> matriculeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'matricule',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> matriculeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'matricule',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> matriculeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'matricule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> matriculeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'matricule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> matriculeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'matricule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> matriculeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'matricule',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> matriculeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'matricule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> matriculeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'matricule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> matriculeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'matricule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> matriculeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'matricule',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> matriculeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'matricule',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> matriculeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'matricule',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> motDePasseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'motDePasse',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> motDePasseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'motDePasse',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> motDePasseEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'motDePasse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> motDePasseGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'motDePasse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> motDePasseLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'motDePasse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> motDePasseBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'motDePasse',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> motDePasseStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'motDePasse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> motDePasseEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'motDePasse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> motDePasseContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'motDePasse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> motDePasseMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'motDePasse',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> motDePasseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'motDePasse',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> motDePasseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'motDePasse',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> nomIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nom',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> nomIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nom',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> nomEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> nomGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> nomLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> nomBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> nomStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> nomEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> nomContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> nomMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> nomIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nom',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> nomIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nom',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> photoPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'photoPath',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> photoPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'photoPath',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> photoPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> photoPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> photoPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> photoPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'photoPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> photoPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> photoPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> photoPathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> photoPathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'photoPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> photoPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photoPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> photoPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'photoPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> posteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'poste',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> posteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'poste',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> posteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'poste',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> posteGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'poste',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> posteLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'poste',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> posteBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'poste',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> posteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'poste',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> posteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'poste',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> posteContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'poste',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> posteMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'poste',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> posteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'poste',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> posteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'poste',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> prenomIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prenom',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> prenomIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prenom',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> prenomEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> prenomGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> prenomLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> prenomBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prenom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> prenomStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> prenomEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> prenomContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> prenomMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prenom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> prenomIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prenom',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> prenomIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prenom',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> ribPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ribPath',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> ribPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ribPath',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> ribPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ribPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> ribPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ribPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> ribPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ribPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> ribPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ribPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> ribPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ribPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> ribPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ribPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> ribPathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ribPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> ribPathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ribPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> ribPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ribPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> ribPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ribPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      structureEmployeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'structureEmploye',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      structureEmployeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'structureEmploye',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> structureEmployeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'structureEmploye',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      structureEmployeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'structureEmploye',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      structureEmployeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'structureEmploye',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> structureEmployeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'structureEmploye',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      structureEmployeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'structureEmploye',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      structureEmployeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'structureEmploye',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      structureEmployeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'structureEmploye',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> structureEmployeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'structureEmploye',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      structureEmployeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'structureEmploye',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition>
      structureEmployeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'structureEmploye',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> telephoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'telephone',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> telephoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'telephone',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> telephoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'telephone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> telephoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'telephone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> telephoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'telephone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> telephoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'telephone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> telephoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'telephone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> telephoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'telephone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> telephoneContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'telephone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> telephoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'telephone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> telephoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'telephone',
        value: '',
      ));
    });
  }

  QueryBuilder<Employe, Employe, QAfterFilterCondition> telephoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'telephone',
        value: '',
      ));
    });
  }
}

extension EmployeQueryObject
    on QueryBuilder<Employe, Employe, QFilterCondition> {}

extension EmployeQueryLinks
    on QueryBuilder<Employe, Employe, QFilterCondition> {}

extension EmployeQuerySortBy on QueryBuilder<Employe, Employe, QSortBy> {
  QueryBuilder<Employe, Employe, QAfterSortBy> sortByActeMariagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acteMariagePath', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByActeMariagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acteMariagePath', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByActeNaissancePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acteNaissancePath', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByActeNaissancePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acteNaissancePath', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByAdresseComplete() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adresseComplete', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByAdresseCompleteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adresseComplete', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByArrondissement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrondissement', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByArrondissementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrondissement', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByCniPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cniPath', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByCniPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cniPath', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByDateEnregistrement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateEnregistrement', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByDateEnregistrementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateEnregistrement', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByDelegation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delegation', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByDelegationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delegation', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByDepartement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departement', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByDepartementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departement', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByDiplomePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diplomePath', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByDiplomePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diplomePath', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByMatricule() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matricule', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByMatriculeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matricule', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByMotDePasse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motDePasse', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByMotDePasseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motDePasse', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByNom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nom', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByNomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nom', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByPhotoPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoPath', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByPhotoPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoPath', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByPoste() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poste', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByPosteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poste', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByPrenom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prenom', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByPrenomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prenom', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByRibPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ribPath', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByRibPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ribPath', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByStructureEmploye() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'structureEmploye', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByStructureEmployeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'structureEmploye', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByTelephone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephone', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> sortByTelephoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephone', Sort.desc);
    });
  }
}

extension EmployeQuerySortThenBy
    on QueryBuilder<Employe, Employe, QSortThenBy> {
  QueryBuilder<Employe, Employe, QAfterSortBy> thenByActeMariagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acteMariagePath', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByActeMariagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acteMariagePath', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByActeNaissancePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acteNaissancePath', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByActeNaissancePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acteNaissancePath', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByAdresseComplete() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adresseComplete', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByAdresseCompleteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adresseComplete', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByArrondissement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrondissement', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByArrondissementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrondissement', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByCniPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cniPath', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByCniPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cniPath', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByDateEnregistrement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateEnregistrement', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByDateEnregistrementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateEnregistrement', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByDelegation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delegation', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByDelegationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delegation', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByDepartement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departement', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByDepartementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departement', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByDiplomePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diplomePath', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByDiplomePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diplomePath', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByMatricule() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matricule', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByMatriculeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matricule', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByMotDePasse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motDePasse', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByMotDePasseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motDePasse', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByNom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nom', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByNomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nom', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByPhotoPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoPath', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByPhotoPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoPath', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByPoste() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poste', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByPosteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poste', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByPrenom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prenom', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByPrenomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prenom', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByRibPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ribPath', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByRibPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ribPath', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByStructureEmploye() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'structureEmploye', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByStructureEmployeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'structureEmploye', Sort.desc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByTelephone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephone', Sort.asc);
    });
  }

  QueryBuilder<Employe, Employe, QAfterSortBy> thenByTelephoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephone', Sort.desc);
    });
  }
}

extension EmployeQueryWhereDistinct
    on QueryBuilder<Employe, Employe, QDistinct> {
  QueryBuilder<Employe, Employe, QDistinct> distinctByActeMariagePath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'acteMariagePath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Employe, Employe, QDistinct> distinctByActeNaissancePath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'acteNaissancePath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Employe, Employe, QDistinct> distinctByAdresseComplete(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'adresseComplete',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Employe, Employe, QDistinct> distinctByArrondissement(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'arrondissement',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Employe, Employe, QDistinct> distinctByCniPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cniPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Employe, Employe, QDistinct> distinctByDateEnregistrement() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateEnregistrement');
    });
  }

  QueryBuilder<Employe, Employe, QDistinct> distinctByDelegation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'delegation', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Employe, Employe, QDistinct> distinctByDepartement(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'departement', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Employe, Employe, QDistinct> distinctByDiplomePath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'diplomePath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Employe, Employe, QDistinct> distinctByMatricule(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'matricule', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Employe, Employe, QDistinct> distinctByMotDePasse(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'motDePasse', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Employe, Employe, QDistinct> distinctByNom(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nom', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Employe, Employe, QDistinct> distinctByPhotoPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photoPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Employe, Employe, QDistinct> distinctByPoste(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'poste', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Employe, Employe, QDistinct> distinctByPrenom(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prenom', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Employe, Employe, QDistinct> distinctByRibPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ribPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Employe, Employe, QDistinct> distinctByStructureEmploye(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'structureEmploye',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Employe, Employe, QDistinct> distinctByTelephone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'telephone', caseSensitive: caseSensitive);
    });
  }
}

extension EmployeQueryProperty
    on QueryBuilder<Employe, Employe, QQueryProperty> {
  QueryBuilder<Employe, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Employe, String?, QQueryOperations> acteMariagePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'acteMariagePath');
    });
  }

  QueryBuilder<Employe, String?, QQueryOperations> acteNaissancePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'acteNaissancePath');
    });
  }

  QueryBuilder<Employe, String?, QQueryOperations> adresseCompleteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'adresseComplete');
    });
  }

  QueryBuilder<Employe, String?, QQueryOperations> arrondissementProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'arrondissement');
    });
  }

  QueryBuilder<Employe, String?, QQueryOperations> cniPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cniPath');
    });
  }

  QueryBuilder<Employe, DateTime?, QQueryOperations>
      dateEnregistrementProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateEnregistrement');
    });
  }

  QueryBuilder<Employe, String?, QQueryOperations> delegationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'delegation');
    });
  }

  QueryBuilder<Employe, String?, QQueryOperations> departementProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'departement');
    });
  }

  QueryBuilder<Employe, String?, QQueryOperations> diplomePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'diplomePath');
    });
  }

  QueryBuilder<Employe, String?, QQueryOperations> matriculeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'matricule');
    });
  }

  QueryBuilder<Employe, String?, QQueryOperations> motDePasseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'motDePasse');
    });
  }

  QueryBuilder<Employe, String?, QQueryOperations> nomProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nom');
    });
  }

  QueryBuilder<Employe, String?, QQueryOperations> photoPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photoPath');
    });
  }

  QueryBuilder<Employe, String?, QQueryOperations> posteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'poste');
    });
  }

  QueryBuilder<Employe, String?, QQueryOperations> prenomProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prenom');
    });
  }

  QueryBuilder<Employe, String?, QQueryOperations> ribPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ribPath');
    });
  }

  QueryBuilder<Employe, String?, QQueryOperations> structureEmployeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'structureEmploye');
    });
  }

  QueryBuilder<Employe, String?, QQueryOperations> telephoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'telephone');
    });
  }
}
