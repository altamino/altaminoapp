package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzav implements Runnable {
    private final /* synthetic */ int zzka;
    private final /* synthetic */ String zzkb;
    private final /* synthetic */ Object zzkc;
    private final /* synthetic */ Object zzkd;
    private final /* synthetic */ Object zzke;
    private final /* synthetic */ zzau zzkf;

    zzav(zzau zzauVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.zzkf = zzauVar;
        this.zzka = i;
        this.zzkb = str;
        this.zzkc = obj;
        this.zzkd = obj2;
        this.zzke = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbf zzbfVarZzae = this.zzkf.zzl.zzae();
        if (!zzbfVarZzae.isInitialized()) {
            this.zzkf.zza(6, "Persisted config not initialized. Not logging error/warn");
            return;
        }
        if (this.zzkf.zzjp == 0) {
            if (this.zzkf.zzaf().zzbp()) {
                zzau zzauVar = this.zzkf;
                zzauVar.zzag();
                zzauVar.zzjp = 'C';
            } else {
                zzau zzauVar2 = this.zzkf;
                zzauVar2.zzag();
                zzauVar2.zzjp = 'c';
            }
        }
        if (this.zzkf.zzt < 0) {
            zzau zzauVar3 = this.zzkf;
            zzauVar3.zzt = zzauVar3.zzaf().zzav();
        }
        char cCharAt = "01VDIWEA?".charAt(this.zzka);
        char c = this.zzkf.zzjp;
        long j = this.zzkf.zzt;
        String strZza = zzau.zza(true, this.zzkb, this.zzkc, this.zzkd, this.zzke);
        StringBuilder sb = new StringBuilder(String.valueOf(strZza).length() + 24);
        sb.append("2");
        sb.append(cCharAt);
        sb.append(c);
        sb.append(j);
        sb.append(":");
        sb.append(strZza);
        String string = sb.toString();
        if (string.length() > 1024) {
            string = this.zzkb.substring(0, 1024);
        }
        zzbfVarZzae.zzla.zzc(string, 1L);
    }
}
