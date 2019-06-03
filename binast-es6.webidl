interface Node {
  [TypeIndicator] readonly attribute Type type;
};

typedef (Script or Module) Program;

// deferred assertions
interface AssertedDeclaredName {
  attribute IdentifierName name;
  attribute AssertedDeclaredKind kind;
  attribute boolean isCaptured;
};

interface AssertedBlockScope {
  attribute FrozenArray<AssertedDeclaredName> declaredNames;
  attribute boolean hasDirectEval;
};

// functions
interface EagerFunctionExpression : Node {
  attribute boolean isAsync;
  attribute boolean isGenerator;
  attribute BindingIdentifier? name;
  attribute unsigned long length;
  attribute FrozenArray<Directive> directives;
  attribute FunctionExpressionContents contents;
};
interface LazyFunctionExpression : Node {
  attribute boolean isAsync;
  attribute boolean isGenerator;
  attribute BindingIdentifier? name;
  attribute unsigned long length;
  attribute FrozenArray<Directive> directives;
  [Lazy] attribute FunctionExpressionContents contents;
};
