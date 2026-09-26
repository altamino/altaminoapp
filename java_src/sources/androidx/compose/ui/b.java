package androidx.compose.ui;

import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final /* synthetic */ class b {
    public static boolean a(Modifier.Element element, @NotNull l predicate) {
        t.j(predicate, "predicate");
        return ((Boolean) predicate.invoke(element)).booleanValue();
    }

    public static Object b(Modifier.Element element, Object obj, @NotNull p operation) {
        t.j(operation, "operation");
        return operation.invoke(obj, element);
    }

    public static Object c(Modifier.Element element, Object obj, @NotNull p operation) {
        t.j(operation, "operation");
        return operation.invoke(element, obj);
    }
}
