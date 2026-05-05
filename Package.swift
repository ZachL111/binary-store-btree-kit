// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "binary-store-btree-kit",
    products: [.executable(name: "binary-store-btree-kit", targets: ["App"])],
    targets: [.executableTarget(name: "App", path: "src")]
)
