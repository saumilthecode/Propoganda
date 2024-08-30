// swift-tools-version: 5.9

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "School Propoganda",
    platforms: [
        .iOS("17.4")
    ],
    products: [
        .iOSApplication(
            name: "School Propoganda",
            targets: ["AppModule"],
            bundleIdentifier: "bbss.com.tk.sg",
            teamIdentifier: "P6PV2R9443",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .cloud),
            accentColor: .asset("AccentColor"),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ],
            capabilities: [
                .incomingNetworkConnections(),
                .outgoingNetworkConnections(),
                .appTransportSecurity(configuration: .init(
                    exceptionDomains: [
                        .init(
                            domainName: "datamall2.mytransport.sg/ltaodataservice/BusArrivalv2",
                            includesSubdomains: true,
                            exceptionAllowsInsecureHTTPLoads: true
                        ),
                        .init(
                            domainName: "http://datamall2.mytransport.sg/ltaodataservice/BusArrivalv2",
                            includesSubdomains: true,
                            exceptionAllowsInsecureHTTPLoads: true
                        ),
                        .init(
                            domainName: "http://datamall2.mytransport.sg/ltaodataservice/BusArrivalv2?BusStopCode=43532",
                            includesSubdomains: true,
                            exceptionAllowsInsecureHTTPLoads: true
                        )
                    ]
                )),
                .localNetwork(purposeString: "Get Bus Timeings", bonjourServiceTypes: ["Get API Requests"])
            ],
            appCategory: .education
        )
    ],
    dependencies: [
        .package(url: "https://github.com/ivanvorobei/SPConfetti", "1.4.2"..<"2.0.0")
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            dependencies: [
                .product(name: "SPConfetti", package: "SPConfetti")
            ],
            path: ".",
            swiftSettings: [
                .enableUpcomingFeature("BareSlashRegexLiterals")
            ]
        )
    ]
)