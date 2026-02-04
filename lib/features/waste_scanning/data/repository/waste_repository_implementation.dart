import 'dart:io';

import '../../domain/entities/waste_item.dart';
import '../../domain/repository/waste_repository.dart';
import '../datasource/waste_remote_data_source.dart';

class WasteRepositoryImpl implements WasteRepository {
  final WasteRemoteDataSource remoteDataSource;
  WasteRepositoryImpl(this.remoteDataSource);

  @override
  Future<WasteItem> scanAndEstimate(File image) async {
    // Logic to call data source and handle errors
    return await remoteDataSource.uploadImage(image);
  }
}
