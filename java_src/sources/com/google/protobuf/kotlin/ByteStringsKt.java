package com.google.protobuf.kotlin;

import com.google.protobuf.ByteString;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class ByteStringsKt {
    @NotNull
    public static final ByteString toByteString(@NotNull byte[] bArr) {
        t.j(bArr, "<this>");
        ByteString byteStringCopyFrom = ByteString.copyFrom(bArr);
        t.i(byteStringCopyFrom, "copyFrom(this)");
        return byteStringCopyFrom;
    }

    public static final byte get(@NotNull ByteString byteString, int i10) {
        t.j(byteString, "<this>");
        return byteString.byteAt(i10);
    }

    @NotNull
    public static final ByteString plus(@NotNull ByteString byteString, @NotNull ByteString other) {
        t.j(byteString, "<this>");
        t.j(other, "other");
        ByteString byteStringConcat = byteString.concat(other);
        t.i(byteStringConcat, "concat(other)");
        return byteStringConcat;
    }

    @NotNull
    public static final ByteString toByteString(@NotNull ByteBuffer byteBuffer) {
        t.j(byteBuffer, "<this>");
        ByteString byteStringCopyFrom = ByteString.copyFrom(byteBuffer);
        t.i(byteStringCopyFrom, "copyFrom(this)");
        return byteStringCopyFrom;
    }

    @NotNull
    public static final ByteString toByteStringUtf8(@NotNull String str) {
        t.j(str, "<this>");
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8(str);
        t.i(byteStringCopyFromUtf8, "copyFromUtf8(this)");
        return byteStringCopyFromUtf8;
    }
}
