// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "PhoneNumberKit",
    platforms: [
        .iOS(.v9), .macOS(.v10_10), .tvOS(.v9), .watchOS(.v2)
    ],
    products: [
        .library(name: "PhoneNumberKit", targets: ["PhoneNumberKit","PhoneNumberKit-watchOS"]),
        .library(name: "PhoneNumberKit-Static", type: .static, targets: ["PhoneNumberKit","PhoneNumberKit-watchOS"]),
        .library(name: "PhoneNumberKit-Dynamic", type: .dynamic, targets: ["PhoneNumberKit", "PhoneNumberKit-watchOS"])
    ],
    targets: [
        .target(name: "PhoneNumberKit-watchOS",
                path: "PhoneNumberKit-watchOS",
                exclude: [
                          "Resources/Original",
                          "Resources/README.md",
                          "Resources/update.sh",
                          "Info.plist",
                          "Bundle+Resources.swift"],
                resources: [
                    .process("Resources/PhoneNumberMetadata.json")
                ]),
        .target(name: "PhoneNumberKit",
                path: "PhoneNumberKit",
                exclude: [
                          "Resources/Original",
                          "Resources/README.md",
                          "Resources/update.sh",
                          "Info.plist", 
                          "Bundle+Resources.swift"],
                resources: [
                    .process("Resources/PhoneNumberMetadata.json")
                ])


    ]
)
