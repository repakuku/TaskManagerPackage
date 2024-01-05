import ProjectDescription

let project = Project(
	name: "TaskManagerPackage",
	targets: [
		Target(
			name: "TaskManagerPackage",
			destinations: .iOS,
			product: .staticLibrary,
			bundleId: "com.repakuku.TaskManagerPackage",
			sources: ["Sources/**"]
		),
		Target(
			name: "TaskManagerPackageTests",
			destinations: .iOS,
			product: .unitTests,
			bundleId: "com.repakuku.TaskManagerPackageTests",
			sources: ["Tests/**"],
			dependencies: [
				.target(name: "TaskManagerPackage")
			]
		)
	]
)
