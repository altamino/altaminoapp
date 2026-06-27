package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzee implements Runnable {
    private final /* synthetic */ boolean zzqe;
    private final /* synthetic */ zzec zzqf;
    private final /* synthetic */ zzec zzqg;
    private final /* synthetic */ zzed zzqh;

    zzee(zzed zzedVar, boolean z, zzec zzecVar, zzec zzecVar2) {
        this.zzqh = zzedVar;
        this.zzqe = z;
        this.zzqf = zzecVar;
        this.zzqg = zzecVar2;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0063  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() throws java.lang.IllegalStateException, java.lang.IllegalAccessException, java.lang.ClassNotFoundException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            r10 = this;
            com.google.android.gms.measurement.internal.zzed r0 = r10.zzqh
            com.google.android.gms.measurement.internal.zzt r0 = r0.zzaf()
            com.google.android.gms.measurement.internal.zzed r1 = r10.zzqh
            com.google.android.gms.measurement.internal.zzap r1 = r1.zzt()
            java.lang.String r1 = r1.zzan()
            boolean r0 = r0.zzac(r1)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L2f
            boolean r0 = r10.zzqe
            if (r0 == 0) goto L24
            com.google.android.gms.measurement.internal.zzed r0 = r10.zzqh
            com.google.android.gms.measurement.internal.zzec r0 = r0.zzpy
            if (r0 == 0) goto L24
            r0 = 1
            goto L25
        L24:
            r0 = 0
        L25:
            if (r0 == 0) goto L3d
            com.google.android.gms.measurement.internal.zzed r3 = r10.zzqh
            com.google.android.gms.measurement.internal.zzec r4 = r3.zzpy
            com.google.android.gms.measurement.internal.zzed.zza(r3, r4, r2)
            goto L3d
        L2f:
            boolean r0 = r10.zzqe
            if (r0 == 0) goto L3c
            com.google.android.gms.measurement.internal.zzed r0 = r10.zzqh
            com.google.android.gms.measurement.internal.zzec r3 = r0.zzpy
            if (r3 == 0) goto L3c
            com.google.android.gms.measurement.internal.zzed.zza(r0, r3, r2)
        L3c:
            r0 = 0
        L3d:
            com.google.android.gms.measurement.internal.zzec r3 = r10.zzqf
            if (r3 == 0) goto L63
            long r4 = r3.zzpw
            com.google.android.gms.measurement.internal.zzec r6 = r10.zzqg
            long r7 = r6.zzpw
            int r9 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r9 != 0) goto L63
            java.lang.String r3 = r3.zzpv
            java.lang.String r4 = r6.zzpv
            boolean r3 = com.google.android.gms.measurement.internal.zzgd.zzs(r3, r4)
            if (r3 == 0) goto L63
            com.google.android.gms.measurement.internal.zzec r3 = r10.zzqf
            java.lang.String r3 = r3.zzpu
            com.google.android.gms.measurement.internal.zzec r4 = r10.zzqg
            java.lang.String r4 = r4.zzpu
            boolean r3 = com.google.android.gms.measurement.internal.zzgd.zzs(r3, r4)
            if (r3 != 0) goto L64
        L63:
            r1 = 1
        L64:
            if (r1 == 0) goto Lcd
            android.os.Bundle r1 = new android.os.Bundle
            r1.<init>()
            com.google.android.gms.measurement.internal.zzec r3 = r10.zzqg
            com.google.android.gms.measurement.internal.zzed.zza(r3, r1, r2)
            com.google.android.gms.measurement.internal.zzec r2 = r10.zzqf
            if (r2 == 0) goto L8f
            java.lang.String r2 = r2.zzpu
            if (r2 == 0) goto L7d
            java.lang.String r3 = "_pn"
            r1.putString(r3, r2)
        L7d:
            com.google.android.gms.measurement.internal.zzec r2 = r10.zzqf
            java.lang.String r2 = r2.zzpv
            java.lang.String r3 = "_pc"
            r1.putString(r3, r2)
            com.google.android.gms.measurement.internal.zzec r2 = r10.zzqf
            long r2 = r2.zzpw
            java.lang.String r4 = "_pi"
            r1.putLong(r4, r2)
        L8f:
            com.google.android.gms.measurement.internal.zzed r2 = r10.zzqh
            com.google.android.gms.measurement.internal.zzt r2 = r2.zzaf()
            com.google.android.gms.measurement.internal.zzed r3 = r10.zzqh
            com.google.android.gms.measurement.internal.zzap r3 = r3.zzt()
            java.lang.String r3 = r3.zzan()
            boolean r2 = r2.zzac(r3)
            if (r2 == 0) goto Lc0
            if (r0 == 0) goto Lc0
            com.google.android.gms.measurement.internal.zzed r0 = r10.zzqh
            com.google.android.gms.measurement.internal.zzfj r0 = r0.zzx()
            long r2 = r0.zzfq()
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 <= 0) goto Lc0
            com.google.android.gms.measurement.internal.zzed r0 = r10.zzqh
            com.google.android.gms.measurement.internal.zzgd r0 = r0.zzab()
            r0.zzb(r1, r2)
        Lc0:
            com.google.android.gms.measurement.internal.zzed r0 = r10.zzqh
            com.google.android.gms.measurement.internal.zzdd r0 = r0.zzs()
            java.lang.String r2 = "auto"
            java.lang.String r3 = "_vs"
            r0.zza(r2, r3, r1)
        Lcd:
            com.google.android.gms.measurement.internal.zzed r0 = r10.zzqh
            com.google.android.gms.measurement.internal.zzec r1 = r10.zzqg
            r0.zzpy = r1
            com.google.android.gms.measurement.internal.zzeg r0 = r0.zzu()
            com.google.android.gms.measurement.internal.zzec r1 = r10.zzqg
            r0.zza(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzee.run():void");
    }
}
