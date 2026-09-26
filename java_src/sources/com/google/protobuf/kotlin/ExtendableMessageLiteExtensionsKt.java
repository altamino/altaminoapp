package com.google.protobuf.kotlin;

import com.google.protobuf.ExtensionLite;
import com.google.protobuf.GeneratedMessageLite;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class ExtendableMessageLiteExtensionsKt {
    public static final <M extends GeneratedMessageLite.ExtendableMessage<M, ?>, MorBT extends GeneratedMessageLite.ExtendableMessageOrBuilder<M, ?>> boolean contains(@NotNull MorBT morbt, @NotNull ExtensionLite<M, ?> extension) {
        t.j(morbt, "<this>");
        t.j(extension, "extension");
        return morbt.hasExtension(extension);
    }

    @NotNull
    public static final <M extends GeneratedMessageLite.ExtendableMessage<M, ?>, MOrBT extends GeneratedMessageLite.ExtendableMessageOrBuilder<M, ?>, T> T get(@NotNull MOrBT morbt, @NotNull ExtensionLite<M, T> extension) {
        t.j(morbt, "<this>");
        t.j(extension, "extension");
        T t5 = (T) morbt.getExtension(extension);
        t.i(t5, "getExtension(extension)");
        return t5;
    }

    public static final <M extends GeneratedMessageLite.ExtendableMessage<M, B>, B extends GeneratedMessageLite.ExtendableBuilder<M, B>, T> void set(@NotNull B b7, @NotNull ExtensionLite<M, T> extension, @NotNull T value) {
        t.j(b7, "<this>");
        t.j(extension, "extension");
        t.j(value, "value");
        b7.setExtension(extension, value);
    }
}
