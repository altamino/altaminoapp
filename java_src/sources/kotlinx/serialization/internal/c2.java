package kotlinx.serialization.internal;

import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public interface c2<T> {
    @Nullable
    KSerializer<T> a(@NotNull KClass<Object> kClass);
}
