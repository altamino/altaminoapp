package io.ktor.utils.io;

import java.nio.ByteBuffer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public interface j {
    boolean c(@Nullable Throwable th);

    @Nullable
    Object d(@NotNull ByteBuffer byteBuffer, @NotNull kotlin.coroutines.d<? super l0> dVar);

    void flush();

    boolean h();

    @Nullable
    Object m(@NotNull byte[] bArr, int i10, int i11, @NotNull kotlin.coroutines.d<? super l0> dVar);

    @Nullable
    Object n(@NotNull r7.a aVar, @NotNull kotlin.coroutines.d<? super l0> dVar);
}
