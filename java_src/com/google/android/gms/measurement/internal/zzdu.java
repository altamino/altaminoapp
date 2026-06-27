package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzdu implements Runnable {
    private final /* synthetic */ boolean zzaz;
    private final /* synthetic */ zzdd zzpm;

    zzdu(zzdd zzddVar, boolean z) {
        this.zzpm = zzddVar;
        this.zzaz = z;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        boolean zIsEnabled = this.zzpm.zzl.isEnabled();
        boolean zZzeq = this.zzpm.zzl.zzeq();
        this.zzpm.zzl.zza(this.zzaz);
        if (zZzeq == this.zzaz) {
            this.zzpm.zzl.zzad().zzdi().zza("Default data collection state already set to", Boolean.valueOf(this.zzaz));
        }
        if (this.zzpm.zzl.isEnabled() == zIsEnabled || this.zzpm.zzl.isEnabled() != this.zzpm.zzl.zzeq()) {
            this.zzpm.zzl.zzad().zzdf().zza("Default data collection is different than actual status", Boolean.valueOf(this.zzaz), Boolean.valueOf(zIsEnabled));
        }
        this.zzpm.zzfa();
    }
}
