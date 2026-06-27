package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcbd {
    private final Executor zzffi;
    private final zzcau zzfqx;

    public zzcbd(Executor executor, zzcau zzcauVar) {
        this.zzffi = executor;
        this.zzfqx = zzcauVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzbbh<java.util.List<com.google.android.gms.internal.ads.zzcbg>> zzg(org.json.JSONObject r10, java.lang.String r11) {
        /*
            r9 = this;
            org.json.JSONArray r10 = r10.optJSONArray(r11)
            if (r10 != 0) goto Lf
            java.util.List r10 = java.util.Collections.emptyList()
            com.google.android.gms.internal.ads.zzbbg r10 = com.google.android.gms.internal.ads.zzbar.zzm(r10)
            return r10
        Lf:
            java.util.ArrayList r11 = new java.util.ArrayList
            r11.<init>()
            int r0 = r10.length()
            r1 = 0
            r2 = 0
        L1a:
            if (r2 >= r0) goto L7c
            org.json.JSONObject r3 = r10.optJSONObject(r2)
            if (r3 == 0) goto L71
            java.lang.String r4 = "name"
            java.lang.String r4 = r3.optString(r4)
            if (r4 == 0) goto L71
            java.lang.String r5 = "type"
            java.lang.String r5 = r3.optString(r5)
            java.lang.String r6 = "string"
            boolean r6 = r6.equals(r5)
            r7 = 2
            r8 = 1
            if (r6 == 0) goto L3d
            r5 = 1
            goto L48
        L3d:
            java.lang.String r6 = "image"
            boolean r5 = r6.equals(r5)
            if (r5 == 0) goto L47
            r5 = 2
            goto L48
        L47:
            r5 = 0
        L48:
            if (r5 == r8) goto L61
            if (r5 == r7) goto L4d
            goto L71
        L4d:
            com.google.android.gms.internal.ads.zzcau r5 = r9.zzfqx
            java.lang.String r6 = "image_value"
            com.google.android.gms.internal.ads.zzbbh r3 = r5.zzc(r3, r6)
            com.google.android.gms.internal.ads.zzcbf r5 = new com.google.android.gms.internal.ads.zzcbf
            r5.<init>(r4)
            java.util.concurrent.Executor r4 = r9.zzffi
            com.google.android.gms.internal.ads.zzbbh r3 = com.google.android.gms.internal.ads.zzbar.zza(r3, r5, r4)
            goto L76
        L61:
            com.google.android.gms.internal.ads.zzcbg r5 = new com.google.android.gms.internal.ads.zzcbg
            java.lang.String r6 = "string_value"
            java.lang.String r3 = r3.optString(r6)
            r5.<init>(r4, r3)
            com.google.android.gms.internal.ads.zzbbg r3 = com.google.android.gms.internal.ads.zzbar.zzm(r5)
            goto L76
        L71:
            r3 = 0
            com.google.android.gms.internal.ads.zzbbg r3 = com.google.android.gms.internal.ads.zzbar.zzm(r3)
        L76:
            r11.add(r3)
            int r2 = r2 + 1
            goto L1a
        L7c:
            com.google.android.gms.internal.ads.zzbbh r10 = com.google.android.gms.internal.ads.zzbar.zze(r11)
            com.google.android.gms.internal.ads.zzbam r11 = com.google.android.gms.internal.ads.zzcbe.zzdrn
            java.util.concurrent.Executor r0 = r9.zzffi
            com.google.android.gms.internal.ads.zzbbh r10 = com.google.android.gms.internal.ads.zzbar.zza(r10, r11, r0)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcbd.zzg(org.json.JSONObject, java.lang.String):com.google.android.gms.internal.ads.zzbbh");
    }
}
