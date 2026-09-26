package com.narvii.video.exception;

import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class FileFormatSupportException extends Exception {

    @Nullable
    private String path;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileFormatSupportException(@Nullable String str, @NotNull String message) {
        super(message);
        t.j(message, "message");
        this.path = str;
    }

    @Nullable
    public final String getPath() {
        return this.path;
    }

    public final void setPath(@Nullable String str) {
        this.path = str;
    }

    public /* synthetic */ FileFormatSupportException(String str, String str2, int i10, k kVar) {
        this((i10 & 1) != 0 ? null : str, str2);
    }
}
