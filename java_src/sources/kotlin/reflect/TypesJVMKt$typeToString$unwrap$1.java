package kotlin.reflect;

import e8.l;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
/* synthetic */ class TypesJVMKt$typeToString$unwrap$1 extends q implements l<Class<?>, Class<?>> {
    public static final TypesJVMKt$typeToString$unwrap$1 INSTANCE = new TypesJVMKt$typeToString$unwrap$1();

    TypesJVMKt$typeToString$unwrap$1() {
        super(1, Class.class, "getComponentType", "getComponentType()Ljava/lang/Class;", 0);
    }

    @Override // e8.l
    public final Class<?> invoke(@NotNull Class<?> p0) {
        t.j(p0, "p0");
        return p0.getComponentType();
    }
}
