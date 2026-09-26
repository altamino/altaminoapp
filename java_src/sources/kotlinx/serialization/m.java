package kotlinx.serialization;

import java.util.List;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class m {
    @Nullable
    public static final KSerializer<? extends Object> a(@NotNull KClass<Object> kClass, @NotNull List<? extends KType> list, @NotNull List<? extends KSerializer<Object>> list2) {
        return n.d(kClass, list, list2);
    }

    @NotNull
    public static final KSerializer<Object> b(@NotNull kotlinx.serialization.modules.c cVar, @NotNull KType kType) {
        return n.e(cVar, kType);
    }

    @Nullable
    public static final <T> KSerializer<T> c(@NotNull KClass<T> kClass) {
        return n.g(kClass);
    }

    @Nullable
    public static final KSerializer<Object> d(@NotNull kotlinx.serialization.modules.c cVar, @NotNull KType kType) {
        return n.h(cVar, kType);
    }

    @Nullable
    public static final List<KSerializer<Object>> e(@NotNull kotlinx.serialization.modules.c cVar, @NotNull List<? extends KType> list, boolean z6) {
        return n.i(cVar, list, z6);
    }
}
