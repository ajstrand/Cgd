// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.
#if swift(>=5.2) && !os(Linux)
let pkgConfig: String? = nil
#else
let pkgConfig = "libgd-dev"
#endif

#if swift(>=5.2)
let providers: [SystemPackageProvider] = [
    .apt(["libgd-dev"])
]
#else
let providers: [SystemPackageProvider] = [
    .apt(["libgd-dev"]),
    //  .brew(["libxml2"])
]
#endif

import PackageDescription

let package = Package(
        name: "GD",
        products: [
            .library(name:"GD", targets: ["GD"])
        ],
    
        targets: [
             .systemLibrary(name: "cgd", pkgConfig: pkgConfig, providers: providers),
            .target(name: "GD", dependencies: ["cgd"])
        ]
)

//         pkgConfig: "",
// providers: [
//   .apt(["libsqlite-dev"]),
//   .brew(["sqlite3"])
// ],

// targets: [
// .target(name: "myPackage"),
// .systemLibrary(name: "libxml2",
//                path: "Modules",
//                pkgConfig: pkgConfig,
//                providers: providers)
// ])
// )
