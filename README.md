# SwiftUI-TCA-Template

tuist based iOS Project with SwiftUI, TCA

## To-Do

- [ ] Dependency
- [x] Feature stencil 추가
- [x] Module stencil 추가
- [ ] 하위 모듈 구성하기

## Get Started

Install dependencies
```
tuist install
```

Project Generate
```
tuist generate
```

Edit Structure
```
tuist edit
```

### ProjectConfiguration

- Constants for project configuration are located in `Tuist/ProjectDescriptionHelpers/ProjectConfiguration.swift`
- **Some are not included, but should be fixed.**

## Add Module

```important
Do not Use tuist scaffold directly. Because it contains script execution to update project related files in Makefile.
```

```sh
make module type={type} name={name}
```

### Make Core Module

```sh
make module type=Core name=Network
```

### Make Feature Module

```sh
make module type=Feature name=Login
```

## Reference

- [Tuist 를 활용해 확장 가능한 모듈 구조 만들기](https://medium.com/daangn/tuist-%EB%A5%BC-%ED%99%9C%EC%9A%A9%ED%95%B4-%EB%AA%A8%EB%93%88-%EA%B5%AC%EC%A1%B0-%EC%9E%90%EB%8F%99%ED%99%94%ED%95%98%EA%B8%B0-f200992d4bf2)
- [Tuist 도입부터 적용까지 알려ZUM요! (feat. 모듈화)](https://zuminternet.github.io/iOS-tuist-module/)
