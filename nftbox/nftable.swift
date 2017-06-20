//
//  nftable.swift
//  nftbox
//
//  Created by Dave Carlton on 6/18/17.
//  Copyright © 2017 Polymicro Systems. All rights reserved.
//

import Foundation
import Antlr4
import Sequence

class NFT {
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
        tree = try! parser.seq()
        let treeString = tree.toStringTree(parser)
        print(treeString)
    }
}
