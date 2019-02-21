import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:source_gen/source_gen.dart';

class TestMetadata {

  const TestMetadata();

}

class TestGenerator extends GeneratorForAnnotation<TestMetadata> {
  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    return "//TestMetadata generate this";
  }

}

Builder testBuilder(BuilderOptions options) => SharedPartBuilder([TestGenerator()], "test_metadata");


