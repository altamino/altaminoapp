package u7;

import kotlin.jvm.internal.t;
import kotlin.text.s;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class a {
    public static final int a(@NotNull String name, int i10) {
        String property;
        Integer numM;
        t.j(name, "name");
        try {
            property = System.getProperty("io.ktor.utils.io." + name);
        } catch (SecurityException unused) {
            property = null;
        }
        return (property == null || (numM = s.m(property)) == null) ? i10 : numM.intValue();
    }
}
