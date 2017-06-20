//: A MapKit based Playground

import MapKit
import PlaygroundSupport
import Antlr4
import Sequence

enum NFFamily {
    case ip, ip6, inet, arp, bridge, netdev
}

enum NFHook {
    case ingress, prerouting, input, forward, output, postrouting
}

class NFTable {
    var name: String?
    var family: NFFamily?
}

class NFChain {
    var name: String?
    var family: NFFamily?
    var hook: NFHook?
    var priority: Int?
    var device: String?
}

class NFRule {
    var name: String?
    var family: NFFamily?
    var chain: NFChain?
    var position: Int?
    var satement: String?
}

enum TCPFlag: Int {
    case fin = 0x01
    case syn = 0x02
    case rst = 0x04
    case psh = 0x08
    case ack = 0x10
    case urg = 0x20
    case ecn = 0x40
    case cwr = 0x80
}

class test {
    let input: ANTLRInputStream
    let lexer: SequenceLexer
    let tokens: CommonTokenStream
    let parser: SequenceParser
    var tree: ParseTree

    func sin() -> Data {
        let standardInput = FileHandle.standardInput
        let input = standardInput.availableData
        return input
    }
    
    init() {
        input = ANTLRInputStream("{99, 3, 451}")
        lexer = SequenceLexer(input)
        tokens = CommonTokenStream(lexer)
        parser = try! SequenceParser.init(tokens)
        tree = try? parser.seq()
    }
}

var t = test()
t.tree



