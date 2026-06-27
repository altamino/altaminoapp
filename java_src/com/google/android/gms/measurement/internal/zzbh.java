package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
public final class zzbh {
    private boolean value;
    private final String zzjf;
    private final boolean zzlw;
    private boolean zzlx;
    private final /* synthetic */ zzbf zzly;

    public zzbh(zzbf zzbfVar, String str, boolean z) {
        this.zzly = zzbfVar;
        Preconditions.checkNotEmpty(str);
        this.zzjf = str;
        this.zzlw = z;
    }

    public final boolean get() {
        if (!this.zzlx) {
            this.zzlx = true;
            this.value = this.zzly.zzdr().getBoolean(this.zzjf, this.zzlw);
        }
        return this.value;
    }

    public final void set(boolean z) {
        SharedPreferences.Editor editorEdit = this.zzly.zzdr().edit();
        editorEdit.putBoolean(this.zzjf, z);
        editorEdit.apply();
        this.value = z;
    }
}
