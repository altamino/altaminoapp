package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzayx extends zzax {
    private final /* synthetic */ byte[] zzdxl;
    private final /* synthetic */ Map zzdxm;
    private final /* synthetic */ zzazx zzdxn;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzayx(zzayu zzayuVar, int i, String str, zzaa zzaaVar, zzz zzzVar, byte[] bArr, Map map, zzazx zzazxVar) {
        super(i, str, zzaaVar, zzzVar);
        this.zzdxl = bArr;
        this.zzdxm = map;
        this.zzdxn = zzazxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzr
    public final byte[] zzg() throws zza {
        byte[] bArr = this.zzdxl;
        return bArr == null ? super.zzg() : bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzr
    public final Map<String, String> getHeaders() throws zza {
        Map<String, String> map = this.zzdxm;
        return map == null ? super.getHeaders() : map;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzax, com.google.android.gms.internal.ads.zzr
    /* renamed from: zzh */
    public final void zza(String str) throws IOException {
        this.zzdxn.zzek(str);
        super.zza(str);
    }
}
