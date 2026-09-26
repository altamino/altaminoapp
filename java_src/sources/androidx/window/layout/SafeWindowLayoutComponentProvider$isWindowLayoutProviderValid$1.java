package androidx.window.layout;

import java.lang.reflect.Method;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class SafeWindowLayoutComponentProvider$isWindowLayoutProviderValid$1 extends v implements e8.a<Boolean> {
    final /* synthetic */ ClassLoader $classLoader;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SafeWindowLayoutComponentProvider$isWindowLayoutProviderValid$1(ClassLoader classLoader) {
        super(0);
        this.$classLoader = classLoader;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke() throws NoSuchMethodException {
        SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = SafeWindowLayoutComponentProvider.INSTANCE;
        boolean z6 = false;
        Method getWindowExtensionsMethod = safeWindowLayoutComponentProvider.u(this.$classLoader).getDeclaredMethod("getWindowExtensions", new Class[0]);
        Class windowExtensionsClass = safeWindowLayoutComponentProvider.t(this.$classLoader);
        t.i(getWindowExtensionsMethod, "getWindowExtensionsMethod");
        t.i(windowExtensionsClass, "windowExtensionsClass");
        if (safeWindowLayoutComponentProvider.j(getWindowExtensionsMethod, windowExtensionsClass) && safeWindowLayoutComponentProvider.o(getWindowExtensionsMethod)) {
            z6 = true;
        }
        return Boolean.valueOf(z6);
    }
}
