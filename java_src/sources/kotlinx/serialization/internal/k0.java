package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public interface k0<T> extends KSerializer<T> {

    public static final class a {
        @NotNull
        public static <T> KSerializer<?>[] a(@NotNull k0<T> k0Var) {
            return t1.EMPTY_SERIALIZER_ARRAY;
        }
    }

    @NotNull
    KSerializer<?>[] childSerializers();

    @NotNull
    KSerializer<?>[] typeParametersSerializers();
}
