package r7;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    @NotNull
    private static final w7.m AddSuppressedMethod$delegate = w7.o.a(a.INSTANCE);

    static final class a extends v implements e8.a<Method> {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        @Override // e8.a
        @Nullable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Method invoke() {
            try {
                return Throwable.class.getMethod("addSuppressed", Throwable.class);
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    public static final void a(@NotNull Throwable th, @NotNull Throwable other) throws IllegalAccessException, InvocationTargetException {
        t.j(th, "<this>");
        t.j(other, "other");
        Method methodB = b();
        if (methodB != null) {
            methodB.invoke(th, other);
        }
    }

    private static final Method b() {
        return (Method) AddSuppressedMethod$delegate.getValue();
    }
}
