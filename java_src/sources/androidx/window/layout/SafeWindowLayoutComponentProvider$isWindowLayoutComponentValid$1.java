package androidx.window.layout;

import android.app.Activity;
import java.lang.reflect.Method;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class SafeWindowLayoutComponentProvider$isWindowLayoutComponentValid$1 extends v implements e8.a<Boolean> {
    final /* synthetic */ ClassLoader $classLoader;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SafeWindowLayoutComponentProvider$isWindowLayoutComponentValid$1(ClassLoader classLoader) {
        super(0);
        this.$classLoader = classLoader;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke() throws NoSuchMethodException {
        SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = SafeWindowLayoutComponentProvider.INSTANCE;
        Class clsV = safeWindowLayoutComponentProvider.v(this.$classLoader);
        boolean z6 = false;
        Method addListenerMethod = clsV.getMethod("addWindowLayoutInfoListener", Activity.class, e.a());
        Method removeListenerMethod = clsV.getMethod("removeWindowLayoutInfoListener", e.a());
        t.i(addListenerMethod, "addListenerMethod");
        if (safeWindowLayoutComponentProvider.o(addListenerMethod)) {
            t.i(removeListenerMethod, "removeListenerMethod");
            if (safeWindowLayoutComponentProvider.o(removeListenerMethod)) {
                z6 = true;
            }
        }
        return Boolean.valueOf(z6);
    }
}
