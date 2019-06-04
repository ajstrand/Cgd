// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
        name: "GD",
        products: [
            .library(name:"GD", targets: ["GD"])
        ],
        targets: [
            .systemLibrary(name: "cgd", pkgConfig: "gdlib"),
            .target(name: "GD", dependencies: ["cgd"])
        ]
)
