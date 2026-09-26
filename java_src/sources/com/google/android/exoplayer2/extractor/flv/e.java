package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.v2;

/* JADX INFO: loaded from: classes4.dex */
abstract class e {
    protected final e0 output;

    public static final class a extends v2 {
        public a(String str) {
            super(str, null, false, 1);
        }
    }

    protected abstract boolean b(c0 c0Var) throws v2;

    protected abstract boolean c(c0 c0Var, long j6) throws v2;

    protected e(e0 e0Var) {
        this.output = e0Var;
    }

    public final boolean a(c0 c0Var, long j6) throws v2 {
        if (b(c0Var) && c(c0Var, j6)) {
            return true;
        }
        return false;
    }
}
