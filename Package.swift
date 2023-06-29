// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CoolFeature",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "SPMStatic", type: .static, targets: ["Core"]),
        .library(
            name: "SPM",
            targets: ["SPM"]),
        .library(name: "SPMDynamic", type: .dynamic, targets: ["SPM"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Core",
            dependencies: []),
        .testTarget(
            name: "CoreTests",
            dependencies: ["Core"]),
        .testTarget(
            name: "libSPMTests",
            dependencies: ["SPM"]),
        .target(
            name: "SPM",
            dependencies: []),
        .testTarget(
            name: "SPMTests",
            dependencies: ["SPM"]),
        .testTarget(
            name: "SPMAllTests",
            dependencies: ["SPM"]),
        .testTarget(
            name: "AllTests",
            dependencies: ["Core"]),
        .testTarget(
            name: "SPMStaticTests",
            dependencies: ["Core"]),
    ]
)
