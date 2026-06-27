package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final class zzash implements Callable<zzase> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzasg zzdqf;

    zzash(zzasg zzasgVar, Context context) {
        this.zzdqf = zzasgVar;
        this.val$context = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.zzase call() throws java.lang.Exception {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.zzasg r0 = r6.zzdqf
            java.util.WeakHashMap r0 = com.google.android.gms.internal.ads.zzasg.zza(r0)
            android.content.Context r1 = r6.val$context
            java.lang.Object r0 = r0.get(r1)
            com.google.android.gms.internal.ads.zzasi r0 = (com.google.android.gms.internal.ads.zzasi) r0
            if (r0 == 0) goto L42
            long r1 = r0.zzdqg
            com.google.android.gms.internal.ads.zzacj<java.lang.Long> r3 = com.google.android.gms.internal.ads.zzacu.zzcqm
            com.google.android.gms.internal.ads.zzacr r4 = com.google.android.gms.internal.ads.zzyt.zzpe()
            java.lang.Object r3 = r4.zzd(r3)
            java.lang.Long r3 = (java.lang.Long) r3
            long r3 = r3.longValue()
            long r1 = r1 + r3
            com.google.android.gms.common.util.Clock r3 = com.google.android.gms.ads.internal.zzk.zzln()
            long r3 = r3.currentTimeMillis()
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 >= 0) goto L31
            r1 = 1
            goto L32
        L31:
            r1 = 0
        L32:
            if (r1 != 0) goto L42
            com.google.android.gms.internal.ads.zzasf r1 = new com.google.android.gms.internal.ads.zzasf
            android.content.Context r2 = r6.val$context
            com.google.android.gms.internal.ads.zzase r0 = r0.zzdqh
            r1.<init>(r2, r0)
            com.google.android.gms.internal.ads.zzase r0 = r1.zzty()
            goto L4d
        L42:
            com.google.android.gms.internal.ads.zzasf r0 = new com.google.android.gms.internal.ads.zzasf
            android.content.Context r1 = r6.val$context
            r0.<init>(r1)
            com.google.android.gms.internal.ads.zzase r0 = r0.zzty()
        L4d:
            com.google.android.gms.internal.ads.zzasg r1 = r6.zzdqf
            java.util.WeakHashMap r1 = com.google.android.gms.internal.ads.zzasg.zza(r1)
            android.content.Context r2 = r6.val$context
            com.google.android.gms.internal.ads.zzasi r3 = new com.google.android.gms.internal.ads.zzasi
            com.google.android.gms.internal.ads.zzasg r4 = r6.zzdqf
            r3.<init>(r4, r0)
            r1.put(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzash.call():java.lang.Object");
    }
}
