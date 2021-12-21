# WARNING!!!
# DO NOT MODIFY THIS FILE DIRECTLY.
# TO GENERATE THIS RUN: ./updateWorkspaceSnapshots.sh

BASE_ARCHITECTURES = ["amd64", "arm64"]

# Exceptions:
# - s390x doesn't have libunwind8.
#   https://github.com/GoogleContainerTools/distroless/pull/612#issue-500157699
# - ppc64le doesn't have stretch security-channel.
#   https://github.com/GoogleContainerTools/distroless/pull/637#issuecomment-728139611
# - arm needs someone with available hardware to generate:
#   //experimental/python3/ld.so.arm.cache
ARCHITECTURES = BASE_ARCHITECTURES + ["arm", "s390x", "ppc64le"]

VERSIONS = [
    ("debian10", "buster"),
    ("debian11", "bullseye"),
]

DEBIAN_SNAPSHOT = "20211220T210437Z"

DEBIAN_SECURITY_SNAPSHOT = "20211220T035042Z"

SHA256s = {
    "amd64": {
        "debian10": {
            "main": "621d5053cc12eafc688e2c6f1ace9e421ad848c571a76d6bf3528183eec186f1",
            "updates": "fb52db9beedcc50ad00b16a277844bd4d5e64a3d33e8c71b5c7e5663f1ce8e17",
            "security": "eb4dd0d788573defc647e4b7dae4835dd400c0db148f0c8e4742c929b08329be",
        },
        "debian11": {
            "main": "6d5509534097dd37bbcc2ed7bb18e117511395ac3812562abbe019b64071e1bf",
            "updates": "0371261a6f2b14d136bebd8057f886e00b60edf7db27bca86a12bcbd049ac09c",
            "security": "0b76d4ebb722f5c2dd10afffe0a9777f6ee337f516e011041e5e0c3d7b066dbb",
        },
    },
    "arm": {
        "debian10": {
            "main": "7dbc84e4745ad742cf239bbac8964bfa307e6a20abdfb5ed1cf1944ab69cfc21",
            "updates": "fd8cbe658018c5af05ea32597ba90558663151700c35280af050f8b77bfea4cc",
            "security": "25007026d7fb01460dcc8676e272f4ae984ed2d670070200029788bb3b1a7735",
        },
        "debian11": {
            "main": "9f3c200daba0572b3c79f94f0215bd645b7b89e3c0fdf1c114aefce1e3ce76d4",
            "updates": "11ba4ac708af50066372928c4c0573d81b339ac6df24d3a556fd8c4a85f13033",
            "security": "55c489889ebb22edc393ea4cc37c1404520c8af147e77a9d744d2a72ed90850a",
        },
    },
    "arm64": {
        "debian10": {
            "main": "10a463a79f83b618d0fb1897b1907ef23a8c7a74f5d9a329a41370fe445b6c28",
            "updates": "f5d43dc542d856d138947f0af5a2e82cfa3f9f20431030ab078aeceeb5a7f7c9",
            "security": "3fa893cb59b0588074052e0d33f2b1232d2e0576c3d4c787ef387caa5931faaa",
        },
        "debian11": {
            "main": "66eca14926b41007cf7c2ca579f0b2d76f3c366f8b33ebcb6b9e55a640a8d41f",
            "updates": "2d01324fd153e2d16b10a138b058bdcffc28d525a27d054535c233adf54c4378",
            "security": "c7f6f5e3113177b4a6613e0e1589fb809f3fcdd9710107910a7eadcbab617632",
        },
    },
    "s390x": {
        "debian10": {
            "main": "2d4b7c1b6cecadba89499ff715fa184aa6322e0c1c04bf23a0dbc7b66c249e61",
            "updates": "0293c6d36a9259f97e06861bc72e45a0fafde9af8cb3c10e7b54494c4c665068",
            "security": "eb41aec8a89bfeb12573ab2f56740428402d9770e9db0fb6f04a698b6fe1d344",
        },
        "debian11": {
            "main": "4ac7b273c9bad3295733ca768cc53851b08e22a5133b0798b3943bb91cf06884",
            "updates": "12a75ff8e33bcb8f27ce61191c846d893399bceb05dffc4234a43177beda85ac",
            "security": "f4ef607505b6235e6b78790cbd6772d0155a06d34491bbc2e4a2ba5376870d83",
        },
    },
    "ppc64le": {
        "debian10": {
            "main": "a70a3b95fb120b6703a3116c9999af99a7dbf7413115465f11836d7eb0cf7bb2",
            "updates": "a18dc313cd512528ddb0a7cb802a5ac3dae612cabced27b81a57ac4499acd4bb",
            "security": "c1e9848a3a71372859b231964a19b7d31f4e3bcf777976b2fd5f33d09c2111c4",
        },
        "debian11": {
            "main": "c71cad8097b4a0b1a7b978bfa89679facc92cbf89982e1ac1d9cce0ffab86fcf",
            "updates": "6970f7b4d8acdcb8494d7ea1cb1e427c984aabcaf17d9f5d95792fd41b931a1f",
            "security": "57bbde9490b3abf1306543ea9f53579f04d5da7067658bb161cb59e5b68f2151",
        },
    },
}
