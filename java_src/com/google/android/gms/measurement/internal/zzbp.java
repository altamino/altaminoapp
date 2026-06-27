package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzbp implements Runnable {
    private final /* synthetic */ zzby zzmk;
    private final /* synthetic */ zzau zzml;

    zzbp(zzbo zzboVar, zzby zzbyVar, zzau zzauVar) {
        this.zzmk = zzbyVar;
        this.zzml = zzauVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        if (this.zzmk.zzej() == null) {
            this.zzml.zzda().zzaq("Install Referrer Reporter is null");
            return;
        }
        zzbl zzblVarZzej = this.zzmk.zzej();
        zzblVarZzej.zzl.zzo();
        zzblVarZzej.zzaw(zzblVarZzej.zzl.getContext().getPackageName());
    }
}
