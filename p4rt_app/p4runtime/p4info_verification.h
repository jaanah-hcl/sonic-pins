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
#ifndef PINS_P4RT_APP_P4RUNTIME_P4INFO_VERIFICATION_H_
#define PINS_P4RT_APP_P4RUNTIME_P4INFO_VERIFICATION_H_

#include "absl/status/status.h"
#include "p4/config/v1/p4info.pb.h"

namespace p4rt_app {

// Verifies if all the required P4Info fields are as expected.
// For now, checks PacketIo metadata & Fixed tables
absl::Status ValidateP4Info(const p4::config::v1::P4Info &p4info);

} // namespace p4rt_app

#endif // PINS_P4RT_APP_P4RUNTIME_P4INFO_VERIFICATION_H_
