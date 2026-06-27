package kotlin.jvm.internal;

import kotlin.reflect.KClass;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KProperty1;

/* loaded from: classes4.dex */
public class ReflectionFactory {
    private static final String KOTLIN_JVM_FUNCTIONS = "kotlin.jvm.functions.";

    public KFunction function(FunctionReference functionReference) {
        return functionReference;
    }

    public KMutableProperty0 mutableProperty0(MutablePropertyReference0 mutablePropertyReference0) {
        return mutablePropertyReference0;
    }

    public KProperty1 property1(PropertyReference1 propertyReference1) {
        return propertyReference1;
    }

    public KClass getOrCreateKotlinClass(Class cls) {
        return new ClassReference(cls);
    }

    public String renderLambdaToString(Lambda lambda) {
        return renderLambdaToString((FunctionBase) lambda);
    }

    public String renderLambdaToString(FunctionBase functionBase) {
        String string = functionBase.getClass().getGenericInterfaces()[0].toString();
        return string.startsWith(KOTLIN_JVM_FUNCTIONS) ? string.substring(21) : string;
    }
}
