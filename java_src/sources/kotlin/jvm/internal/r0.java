package kotlin.jvm.internal;

import java.util.List;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KProperty0;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KProperty2;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;

/* JADX INFO: loaded from: classes11.dex */
public class r0 {
    private static final String KOTLIN_JVM_FUNCTIONS = "kotlin.jvm.functions.";

    public KFunction a(p pVar) {
        return pVar;
    }

    public KMutableProperty0 d(x xVar) {
        return xVar;
    }

    public KMutableProperty1 e(z zVar) {
        return zVar;
    }

    public KProperty0 f(d0 d0Var) {
        return d0Var;
    }

    public KProperty1 g(f0 f0Var) {
        return f0Var;
    }

    public KProperty2 h(h0 h0Var) {
        return h0Var;
    }

    public KClass b(Class cls) {
        return new i(cls);
    }

    public KDeclarationContainer c(Class cls, String str) {
        return new c0(cls, str);
    }

    public KType k(KClassifier kClassifier, List<KTypeProjection> list, boolean z6) {
        return new w0(kClassifier, list, z6);
    }

    public String i(o oVar) {
        String string = oVar.getClass().getGenericInterfaces()[0].toString();
        if (string.startsWith(KOTLIN_JVM_FUNCTIONS)) {
            return string.substring(21);
        }
        return string;
    }

    public String j(v vVar) {
        return i(vVar);
    }
}
