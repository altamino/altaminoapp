package androidx.navigation;

import android.os.Bundle;
import androidx.navigation.NavArgs;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import kotlin.jvm.internal.t;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;

/* JADX INFO: loaded from: classes11.dex */
public final class NavArgsLazy<Args extends NavArgs> implements m<Args> {

    @NotNull
    private final e8.a<Bundle> argumentProducer;

    @Nullable
    private Args cached;

    @NotNull
    private final KClass<Args> navArgsClass;

    @Override // w7.m
    public boolean isInitialized() {
        return this.cached != null;
    }

    public NavArgsLazy(@NotNull KClass<Args> navArgsClass, @NotNull e8.a<Bundle> argumentProducer) {
        t.j(navArgsClass, "navArgsClass");
        t.j(argumentProducer, "argumentProducer");
        this.navArgsClass = navArgsClass;
        this.argumentProducer = argumentProducer;
    }

    @Override // w7.m
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Args getValue() throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        Args args = this.cached;
        if (args != null) {
            return args;
        }
        Bundle bundleInvoke = this.argumentProducer.invoke();
        Method method = NavArgsLazyKt.a().get(this.navArgsClass);
        if (method == null) {
            Class clsA = d8.a.a(this.navArgsClass);
            Class<Bundle>[] clsArrB = NavArgsLazyKt.b();
            method = clsA.getMethod("fromBundle", (Class[]) Arrays.copyOf(clsArrB, clsArrB.length));
            NavArgsLazyKt.a().put(this.navArgsClass, method);
            t.i(method, "navArgsClass.java.getMet…hod\n                    }");
        }
        Object objInvoke = method.invoke(null, bundleInvoke);
        if (objInvoke == null) {
            throw new NullPointerException("null cannot be cast to non-null type Args of androidx.navigation.NavArgsLazy");
        }
        Args args2 = (Args) objInvoke;
        this.cached = args2;
        return args2;
    }
}
