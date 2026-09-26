package androidx.window.layout;

import android.graphics.Rect;
import java.lang.reflect.Method;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1 extends v implements e8.a<Boolean> {
    final /* synthetic */ ClassLoader $classLoader;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1(ClassLoader classLoader) {
        super(0);
        this.$classLoader = classLoader;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke() throws NoSuchMethodException {
        SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = SafeWindowLayoutComponentProvider.INSTANCE;
        Class clsL = safeWindowLayoutComponentProvider.l(this.$classLoader);
        boolean z6 = false;
        Method getBoundsMethod = clsL.getMethod("getBounds", new Class[0]);
        Method getTypeMethod = clsL.getMethod("getType", new Class[0]);
        Method getStateMethod = clsL.getMethod("getState", new Class[0]);
        t.i(getBoundsMethod, "getBoundsMethod");
        if (safeWindowLayoutComponentProvider.k(getBoundsMethod, q0.b(Rect.class)) && safeWindowLayoutComponentProvider.o(getBoundsMethod)) {
            t.i(getTypeMethod, "getTypeMethod");
            Class cls = Integer.TYPE;
            if (safeWindowLayoutComponentProvider.k(getTypeMethod, q0.b(cls)) && safeWindowLayoutComponentProvider.o(getTypeMethod)) {
                t.i(getStateMethod, "getStateMethod");
                if (safeWindowLayoutComponentProvider.k(getStateMethod, q0.b(cls)) && safeWindowLayoutComponentProvider.o(getStateMethod)) {
                    z6 = true;
                }
            }
        }
        return Boolean.valueOf(z6);
    }
}
