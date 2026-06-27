package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzciu implements zzczc<zzciv, zzciw> {
    private final String zzdmi;
    private final zzasm zzfxl;
    private final String zzfxz;
    private final Context zzlj;

    public zzciu(Context context, String str, zzasm zzasmVar, String str2) {
        this.zzlj = context;
        this.zzfxz = str;
        this.zzfxl = zzasmVar;
        this.zzdmi = str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x0218, code lost:
    
        r2 = new java.lang.StringBuilder(46);
        r2.append("Received error HTTP response code: ");
        r2.append(r12);
        com.google.android.gms.internal.ads.zzbad.zzep(r2.toString());
        r4 = new java.lang.StringBuilder(46);
        r4.append("Received error HTTP response code: ");
        r4.append(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0240, code lost:
    
        throw new com.google.android.gms.internal.ads.zzcif(r4.toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.ads.zzciw zza(java.lang.String r21, com.google.android.gms.internal.ads.zzasd r22, org.json.JSONObject r23, java.lang.String r24) throws com.google.android.gms.internal.ads.zzcif {
        /*
            Method dump skipped, instructions count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzciu.zza(java.lang.String, com.google.android.gms.internal.ads.zzasd, org.json.JSONObject, java.lang.String):com.google.android.gms.internal.ads.zzciw");
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final /* synthetic */ zzciw apply(zzciv zzcivVar) throws Exception {
        zzciv zzcivVar2 = zzcivVar;
        return zza(zzcivVar2.zzfxu.getUrl(), zzcivVar2.zzfxu, zzcivVar2.zzfxt, this.zzdmi);
    }
}
