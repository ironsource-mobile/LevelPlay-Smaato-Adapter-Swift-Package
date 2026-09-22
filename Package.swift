// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Smaato-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "SmaatoAdapter", targets: ["SmaatoAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/vervegroup/Smaato-ios-sdk-standalone", exact: "23.2.2"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "SmaatoAdapter",
      dependencies: [
        "SmaatoAdapterSDK",
        .product(name: "SmaatoSDK", package: "Smaato-ios-sdk-standalone"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "SmaatoAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/smaato-adapter/5.6.0/ISSmaatoAdapter5.6.0.zip",
      checksum: "a7a17b7ab701748f4ae7a0e0326ffcae139f8a6baa579703e0f5f22744a69261"
    )
  ]
)
