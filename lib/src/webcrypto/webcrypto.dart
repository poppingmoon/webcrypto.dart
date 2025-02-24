// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// TODO: Document that methods accepting / returning streams are NOT streaming
///       when running in the browser. This is because the Web Cryptography API
///       supported by browser do not support streaming. Hence, one should
///       expect that the contents of these streams is buffered when operating
///       in the browser.
///       This could be documented for each method or at library level.
library webcrypto;

import 'dart:convert';
import 'dart:async';
import 'dart:typed_data';
import '../impl_interface/impl_interface.dart';
import '../impl_stub/impl_stub.dart'
    if (dart.library.ffi) '../impl_ffi/impl_ffi.dart'
    if (dart.library.js_interop) '../impl_js/impl_js.dart' show webCryptImpl;

export '../impl_interface/impl_interface.dart'
    show KeyPair, EllipticCurve, OperationError;

part 'webcrypto.aescbc.dart';
part 'webcrypto.aesctr.dart';
part 'webcrypto.aesgcm.dart';
part 'webcrypto.digest.dart';
part 'webcrypto.ecdh.dart';
part 'webcrypto.ecdsa.dart';
part 'webcrypto.hkdf.dart';
part 'webcrypto.hmac.dart';
part 'webcrypto.pbkdf2.dart';
part 'webcrypto.random.dart';
part 'webcrypto.rsaoaep.dart';
part 'webcrypto.rsapss.dart';
part 'webcrypto.rsassapkcs1v15.dart';
