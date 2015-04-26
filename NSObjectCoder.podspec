Pod::Spec.new do |spec|

    spec.name              = 'NSObjectCoder'
    spec.version           = '1.0'
    spec.summary           = 'NSObjectCoder is an efficient library that automatically encodes and decodes all attributes of NSObject instance.'
    spec.homepage          = 'https://github.com/Eric-LeiYang/NSObjectCoder'
    spec.license           = {:type => 'MIT'}
    s.author               = {'Eric-LeiYang' => 'yanglei.eric@gmail.com'}
    s.source               = {:git => 'https://github.com/Eric-LeiYang/NSObjectCoder.git',:tag => s.version.to_s}
    s.source_files         = 'NSObjectCoder.{h,m}'
    s.requires_arc         = true

end