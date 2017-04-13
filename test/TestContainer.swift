//  TestContainer
//
//  Created by Chotaro Iwasaki on 2016/12/13.
//
import Foundation
import Swinject

/* DIコンテナクラス。*/
class TestContainer {
    /* シングルトン */
    class var sharedContainer: Container {
        struct Static {
            static let instance = TestContainer()
        }
        return Static.instance.container
    }
    /* DIコンテナ */
    private let container = Container()
    private init () {
        container.register(SampleProtocol.self) {_
            in Taro()
        }
    }
}
