package androidx.datastore.core;

import java.io.InputStream;
import java.io.OutputStream;
import kotlin.coroutines.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public interface Serializer<T> {
    T getDefaultValue();

    @Nullable
    Object readFrom(@NotNull InputStream inputStream, @NotNull d<? super T> dVar);

    @Nullable
    Object writeTo(T t5, @NotNull OutputStream outputStream, @NotNull d<? super l0> dVar);
}
