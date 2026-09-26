package com.google.android.exoplayer2.trackselection;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.f1;

/* JADX INFO: loaded from: classes9.dex */
public final class t extends c {

    @Nullable
    private final Object data;
    private final int reason;

    public t(f1 f1Var, int i10) {
        this(f1Var, i10, 0);
    }

    @Override // com.google.android.exoplayer2.trackselection.s
    public int getSelectedIndex() {
        return 0;
    }

    public t(f1 f1Var, int i10, int i11) {
        this(f1Var, i10, i11, 0, null);
    }

    public t(f1 f1Var, int i10, int i11, int i12, @Nullable Object obj) {
        super(f1Var, new int[]{i10}, i11);
        this.reason = i12;
        this.data = obj;
    }
}
