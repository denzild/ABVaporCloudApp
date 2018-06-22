import PackageDescription

let package = Package(
    name: "ABVaporCloudApp",
    targets: [
        Target(name: "App",
               dependencies: ["MongoKitten"]),
        Target(name: "Run", dependencies: ["App"])

    ],
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 2),
        .Package(url: "https://github.com/vapor/fluent-provider.git", majorVersion: 1),
        .Package(url: "https://github.com/vapor/auth-provider.git", majorVersion: 1),
        .Package(url: "https://github.com/daltoniam/Starscream.git", majorVersion: 3),
        .Package(url: "https://github.com/OpenKitten/MongoKitten.git", majorVersion: 4)
    ],
    exclude: [
        "Config",
        "Database",
        "Localization",
        "Public",
        "Resources",
    ]
)

