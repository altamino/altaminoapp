package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
public final class zzbi {
    private long value;
    private final String zzjf;
    private boolean zzlx;
    private final /* synthetic */ zzbf zzly;
    private final long zzlz;

    public zzbi(zzbf zzbfVar, String str, long j) {
        this.zzly = zzbfVar;
        Preconditions.checkNotEmpty(str);
        this.zzjf = str;
        this.zzlz = j;
    }

    public final long get() {
        if (!this.zzlx) {
            this.zzlx = true;
            this.value = this.zzly.zzdr().getLong(this.zzjf, this.zzlz);
        }
        return this.value;
    }

    public final void set(long j) {
        SharedPreferences.Editor editorEdit = this.zzly.zzdr().edit();
        editorEdit.putLong(this.zzjf, j);
        editorEdit.apply();
        this.value = j;
    }
}
