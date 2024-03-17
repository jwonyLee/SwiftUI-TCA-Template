#!/bin/bash

function generate_modules() {
    # Modules.swift 파일 경로
    modulesFile="Tuist/ProjectDescriptionHelpers/Modules.swift"

    # Modules 하위의 모든 폴더를 가져옵니다
    modulesDirectories=$(ls Projects/Modules)

    # Modules.swift 파일의 기본 구조를 작성합니다
    echo "import Foundation

public protocol Module: RawRepresentable<String> {
    var name: String { get }
    var rootPath: String { get }
}

extension Module {
    public var name: String { \"\(self.rawValue)\" }
    public var path: String { \"\(type(of: self))/\(name)\" }
    public var rootPath: String { \"Projects/Modules/\(path)\" }
}" > $modulesFile

    # 각 모듈 폴더에 대해 처리합니다
    for module in $modulesDirectories
    do
        # 각 모듈 폴더의 하위 폴더(즉, case들)를 가져옵니다
        moduleCases=$(ls "Projects/Modules/$module")

        # 모듈 enum 시작
        echo "
// MARK: - $module

public enum $module: String {" >> $modulesFile

        # 각 case에 대해 enum case를 추가합니다
        for case in $moduleCases
        do
            # 첫 글자를 소문자로 변환합니다
            caseModified=$(echo "$case" | awk '{print tolower(substr($0,1,1)) substr($0,2)}')

            echo "    case $caseModified = \"$case\"" >> $modulesFile
        done

        # 모듈 enum 마무리
        echo "}

extension $module: CaseIterable {}
extension $module: Module {}" >> $modulesFile
    done
}

function generate_targetDependency() {
    # TargetDependency+Modules.swift 파일 경로
    modulesFile="Tuist/ProjectDescriptionHelpers/TargetDependency+Modules.swift"

    modulesDirectories=$(ls Projects/Modules)

    echo "import ProjectDescription
" > $modulesFile

    for module in $modulesDirectories
    do
        lowercaseModuleName=$(echo "$module" | awk '{print tolower(substr($0,1,1)) substr($0,2)}')

        echo "// MARK: - $module

extension TargetDependency {
    private static func $lowercaseModuleName(target: String, module: $module) -> TargetDependency {
        .project(
            target: target,
            path: .relativeToRoot(module.rootPath)
        )
    }
    
    public static func $lowercaseModuleName(interface module: $module) -> TargetDependency {
        .$lowercaseModuleName(target: module.name + \"Interface\", module: module)
    }
    
    public static func $lowercaseModuleName(implementation module: $module) -> TargetDependency {
        .$lowercaseModuleName(target: module.name, module: module)
    }
    
    public static func $lowercaseModuleName(testing module: $module) -> TargetDependency {
        .$lowercaseModuleName(target: module.name + \"Testing\", module: module)
    }
}" >> $modulesFile
    done
}

function generate_workspace() {
    modulesFile="Workspace.swift"
    modulesDirectories=$(ls Projects/Modules)

    echo "import ProjectDescription
import ProjectDescriptionHelpers

let workspace = Workspace(
    name: \"Application\",
    projects: {
        var projects: [Path] = [
            Path(\"Projects/Application/**\"),
        ]
" > $modulesFile

    for module in $modulesDirectories
    do
    echo "        projects += $module.allCases.map {
            Path(stringLiteral: \$0.rootPath)
        }" >> $modulesFile
    done

    echo "
        return projects
    }()
)" >> $modulesFile
}

generate_modules
generate_targetDependency
generate_workspace