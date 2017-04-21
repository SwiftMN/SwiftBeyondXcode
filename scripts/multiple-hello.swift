#!/usr/bin/swift

import Foundation

func fail(_ msg: String) -> Never {
    print("Error: \(msg)")
    exit(1)
}

let args = CommandLine.arguments
guard args.count == 2 else {
  fail("Requires one argument")
}

guard let times = Int(args[1]) else {
  fail("Requires argument as Int")
}

for i in 0..<times {
  print("Hello SwiftMN")
}
