package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.Uri;
import com.google.android.exoplayer2.util.MimeTypes;

@zzard
@TargetApi(16)
/* loaded from: classes2.dex */
public final class zzbgh extends zzbgl {
    private final String mimeType;

    public zzbgh(zzbdf zzbdfVar, String str) {
        super(zzbdfVar);
        this.mimeType = null;
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    protected final int zzzw() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    protected final zzhn zzfa(String str) {
        zzjp zzjtVar = new zzjt(this.mContext, this.zzdyb);
        return new zzig(Uri.parse(str), ((Boolean) zzyt.zzpe().zzd(zzacu.zzctr)).booleanValue() ? new zzbeh(this.mContext, zzjtVar, new zzbei(this) { // from class: com.google.android.gms.internal.ads.zzbgi
            private final zzbgh zzeim;

            {
                this.zzeim = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbei
            public final void zzd(boolean z, long j) {
                this.zzeim.zzg(z, j);
            }
        }) : zzjtVar, MimeTypes.VIDEO_WEBM.equals(this.mimeType) ? new zzjg() : new zziv(), 2, ((Integer) zzyt.zzpe().zzd(zzacu.zzclw)).intValue());
    }

    final /* synthetic */ void zzg(final boolean z, final long j) {
        final zzbdf zzbdfVar = this.zzeht.get();
        if (zzbdfVar != null) {
            zzbbm.zzeae.execute(new Runnable(zzbdfVar, z, j) { // from class: com.google.android.gms.internal.ads.zzbgj
                private final boolean zzecm;
                private final long zzega;
                private final zzbdf zzein;

                {
                    this.zzein = zzbdfVar;
                    this.zzecm = z;
                    this.zzega = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzein.zza(this.zzecm, this.zzega);
                }
            });
        }
    }
}
