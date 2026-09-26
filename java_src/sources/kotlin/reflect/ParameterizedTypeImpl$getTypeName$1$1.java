package kotlin.reflect;

import e8.l;
import java.lang.reflect.Type;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
/* synthetic */ class ParameterizedTypeImpl$getTypeName$1$1 extends q implements l<Type, String> {
    public static final ParameterizedTypeImpl$getTypeName$1$1 INSTANCE = new ParameterizedTypeImpl$getTypeName$1$1();

    ParameterizedTypeImpl$getTypeName$1$1() {
        super(1, TypesJVMKt.class, "typeToString", "typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;", 1);
    }

    @Override // e8.l
    @NotNull
    public final String invoke(@NotNull Type p0) {
        t.j(p0, "p0");
        return TypesJVMKt.typeToString(p0);
    }
}
