package kotlinx.serialization.internal;

import java.util.Iterator;
import java.util.Map;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class y1 {

    @NotNull
    private static final Map<KClass<? extends Object>, KSerializer<? extends Object>> BUILTIN_SERIALIZERS = kotlin.collections.s0.l(w7.a0.a(kotlin.jvm.internal.q0.b(String.class), m8.a.C(kotlin.jvm.internal.u0.INSTANCE)), w7.a0.a(kotlin.jvm.internal.q0.b(Character.TYPE), m8.a.w(kotlin.jvm.internal.g.INSTANCE)), w7.a0.a(kotlin.jvm.internal.q0.b(char[].class), m8.a.d()), w7.a0.a(kotlin.jvm.internal.q0.b(Double.TYPE), m8.a.x(kotlin.jvm.internal.l.INSTANCE)), w7.a0.a(kotlin.jvm.internal.q0.b(double[].class), m8.a.e()), w7.a0.a(kotlin.jvm.internal.q0.b(Float.TYPE), m8.a.y(kotlin.jvm.internal.m.INSTANCE)), w7.a0.a(kotlin.jvm.internal.q0.b(float[].class), m8.a.f()), w7.a0.a(kotlin.jvm.internal.q0.b(Long.TYPE), m8.a.A(kotlin.jvm.internal.w.INSTANCE)), w7.a0.a(kotlin.jvm.internal.q0.b(long[].class), m8.a.i()), w7.a0.a(kotlin.jvm.internal.q0.b(w7.f0.class), m8.a.F(w7.f0.Companion)), w7.a0.a(kotlin.jvm.internal.q0.b(w7.g0.class), m8.a.q()), w7.a0.a(kotlin.jvm.internal.q0.b(Integer.TYPE), m8.a.z(kotlin.jvm.internal.s.INSTANCE)), w7.a0.a(kotlin.jvm.internal.q0.b(int[].class), m8.a.g()), w7.a0.a(kotlin.jvm.internal.q0.b(w7.d0.class), m8.a.E(w7.d0.Companion)), w7.a0.a(kotlin.jvm.internal.q0.b(w7.e0.class), m8.a.p()), w7.a0.a(kotlin.jvm.internal.q0.b(Short.TYPE), m8.a.B(kotlin.jvm.internal.s0.INSTANCE)), w7.a0.a(kotlin.jvm.internal.q0.b(short[].class), m8.a.m()), w7.a0.a(kotlin.jvm.internal.q0.b(w7.i0.class), m8.a.G(w7.i0.Companion)), w7.a0.a(kotlin.jvm.internal.q0.b(w7.j0.class), m8.a.r()), w7.a0.a(kotlin.jvm.internal.q0.b(Byte.TYPE), m8.a.v(kotlin.jvm.internal.e.INSTANCE)), w7.a0.a(kotlin.jvm.internal.q0.b(byte[].class), m8.a.c()), w7.a0.a(kotlin.jvm.internal.q0.b(w7.b0.class), m8.a.D(w7.b0.Companion)), w7.a0.a(kotlin.jvm.internal.q0.b(w7.c0.class), m8.a.o()), w7.a0.a(kotlin.jvm.internal.q0.b(Boolean.TYPE), m8.a.u(kotlin.jvm.internal.d.INSTANCE)), w7.a0.a(kotlin.jvm.internal.q0.b(boolean[].class), m8.a.b()), w7.a0.a(kotlin.jvm.internal.q0.b(w7.l0.class), m8.a.H(w7.l0.INSTANCE)), w7.a0.a(kotlin.jvm.internal.q0.b(k8.b.class), m8.a.t(k8.b.Companion)));

    @NotNull
    public static final SerialDescriptor a(@NotNull String serialName, @NotNull kotlinx.serialization.descriptors.e kind) {
        kotlin.jvm.internal.t.j(serialName, "serialName");
        kotlin.jvm.internal.t.j(kind, "kind");
        d(serialName);
        return new x1(serialName, kind);
    }

    @Nullable
    public static final <T> KSerializer<T> b(@NotNull KClass<T> kClass) {
        kotlin.jvm.internal.t.j(kClass, "<this>");
        return (KSerializer) BUILTIN_SERIALIZERS.get(kClass);
    }

    private static final void d(String str) {
        Iterator<KClass<? extends Object>> it = BUILTIN_SERIALIZERS.keySet().iterator();
        while (it.hasNext()) {
            String simpleName = it.next().getSimpleName();
            kotlin.jvm.internal.t.g(simpleName);
            String strC = c(simpleName);
            if (kotlin.text.t.w(str, "kotlin." + strC, true) || kotlin.text.t.w(str, strC, true)) {
                throw new IllegalArgumentException(kotlin.text.m.f("\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name " + str + " there already exist " + c(strC) + "Serializer.\n                Please refer to SerialDescriptor documentation for additional information.\n            "));
            }
        }
    }

    private static final String c(String str) {
        String strValueOf;
        if (str.length() > 0) {
            StringBuilder sb = new StringBuilder();
            char cCharAt = str.charAt(0);
            if (Character.isLowerCase(cCharAt)) {
                strValueOf = kotlin.text.c.j(cCharAt);
            } else {
                strValueOf = String.valueOf(cCharAt);
            }
            sb.append((Object) strValueOf);
            String strSubstring = str.substring(1);
            kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String).substring(startIndex)");
            sb.append(strSubstring);
            return sb.toString();
        }
        return str;
    }
}
