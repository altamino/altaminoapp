package com.google.android.exoplayer2.drm;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public interface n {
    public static final int STATE_ERROR = 1;
    public static final int STATE_OPENED = 3;
    public static final int STATE_OPENED_WITH_KEYS = 4;
    public static final int STATE_OPENING = 2;
    public static final int STATE_RELEASED = 0;

    boolean a();

    @Nullable
    com.google.android.exoplayer2.decoder.b b();

    UUID c();

    boolean d(String str);

    void e(@Nullable v.a aVar);

    void f(@Nullable v.a aVar);

    @Nullable
    a getError();

    int getState();

    @Nullable
    Map<String, String> queryKeyStatus();

    public static class a extends IOException {
        public final int errorCode;

        public a(Throwable th, int i10) {
            super(th);
            this.errorCode = i10;
        }
    }
}
