package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class zzdde implements zzdcc<zzdbp> {
    private static final Logger logger = Logger.getLogger(zzdde.class.getName());

    static class zza implements zzdbp {
        private final zzdca<zzdbp> zzgqa;

        public zza(zzdca<zzdbp> zzdcaVar) {
            this.zzgqa = zzdcaVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final Class<zzdbp> zzanr() {
        return zzdbp.class;
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final /* synthetic */ zzdbp zza(zzdca<zzdbp> zzdcaVar) throws GeneralSecurityException {
        return new zza(zzdcaVar);
    }
}
