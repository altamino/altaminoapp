package com.google.android.exoplayer2.util;

import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class m {
    private final SparseBooleanArray flags;

    public static final class b {
        private boolean buildCalled;
        private final SparseBooleanArray flags = new SparseBooleanArray();

        public b b(m mVar) {
            for (int i10 = 0; i10 < mVar.d(); i10++) {
                a(mVar.c(i10));
            }
            return this;
        }

        public b c(int... iArr) {
            for (int i10 : iArr) {
                a(i10);
            }
            return this;
        }

        public b a(int i10) {
            com.google.android.exoplayer2.util.a.g(!this.buildCalled);
            this.flags.append(i10, true);
            return this;
        }

        public b d(int i10, boolean z6) {
            return z6 ? a(i10) : this;
        }

        public m e() {
            com.google.android.exoplayer2.util.a.g(!this.buildCalled);
            this.buildCalled = true;
            return new m(this.flags);
        }
    }

    public boolean b(int... iArr) {
        for (int i10 : iArr) {
            if (a(i10)) {
                return true;
            }
        }
        return false;
    }

    public int c(int i10) {
        com.google.android.exoplayer2.util.a.c(i10, 0, d());
        return this.flags.keyAt(i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (o0.SDK_INT >= 24) {
            return this.flags.equals(mVar.flags);
        }
        if (d() != mVar.d()) {
            return false;
        }
        for (int i10 = 0; i10 < d(); i10++) {
            if (c(i10) != mVar.c(i10)) {
                return false;
            }
        }
        return true;
    }

    private m(SparseBooleanArray sparseBooleanArray) {
        this.flags = sparseBooleanArray;
    }

    public boolean a(int i10) {
        return this.flags.get(i10);
    }

    public int d() {
        return this.flags.size();
    }

    public int hashCode() {
        if (o0.SDK_INT >= 24) {
            return this.flags.hashCode();
        }
        int iD = d();
        for (int i10 = 0; i10 < d(); i10++) {
            iD = (iD * 31) + c(i10);
        }
        return iD;
    }
}
