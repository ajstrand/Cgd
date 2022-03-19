// swift-tools-version:5.5.3

// The swift-tools-version declares the minimum version of Swift required to build this package.
// #if swift(>=5.2) && !os(Linux)
// let pkgConfig: String? = nil
// #else
// let pkgConfig = "libgd-dev"
// #endif

// #if swift(>=5.2)
// let providers: [SystemPackageProvider] = [
//     .apt(["libgd-dev"])
// ]
// #else
// let providers: [SystemPackageProvider] = [
//     .apt(["libgd-dev"]),
// ]
// #endif

import PackageDescription


let package = Package(
         name: "Cgdlinux",
         products: [
        // The external product of our package is an importable
        // library that has the same name as the package itself:
        .library(
            name: "Cgd",
            targets: ["Cgd"]
        )
    ],
     targets: [
    .systemLibrary(name: "libgd",
       pkgConfig: "gdlib",
    providers: [
        .apt(["libgd-dev"])
    ]), .target(name: "Cgd")
  ]
)
