package com.google.android.gms.internal.ads;

import android.net.Uri;

/* loaded from: classes2.dex */
final class zzqe implements zzsh {
    private final Uri uri;
    private volatile boolean zzajd;
    private final zzrv zzazi;
    private final zzqf zzbig;
    private final zzsm zzbih;
    private final /* synthetic */ zzpz zzbis;
    private long zzbiw;
    private final zznt zzbiv = new zznt();
    private boolean zzaje = true;
    private long zzcd = -1;

    public zzqe(zzpz zzpzVar, Uri uri, zzrv zzrvVar, zzqf zzqfVar, zzsm zzsmVar) {
        this.zzbis = zzpzVar;
        this.uri = (Uri) zzsk.checkNotNull(uri);
        this.zzazi = (zzrv) zzsk.checkNotNull(zzrvVar);
        this.zzbig = (zzqf) zzsk.checkNotNull(zzqfVar);
        this.zzbih = zzsmVar;
    }

    public final void zzf(long j, long j2) {
        this.zzbiv.zzahv = j;
        this.zzbiw = j2;
        this.zzaje = true;
    }

    @Override // com.google.android.gms.internal.ads.zzsh
    public final void zzfp() {
        this.zzajd = true;
    }

    @Override // com.google.android.gms.internal.ads.zzsh
    public final boolean zzfq() {
        return this.zzajd;
    }

    @Override // com.google.android.gms.internal.ads.zzsh
    public final void zzfr() throws Throwable {
        zznm zznmVar;
        int iZza = 0;
        while (iZza == 0 && !this.zzajd) {
            try {
                long position = this.zzbiv.zzahv;
                this.zzcd = this.zzazi.zza(new zzry(this.uri, position, -1L, this.zzbis.zzbid));
                if (this.zzcd != -1) {
                    this.zzcd += position;
                }
                zznmVar = new zznm(this.zzazi, position, this.zzcd);
                try {
                    zznn zznnVarZza = this.zzbig.zza(zznmVar, this.zzazi.getUri());
                    if (this.zzaje) {
                        zznnVarZza.zzd(position, this.zzbiw);
                        this.zzaje = false;
                    }
                    while (iZza == 0 && !this.zzajd) {
                        this.zzbih.block();
                        iZza = zznnVarZza.zza(zznmVar, this.zzbiv);
                        if (zznmVar.getPosition() > this.zzbis.zzbie + position) {
                            position = zznmVar.getPosition();
                            this.zzbih.zzjy();
                            this.zzbis.handler.post(this.zzbis.zzbij);
                        }
                    }
                    if (iZza == 1) {
                        iZza = 0;
                    } else {
                        this.zzbiv.zzahv = zznmVar.getPosition();
                    }
                    zzsy.zza(this.zzazi);
                } catch (Throwable th) {
                    th = th;
                    if (iZza != 1 && zznmVar != null) {
                        this.zzbiv.zzahv = zznmVar.getPosition();
                    }
                    zzsy.zza(this.zzazi);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                zznmVar = null;
            }
        }
    }
}
