package com.bumptech.glide.load;

import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class e extends IOException {
    public static final int UNKNOWN = -1;
    private static final long serialVersionUID = 1;
    private final int statusCode;

    public e(int i10) {
        this("Http request failed with status code: " + i10, i10);
    }

    public e(String str) {
        this(str, -1);
    }

    public e(String str, int i10) {
        this(str, i10, null);
    }

    public e(String str, int i10, @Nullable Throwable th) {
        super(str, th);
        this.statusCode = i10;
    }
}
