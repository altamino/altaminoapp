package o7;

import java.lang.reflect.Type;
import kotlin.jvm.internal.t;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class b {
    public static final boolean a(@NotNull Object obj, @NotNull KClass<?> type) {
        t.j(obj, "<this>");
        t.j(type, "type");
        return d8.a.a(type).isInstance(obj);
    }

    @NotNull
    public static final a b(@NotNull Type reifiedType, @NotNull KClass<?> kClass, @Nullable KType kType) {
        t.j(reifiedType, "reifiedType");
        t.j(kClass, "kClass");
        return new a(kClass, reifiedType, kType);
    }
}
