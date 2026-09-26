package kotlinx.serialization.modules;

import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class c {
    public /* synthetic */ c(k kVar) {
        this();
    }

    public abstract void a(@NotNull e eVar);

    @Nullable
    public abstract <T> KSerializer<T> b(@NotNull KClass<T> kClass, @NotNull List<? extends KSerializer<?>> list);

    @Nullable
    public abstract <T> kotlinx.serialization.b<? extends T> d(@NotNull KClass<? super T> kClass, @Nullable String str);

    @Nullable
    public abstract <T> kotlinx.serialization.k<T> e(@NotNull KClass<? super T> kClass, @NotNull T t5);

    private c() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ KSerializer c(c cVar, KClass kClass, List list, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getContextual");
        }
        if ((i10 & 2) != 0) {
            list = v.m();
        }
        return cVar.b(kClass, list);
    }
}
