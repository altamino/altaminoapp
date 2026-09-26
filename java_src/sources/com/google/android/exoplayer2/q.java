package com.google.android.exoplayer2;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public final class q extends z2 {
    public static final h.a<q> CREATOR = new h.a() { // from class: com.google.android.exoplayer2.p
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            return q.e(bundle);
        }
    };
    private static final int FIELD_IS_RECOVERABLE = 1006;
    private static final int FIELD_RENDERER_FORMAT = 1004;
    private static final int FIELD_RENDERER_FORMAT_SUPPORT = 1005;
    private static final int FIELD_RENDERER_INDEX = 1003;
    private static final int FIELD_RENDERER_NAME = 1002;
    private static final int FIELD_TYPE = 1001;
    public static final int TYPE_REMOTE = 3;
    public static final int TYPE_RENDERER = 1;
    public static final int TYPE_SOURCE = 0;
    public static final int TYPE_UNEXPECTED = 2;
    final boolean isRecoverable;

    @Nullable
    public final com.google.android.exoplayer2.source.z mediaPeriodId;

    @Nullable
    public final a2 rendererFormat;
    public final int rendererFormatSupport;
    public final int rendererIndex;

    @Nullable
    public final String rendererName;
    public final int type;

    private q(int i10, Throwable th, int i11) {
        this(i10, th, null, i11, null, -1, null, 4, false);
    }

    public static /* synthetic */ q e(Bundle bundle) {
        return new q(bundle);
    }

    private q(int i10, @Nullable Throwable th, @Nullable String str, int i11, @Nullable String str2, int i12, @Nullable a2 a2Var, int i13, boolean z6) {
        this(k(i10, str, str2, i12, a2Var, i13), th, i11, i10, str2, i12, a2Var, i13, null, SystemClock.elapsedRealtime(), z6);
    }

    public static q g(Throwable th, String str, int i10, @Nullable a2 a2Var, int i11, boolean z6, int i12) {
        return new q(1, th, null, i12, str, i10, a2Var, a2Var == null ? 4 : i11, z6);
    }

    public static q h(IOException iOException, int i10) {
        return new q(0, iOException, i10);
    }

    @Deprecated
    public static q i(RuntimeException runtimeException) {
        return j(runtimeException, 1000);
    }

    public static q j(RuntimeException runtimeException, int i10) {
        return new q(2, runtimeException, i10);
    }

    private static String k(int i10, @Nullable String str, @Nullable String str2, int i11, @Nullable a2 a2Var, int i12) {
        String str3;
        if (i10 == 0) {
            str3 = "Source error";
        } else if (i10 != 1) {
            str3 = i10 != 3 ? "Unexpected runtime error" : "Remote error";
        } else {
            str3 = str2 + " error, index=" + i11 + ", format=" + a2Var + ", format_supported=" + com.google.android.exoplayer2.util.o0.R(i12);
        }
        if (TextUtils.isEmpty(str)) {
            return str3;
        }
        return str3 + ": " + str;
    }

    @CheckResult
    q f(@Nullable com.google.android.exoplayer2.source.z zVar) {
        return new q((String) com.google.android.exoplayer2.util.o0.j(getMessage()), getCause(), this.errorCode, this.type, this.rendererName, this.rendererIndex, this.rendererFormat, this.rendererFormatSupport, zVar, this.timestampMs, this.isRecoverable);
    }

    @Override // com.google.android.exoplayer2.z2, com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = super.toBundle();
        bundle.putInt(z2.d(1001), this.type);
        bundle.putString(z2.d(1002), this.rendererName);
        bundle.putInt(z2.d(1003), this.rendererIndex);
        if (this.rendererFormat != null) {
            bundle.putBundle(z2.d(1004), this.rendererFormat.toBundle());
        }
        bundle.putInt(z2.d(1005), this.rendererFormatSupport);
        bundle.putBoolean(z2.d(1006), this.isRecoverable);
        return bundle;
    }

    private q(Bundle bundle) {
        super(bundle);
        this.type = bundle.getInt(z2.d(1001), 2);
        this.rendererName = bundle.getString(z2.d(1002));
        this.rendererIndex = bundle.getInt(z2.d(1003), -1);
        Bundle bundle2 = bundle.getBundle(z2.d(1004));
        this.rendererFormat = bundle2 == null ? null : (a2) a2.CREATOR.a(bundle2);
        this.rendererFormatSupport = bundle.getInt(z2.d(1005), 4);
        this.isRecoverable = bundle.getBoolean(z2.d(1006), false);
        this.mediaPeriodId = null;
    }

    private q(String str, @Nullable Throwable th, int i10, int i11, @Nullable String str2, int i12, @Nullable a2 a2Var, int i13, @Nullable com.google.android.exoplayer2.source.z zVar, long j6, boolean z6) {
        super(str, th, i10, j6);
        com.google.android.exoplayer2.util.a.a(!z6 || i11 == 1);
        com.google.android.exoplayer2.util.a.a(th != null || i11 == 3);
        this.type = i11;
        this.rendererName = str2;
        this.rendererIndex = i12;
        this.rendererFormat = a2Var;
        this.rendererFormatSupport = i13;
        this.mediaPeriodId = zVar;
        this.isRecoverable = z6;
    }
}
