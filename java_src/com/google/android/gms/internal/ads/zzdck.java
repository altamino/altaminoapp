package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public class zzdck implements zzdcc<zzdbj> {
    private static final Logger logger = Logger.getLogger(zzdck.class.getName());

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final Class<zzdbj> zzanr() {
        return zzdbj.class;
    }

    static class zza implements zzdbj {
        private final zzdca<zzdbj> zzgpw;

        private zza(zzdca<zzdbj> zzdcaVar) {
            this.zzgpw = zzdcaVar;
        }

        @Override // com.google.android.gms.internal.ads.zzdbj
        public final byte[] zzc(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            return zzdjs.zza(this.zzgpw.zzanu().zzanx(), this.zzgpw.zzanu().zzanv().zzc(bArr, bArr2));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final /* synthetic */ zzdbj zza(zzdca<zzdbj> zzdcaVar) throws GeneralSecurityException {
        return new zza(zzdcaVar);
    }
}
