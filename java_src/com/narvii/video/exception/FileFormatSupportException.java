package com.narvii.video.exception;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FileFormatSupportException.kt */
/* loaded from: classes3.dex */
public final class FileFormatSupportException extends Exception {
    private String path;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileFormatSupportException(String str, String message) {
        super(message);
        Intrinsics.checkParameterIsNotNull(message, "message");
        this.path = str;
    }

    public /* synthetic */ FileFormatSupportException(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, str2);
    }

    public final String getPath() {
        return this.path;
    }

    public final void setPath(String str) {
        this.path = str;
    }
}
