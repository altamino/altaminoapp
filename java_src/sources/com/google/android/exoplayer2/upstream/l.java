package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public class l extends IOException {

    @Deprecated
    public static final int POSITION_OUT_OF_RANGE = 2008;
    public final int reason;

    public l(int i10) {
        this.reason = i10;
    }

    public l(@Nullable Throwable th, int i10) {
        super(th);
        this.reason = i10;
    }

    public static boolean a(IOException iOException) {
        for (Throwable cause = iOException; cause != null; cause = cause.getCause()) {
            if ((cause instanceof l) && ((l) cause).reason == 2008) {
                return true;
            }
        }
        return false;
    }

    public l(@Nullable String str, int i10) {
        super(str);
        this.reason = i10;
    }

    public l(@Nullable String str, @Nullable Throwable th, int i10) {
        super(str, th);
        this.reason = i10;
    }
}
