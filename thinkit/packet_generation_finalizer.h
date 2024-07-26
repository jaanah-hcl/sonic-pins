// Copyright 2024 Google LLC
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

#ifndef PINS_THINKIT_PACKET_GENERATION_FINALIZER_H_
#define PINS_THINKIT_PACKET_GENERATION_FINALIZER_H_


namespace thinkit {


// PacketGenerationFinalizer will stop listening for packets when it goes out of
// scope.
class PacketGenerationFinalizer {
 public:
  virtual ~PacketGenerationFinalizer() = 0;
};

inline PacketGenerationFinalizer::~PacketGenerationFinalizer() {}

}  // namespace thinkit
#endif  // PINS_THINKIT_PACKET_GENERATION_FINALIZER_H_
