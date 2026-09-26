package com.google.android.exoplayer2.trackselection;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.e4;
import com.google.android.exoplayer2.p3;
import com.google.android.exoplayer2.util.o0;

/* JADX INFO: loaded from: classes5.dex */
public final class c0 {

    @Nullable
    public final Object info;
    public final int length;
    public final p3[] rendererConfigurations;
    public final s[] selections;
    public final e4 tracks;

    @Deprecated
    public c0(p3[] p3VarArr, s[] sVarArr, @Nullable Object obj) {
        this(p3VarArr, sVarArr, e4.EMPTY, obj);
    }

    public boolean a(@Nullable c0 c0Var) {
        if (c0Var == null || c0Var.selections.length != this.selections.length) {
            return false;
        }
        for (int i10 = 0; i10 < this.selections.length; i10++) {
            if (!b(c0Var, i10)) {
                return false;
            }
        }
        return true;
    }

    public boolean b(@Nullable c0 c0Var, int i10) {
        return c0Var != null && o0.c(this.rendererConfigurations[i10], c0Var.rendererConfigurations[i10]) && o0.c(this.selections[i10], c0Var.selections[i10]);
    }

    public c0(p3[] p3VarArr, s[] sVarArr, e4 e4Var, @Nullable Object obj) {
        this.rendererConfigurations = p3VarArr;
        this.selections = (s[]) sVarArr.clone();
        this.tracks = e4Var;
        this.info = obj;
        this.length = p3VarArr.length;
    }

    public boolean c(int i10) {
        return this.rendererConfigurations[i10] != null;
    }
}
