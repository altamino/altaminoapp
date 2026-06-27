package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzaza extends zzr<zzp> {
    private final Map<String, String> zzab;
    private final zzbbr<zzp> zzdxo;
    private final zzazx zzdxp;

    public zzaza(String str, zzbbr<zzp> zzbbrVar) {
        this(str, null, zzbbrVar);
    }

    private zzaza(String str, Map<String, String> map, zzbbr<zzp> zzbbrVar) throws IOException {
        super(0, str, new zzazb(zzbbrVar));
        this.zzab = null;
        this.zzdxo = zzbbrVar;
        this.zzdxp = new zzazx();
        this.zzdxp.zza(str, "GET", null, null);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.internal.ads.zzr
    protected final zzy<zzp> zza(zzp zzpVar) {
        return zzy.zza(zzpVar, zzaq.zzb(zzpVar));
    }

    @Override // com.google.android.gms.internal.ads.zzr
    protected final /* synthetic */ void zza(zzp zzpVar) throws IOException {
        zzp zzpVar2 = zzpVar;
        this.zzdxp.zza(zzpVar2.zzab, zzpVar2.statusCode);
        zzazx zzazxVar = this.zzdxp;
        byte[] bArr = zzpVar2.data;
        if (zzazx.isEnabled() && bArr != null) {
            zzazxVar.zzj(bArr);
        }
        this.zzdxo.set(zzpVar2);
    }
}
