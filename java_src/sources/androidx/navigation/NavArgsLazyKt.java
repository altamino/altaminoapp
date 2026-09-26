package androidx.navigation;

import android.os.Bundle;
import androidx.collection.ArrayMap;
import java.lang.reflect.Method;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class NavArgsLazyKt {

    @NotNull
    private static final Class<Bundle>[] methodSignature = {Bundle.class};

    @NotNull
    private static final ArrayMap<KClass<? extends NavArgs>, Method> methodMap = new ArrayMap<>();

    @NotNull
    public static final ArrayMap<KClass<? extends NavArgs>, Method> a() {
        return methodMap;
    }

    @NotNull
    public static final Class<Bundle>[] b() {
        return methodSignature;
    }
}
