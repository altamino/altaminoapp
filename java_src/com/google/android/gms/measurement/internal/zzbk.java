package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
public final class zzbk {
    private String value;
    private final String zzjf;
    private boolean zzlx;
    private final /* synthetic */ zzbf zzly;
    private final String zzme;

    public zzbk(zzbf zzbfVar, String str, String str2) {
        this.zzly = zzbfVar;
        Preconditions.checkNotEmpty(str);
        this.zzjf = str;
        this.zzme = null;
    }

    public final String zzed() {
        if (!this.zzlx) {
            this.zzlx = true;
            this.value = this.zzly.zzdr().getString(this.zzjf, null);
        }
        return this.value;
    }

    public final void zzav(String str) {
        if (zzgd.zzs(str, this.value)) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.zzly.zzdr().edit();
        editorEdit.putString(this.zzjf, str);
        editorEdit.apply();
        this.value = str;
    }
}
