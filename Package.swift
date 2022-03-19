// swift-tools-version:4.2
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


// let package = Package(
//         name: "GD",
//         products: [
//             .library(name:"GD", targets: ["GD"])
//         ],
    
//         targets: [
//              .systemLibrary(name: "cgd", pkgConfig: pkgConfig, providers: providers),
//             .target(name: "GD", dependencies: ["cgd"])
//         ]
// )

import PackageDescription


let package = Package(
    name: "GD",
   
      products: [
            .library(name:"GD", targets: ["GD"])
        ],
    
        targets: [
             .systemLibrary(name: "cgd", 
             pkgConfig: "libgd-dev", 
             providers: [
        .brew(["gd"]),
        .apt(["libgd-dev"])
        ]),
            .target(name: "GD", dependencies: ["cgd"])
        ]
)
