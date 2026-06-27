package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzdb implements Runnable {
    private final /* synthetic */ zzda zzvi;

    zzdb(zzda zzdaVar) {
        this.zzvi = zzdaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zBooleanValue;
        if (this.zzvi.zzvg != null) {
            return;
        }
        synchronized (zzda.zzve) {
            if (this.zzvi.zzvg != null) {
                return;
            }
            boolean z = false;
            try {
                zBooleanValue = ((Boolean) zzyt.zzpe().zzd(zzacu.zzcrb)).booleanValue();
            } catch (IllegalStateException unused) {
                zBooleanValue = false;
            }
            if (zBooleanValue) {
                try {
                    zzda.zzvf = new zzwo(this.zzvi.zzvd.zzlj, "ADSHIELD", null);
                    z = zBooleanValue;
                } catch (Throwable unused2) {
                }
            } else {
                z = zBooleanValue;
            }
            this.zzvi.zzvg = Boolean.valueOf(z);
            zzda.zzve.open();
        }
    }
}
