package qa;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.ScriptableObject;

/* JADX INFO: loaded from: classes9.dex */
public final class c {
    public static void a(String str) {
        try {
            Context contextEnter = Context.enter();
            contextEnter.setOptimizationLevel(-1);
            contextEnter.compileString(str, (String) null, 1, (Object) null);
        } finally {
            Context.exit();
        }
    }

    public static String b(String str, String str2, String... strArr) {
        try {
            Context contextEnter = Context.enter();
            contextEnter.setOptimizationLevel(-1);
            ScriptableObject scriptableObjectInitSafeStandardObjects = contextEnter.initSafeStandardObjects();
            contextEnter.evaluateString(scriptableObjectInitSafeStandardObjects, str, str2, 1, (Object) null);
            return ((Function) scriptableObjectInitSafeStandardObjects.get(str2, scriptableObjectInitSafeStandardObjects)).call(contextEnter, scriptableObjectInitSafeStandardObjects, scriptableObjectInitSafeStandardObjects, strArr).toString();
        } finally {
            Context.exit();
        }
    }
}
